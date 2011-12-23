class Entity < ActiveRecord::Base
  belongs_to :city

  scope :by_city, lambda{
    {
        :joins  => "LEFT JOIN cities ON cities.id = entities.city_id",
        :order  => "cities.name DESC",
        :group  => "entities.id, entities.name, entities.city_id, entities.updated_at,entities.created_at, cities.name"
        #this group by is needed because i work with MS SQL, and if i didn't perform this i retrieve a error because aggregate function
    }
  }
end
