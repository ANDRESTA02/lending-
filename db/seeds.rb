# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


tipo_elementos = [{nombre:"Portatil",descripcion:"",icono:"fa-desktop"}]

tipo_elementos.each do |tipo_elemento|
	TipoElemento.where(nombre: tipo_elemento[:nombre], icono: tipo_elemento[:icono]).first || TipoElemento.create(tipo_elemento)
end	