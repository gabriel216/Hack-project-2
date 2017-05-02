# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongide the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

naviera = ShippingCompany.create(name:"Maersk")
buque = Ship.create name:"Sky"
tipo_de_container = ContainerType.create(name:"standard")
container = Container.create(commodity:"Cellphones", container_type:tipo_de_container, size:262.845, character: "HGTR5428756", shipping_company:naviera)
nvocc = Nvocc.create(name:"NewMarand")
cliente = Client.create(name:"Samsung")
contrato_master = BlMaster.create(shipping_company:naviera, nvocc:nvocc, commodity_origin:"Panama", dock_date:20160924, travel_code:"HGWU58", bl_code:"78PLG", commodity_destination:"Venezuela", ship:buque)
contrato_master.containers.push(container)
lista_de_container = ContainerList.create(container:container, bl_master:contrato_master)
contrato_house = BlHouse.create(bl_master:contrato_master, bl_code:"TR456", nvocc:nvocc, client:contrato_house)
