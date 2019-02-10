#!/usr/local/bin/ruby
class SVG
  def initialize(width:, height:, fd: nil)
    @fd = fd == nil ? $stdout : fd
    emit <<-EOF
<?xml version="1.0" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg width="#{width}" height="#{height}" 
    version="1.1" 
    xmlns="http://www.w3.org/2000/svg" 
    xmlns:xlink="http://www.w3.org/1999/xlink">
  EOF
  end
  
  def self.output(width:, height:, fd: nil)
    svg = self.new(width: width, height: height, fd: fd)
      yield svg
    svg.trailer
  end  
  
  def emit(s)
    if @fd != nil
      @fd.puts s
    end
  end
      
  
  def trailer
    emit "</svg>\n"
  end
  

  def line(line_start:, line_end:, id: nil, onclick: nil, style: nil)
    default_style = {
                     "fill" =>            "none",
                     "fill-opacity" =>    "1",
                     "stroke" =>          "#000000",
                     "stroke-width" =>    "1",
                     "stroke-linecap" =>  "round",
                     "stroke-linejoin" => "round",
                     "stroke-dasharray" =>"none",
                     "stroke-opacity" =>  "1"
                   }
    if style != nil
      style.each do |k,v|
        default_style[k] = v
      end
    end
    emit <<-EOF
  <line
    x1="#{line_start.x}" y1="#{line_start.y}" x2="#{line_end.x}" y2="#{line_end.y}" #{style_str(default_style)} #{id_str(id)} #{onclick_str(onclick)}
  />
  EOF
  end

  def rectangle(top_left:, width:, height:, id: nil, onclick: nil, style: nil)
    default_style = {
                     "fill" =>            "none",
                     "fill-opacity" =>    "1",
                     "stroke" =>          "none",
                     "stroke-width" =>    "1",
                     "stroke-dasharray" =>"none",
                     "stroke-opacity" =>  "1"
                   }
    if style != nil
      style.each do |k,v|
        default_style[k] = v
      end
    end
    emit <<-EOF
  <rect
    x="#{top_left.x}" y="#{top_left.y}" width="#{width}" height="#{height}" #{style_str(default_style)} #{id_str(id)} #{onclick_str(onclick)}
  />
  EOF
  end
  
  def polygon(points:, style: nil, transform: nil)
    default_style = {
                     "fill" =>            "none",
                     "fill-opacity" =>    "1",
                     "stroke" =>          "none",
                     "stroke-width" =>    "1",
                     "stroke-dasharray" =>"none",
                     "stroke-opacity" =>  "1"
                   }
    if style != nil
      style.each do |k,v|
        default_style[k] = v
      end
    end
     emit <<-EOF
     <polygon #{style_str(default_style)}  #{transform_str(transform)}
       points="#{(points.map {|p| p.join(',')}).join(' ')}"
     />
     EOF
  end
  
  def text(text:, bottom_left:, dx: nil, dy: nil, textAnchor: nil, transform: nil, textLength: nil, lengthAdjust: nil, style: nil, id: nil, onclick: nil)
    emit <<-EOF
      <text
      x="#{bottom_left.x}" y="#{bottom_left.y}" #{dx_str(dx)} #{dy_str(dy)} #{transform_str(transform)} #{textAnchor_str(textAnchor)} #{textLength_str(textLength)} #{lengthAdjust_str(lengthAdjust)} #{style_str(style)} #{id_str(id)} #{onclick_str(onclick)}
      >#{text}</text>
    EOF
  end
  
  def group(id: nil, onclick: nil)
    emit "<g#{id_str(id)}#{onclick_str(onclick)}>"
    yield
    emit "</g>"
  end
  
  private def id_str(id=nil)
    "#{id != nil ? "\n  id=\"#{id}\"" : ""}"
  end
  
  private def onclick_str(onclick=nil)
    "#{onclick != nil ? "\n  onclick=\"#{onclick}\"\n" : ""}"
  end

  private def transform_str(transform=nil)
    "#{transform != nil ? "\n  transform=\"#{transform}\"" : ""}"
  end
  
  private def textAnchor_str(textAnchor=nil)
    "#{textAnchor != nil ? "\n  text-anchor=\"#{textAnchor}\"" : ""}"
  end
  
  private def textLength_str(textLength=nil)
    "#{textLength != nil ? "\n  textLength=\"#{textLength}\"" : ""}"
  end

  private def lengthAdjust_str(lengthAdjust=nil)
    "#{lengthAdjust != nil ? "\n  lengthAdjust=\"#{lengthAdjust}\"" : ""}"
  end

  private def dx_str(dx=nil)
    "#{dx != nil ? "dx=\"#{dx}\"" : ""}"
  end

  private def dy_str(dy=nil)
    "#{dy != nil ? "dy=\"#{dy}\"" : ""}"
  end
  
  private def style_str(style=nil)
    "#{style != nil ? "\n  style=\"#{style.map { |k,v| "#{k}:#{v}"}.join(';')}\"" : "" }"
  end
end

