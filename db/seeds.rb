Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
# Freebie.create(item_name: "cap", value: 1, company_id: c1.id, dev_id: d1.id)
# Freebie.create(item_name: "key chain", value: 2, company_id: c2.id, dev_id: d2.id)
# Freebie.create(item_name: "notebook", value: 3, company_id: c3.id, dev_id: d3.id)
# Freebie.create(item_name: "t-shirt", value: 1, company_id: c4.id, dev_id: c4.id)

items = ['cap', 'key chain', 'notebook', 't-shirt', 'pen']

7.times do
  Freebie.create(
    dev_id: Dev.pluck( :id ).sample,
    company: Company.all.sample,
    item_name: items.sample,
    value: rand( 1..10 )
  )
end
puts "Seeding done!"
