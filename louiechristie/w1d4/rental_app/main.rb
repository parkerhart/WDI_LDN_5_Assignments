require 'pry'

require_relative 'person'
require_relative 'flat'
require_relative 'building'
require_relative 'menu'

b = Building.new('w1n 4hr')
b.affluency = :minted

f1 = Flat.new('Reeves', 750, 4, 2)

f2 = Flat.new('9 Back Hill', 5000, 4, 2)

f3 = Flat.new('The Bowler', 1000, 5, 2)

[f1,f2,f3].each do |flat|
  b.flats[flat.name] = flat
end

p1 = Person.new('Louie', '911')
p2 = Person.new('Mike', '999')
p3 = Person.new('Sarah', '111')

f1.tenants[p1.name] = p1
f1.tenants[p2.name] = p2
f2.tenants[p3.name] = p3

b.prospects['Julien'] = Person.new('Julien', '333')

response = menu.downcase

while response != "q"

  case response
    when '1'
      puts b.list_flats

    when '2'
      puts b.list_prospects

    when '3'
      let_flat(b)
    
    when '4'
      evict_tenant(b)

    when '5'
      puts b.list_empty_flats
    
    when '6'
      puts b.list_tenants

    when '7'
      create_prospect(b)

    else
      puts "invalid menu choice press enter and try again"
  
  end
  gets

  response = menu

end


binding.pry