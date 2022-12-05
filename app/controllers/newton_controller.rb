require 'net/http'
require 'nokogiri'

class NewtonController < ApplicationController
  def input; end

  def result
    visualise_type = params[:visualise].to_i
    xml = get_xml_remotely(params[:a])

    if visualise_type == 1
      xslt = Nokogiri::XSLT(File.read(File.join Rails.root, 'public', 'style_new.xsl'))
      render html: xslt.transform(xml).to_s.html_safe
    else
      xml.root.add_previous_sibling Nokogiri::XML::ProcessingInstruction.new(xml, "xml-stylesheet", 'type="text/xsl" href="/style_new.xsl"')
      render xml: xml
    end
  end

  def get_xml_remotely(a)
    url = URI.parse("http://localhost:3000/?a=#{a}")

    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port){|http| http.request(req)}

    Nokogiri::XML(res.body)
  end
end
