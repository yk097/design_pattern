require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

root_dir = Entry::Directory.new('root')

bin_dir = Entry::Directory.new('bin')
bin_dir.add(Entry::File.new('vi', 123))
bin_dir.add(Entry::File.new('latex', 456))
root_dir.add(bin_dir)

visitor = Visitor::List.new
visitor.visit(root_dir)
