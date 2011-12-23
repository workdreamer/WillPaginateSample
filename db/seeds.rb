def create_cities
  City.create!(:name => 'Lisbon')
  City.create!(:name => 'Porto')
  City.create!(:name => 'Paris')
  City.create!(:name => 'Toronto')
  City.create!(:name => 'Benelux')
end

def create_entities
  lisbon  = City.find_by_name('Lisbon')
  porto   = City.find_by_name('Porto')
  paris   = City.find_by_name('Paris')
  toronto = City.find_by_name('Toronto')
  benelux = City.find_by_name('Benelux')



  Entity.create!(:name => 'Michael', :city  => lisbon)
  Entity.create!(:name => 'Luis',    :city  => porto)
  Entity.create!(:name => 'Rachel',  :city  => paris)
  Entity.create!(:name => 'Todd',    :city  => toronto)
  Entity.create!(:name => 'Sophie',  :city  => benelux)
  Entity.create!(:name => 'Jim')
  Entity.create!(:name => 'Pat')
  Entity.create!(:name => 'John')
  Entity.create!(:name => 'Ana')
  Entity.create!(:name => 'Susan')
  Entity.create!(:name => 'Arthur')
  Entity.create!(:name => 'Peter')
  Entity.create!(:name => 'Matt')
end


create_cities
create_entities
