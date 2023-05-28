require_relative '../config/environment'

# Create some authors
author1 = Author.new("Tom Doe")
author2 = Author.new("John Doe")

# Create some magazines
magazine1 = Magazine.new("Family", "Fashion")
magazine2 = Magazine.new("Pulse", "Agriculture")

# Add articles for the authors
author1.add_article(magazine1, "The Latest Fashion Trends")
author1.add_article(magazine2, "New Discoveries in Science")
author2.add_article(magazine2, "The Future of Technology")

# Find a magazine by name
magazine = Magazine.find_by_name("Pulse")

# Print some information
puts "Authors:"
Author.all.each do |author|
  puts "#{author.name} has written for #{author.magazines.count} magazines and topic areas are: #{author.topic_areas.join(", ")}"
end

puts "\nMagazines:"
Magazine.all.each do |magazine|
  puts "#{magazine.name} has #{magazine.contributors.count} contributors and article titles are: #{magazine.article_titles.join(", ")}"
end

puts "\nContributing authors for #{magazine.name}:"
magazine.contributing_authors.each do |author|
  puts "- #{author.name}"
end