class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  # Company#give_freebie(dev, item_name, value)
  # takes a dev (an instance of the Dev class), 
  # an item_name (string), and a value as arguments, 
  # and creates a new Freebie instance 
  # associated with this company and the given dev

  # *** dev_given, item_name_given, value_given are all parameters,
  # *** dev_id, item_name, value_given are keys to specify column
  def give_freebie(dev_given, item_name_given, value_given)
    Freebie.create(
      dev_id: dev_given.id,
      item_name: item_name_given,
      value: value-given,
      company_id: self.id
    )
  end
  # Company.oldest_company, 
  # returns the Company instance with the earliest founding year
  # *** the . tells that it's a class method which is why self must be used
  def self.oldest_company
    self.order( :founding_year ).first
  end
end
