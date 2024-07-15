module PageMaker
  class HtmlWriter
    attr_reader :writer

    def initialize(writer)
      @writer = writer
    end

    def title(title)
      str = <<~HTML
        <html>
          <head>
            <title>#{title}</title>
          </head>
          <body>
            <h1>#{title}</h1>
      HTML
      writer.write(str)
    end

    def paragraph(msg)
      para = <<~HTML
        <p>#{msg}</p>
      HTML
      writer.write(para)
    end

    def close
      writer.write("</body></html>\n")
      writer.close
    end
  end
end
