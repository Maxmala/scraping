require 'rubygems'
require 'nokogiri' 
require 'open-uri'  


def get_the_email_of_a_townhal_from_its_webpage(url)
    page = Nokogiri::HTML(open("http://mon-incubateur.com/site_incubateur/incubateurs"))  

   incubateur_list = page.css(' a.site_incubateur/incubateur/33entrepreneurs-bordeaux">33entrepreneurs</a>')[].text
puts incubateur_list

end
