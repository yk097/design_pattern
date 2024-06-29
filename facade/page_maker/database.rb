module PageMaker
  class Database
    def self.get_properties(_dbname)
      {
        'foo@example.com' => 'Foo',
        'bar@example.com' => 'Bar',
        'baz@example.com' => 'Baz'
      }
    end

    private_class_method :new
  end
end
