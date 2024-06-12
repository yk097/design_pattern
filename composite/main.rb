require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

root_dir = DirectoryEntry.new('root')

bin_dir = DirectoryEntry.new('bin')
vi_file = FileEntry.new('vi', 123)
latex_file = FileEntry.new('latex', 456)
bin_dir.add(vi_file)
bin_dir.add(latex_file)

tmp_dir = DirectoryEntry.new('tmp')
usr_dir = DirectoryEntry.new('usr')

root_dir.add(bin_dir)
root_dir.add(tmp_dir)
root_dir.add(usr_dir)

root_dir.path
