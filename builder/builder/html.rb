module Builder
  class Html < Abstract
    attr_reader :filename, :file

    def initialize
      @filename = './builder/index.html'
      @file = File.new(filename, 'w')
    end

    def make_title(title)
      html =<<~HTML
        <html>
          <head>
            <title>#{title}</title>
          </head>
          <body>
      HTML
      file.write(html)
    end

    def make_string(string)
      file.write("<p>#{string}</p>\n")
    end

    def make_items(items)
      html =<<~HTML
        <ul>
        #{items.map { |item| "\s\s<li>#{item}</li>" }.join("\n")}
        </ul>
      HTML
      file.write(html)
    end

    def close
      html =<<~HTML
          </body>
        </html>
      HTML
      file.write(html)
    end

    def result
      filename
    end
  end
end
