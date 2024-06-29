module PageMaker
  class PageMaker
    private_class_method :new

    def self.make_welcome_page(addr, filename)
      mail = Database.get_properties('maildata')

      user_name = mail[addr]
      writer = HtmlWriter.new(File.open(filename, 'w'))
      writer.title("Welcome to #{user_name}'s page!")
      writer.paragraph("#{user_name}のページへようこそ。")
      writer.close
    end
  end
end
