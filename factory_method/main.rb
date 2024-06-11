require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

factory = Factory::IdCardFactory.new
id_card1 = factory.create_product('ファーストペンギン')
id_card2 = factory.create_product('セカンドペンギン')
id_card3 = factory.create_product('サードペンギン')

id_card1.use
id_card2.use
id_card3.use
