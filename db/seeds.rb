# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


jewelrygroups = [ "Men", "Women"]

jewelrycategories = ["Rings", "Necklaces & Chains", "Charms & Pendants", "Earrings", "Watches", "Bracelets", "Wedding"]

jewelrycollections = ["Kadar", "Specialty Rings", "Specialty Necklace & Chains", "Specialty Charms & Pendants", "Luxury Time Pieces", "Specialty Bracelets", "Bridal Sets", "Engagement Rings", "Wedding Bands", "Promise Rings", "Wraps & Enhancers", "Semi-Mounts", "Gemstone", "Diamond", "Silver" ]

jewelrymetals = ["Platinum", "10K White Gold", "10K Yellow Gold", "10K Rose Gold", "14K White Gold", "14K Yellow Gold", "14K Rose Gold", "18K Yellow Gold", "18K White Gold", "22K Yellow Gold", "925/ Silver"]

jewelrygroups.each do |group|
    Jewelrygroup.create(jewelrygroup: group)
end

jewelrycategories.each do |category|
    Jewelrycategory.create(jewelrycategory: category)
end

jewelrycollections.each do |collection|
    Jewelrycollection.create(jewelcollection: collection)
end

jewelrymetals.each do |metal| 
    Jewelrymetal.create(metal: metal)
end