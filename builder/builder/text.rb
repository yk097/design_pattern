module Builder
  class Text < Abstract
    attr_accessor :text

    def initialize
      @text = ''
    end

    def make_title(title)
      text << "==============================\n"
      text << "『#{title}』\n"
      text << "\n"
    end

    def make_string(string)
      text << "■#{string}\n"
      text << "\n"
    end

    def make_items(items)
      items.each do |item|
        text << " ・#{item}\n"
      end
    end

    def close
      text << "==============================\n"
    end

    def result
      puts text
    end
  end
end
