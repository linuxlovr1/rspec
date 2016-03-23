class Person < ActiveRecord::Base
  # Associations
  has_many :cars, dependent: :destroy
  has_one :address, dependent: :destroy

  # Validations
  validates_presence_of :name, :age
  validates_uniqueness_of :name
  validates_inclusion_of :age, in: (1..100).to_a

  # Callbacks
  #before_create :reverse_name
  # after_create
  # before_save
  # after_save
  # after_initailze
  # before_update
  # after_update
  # before_destroy
  # after_destroy

  # Instance Methods
  def name_and_age
    "#{self.name} is age: #{self.age}"
  end

  # Class Methods
  def self.talk
    "Hello, I am human"
  end

  def self.by_name
    order(name: :asc)
  end

  def self.by_age
    order(:age)
  end

  # Private Methods
  private
   # def reverse_name
   #   self.name = self.name.reverse
   # end
end
