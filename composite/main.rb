require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

root_dir = DirectoryEntry.new('root')

bin_dir = DirectoryEntry.new('bin')
tmp_dir = DirectoryEntry.new('tmp')
usr_dir = DirectoryEntry.new('usr')
root_dir.add(bin_dir)
root_dir.add(tmp_dir)
root_dir.add(usr_dir)

vi_file = FileEntry.new('vi', 123)
latex_file = FileEntry.new('latex', 456)
bin_dir.add(vi_file)
bin_dir.add(latex_file)

yuki_dir = DirectoryEntry.new('yuki')
hanako_dir = DirectoryEntry.new('hanako')
tomura_dir = DirectoryEntry.new('tomura')
usr_dir.add(yuki_dir)
usr_dir.add(hanako_dir)
usr_dir.add(tomura_dir)

diary_file = FileEntry.new('diary.html', 10)
composite_file = FileEntry.new('composite.java', 20)
yuki_dir.add(diary_file)
yuki_dir.add(composite_file)

memo_file = FileEntry.new('memo.txt', 30)
hanako_dir.add(memo_file)

game_file = FileEntry.new('game.doc', 40)
junk_file = FileEntry.new('junk.mail', 50)
tomura_dir.add(game_file)
tomura_dir.add(junk_file)

root_dir.path
