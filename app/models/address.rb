class Address < ActiveRecord::Base
  belongs_to :person

  def info
    {city: self.city, state: self.city, zip: self.zip, street: self.street}
  end
end

      