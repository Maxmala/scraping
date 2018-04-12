require 'rubygems'
require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
name_list = page.css('a.currency-name-container') #selecteur des coins vers l'objet page.css qu'on nomme name_list
price_list = page.css('a.price') #liste de prix dans price_list, ['data-usd'] pour prix du coin 
tab = Hash.new #stocker le nom des coin et le prix associé


=begin
boucle for qui commence à 0 et se termine à name_list.length-1 : qui
	correspond à la longueur de notre tableau
=end

for i in 0 .. (name_list.length-1)
	tab[name_list[i].text] = [price_list[i]['data-usd']] 
end



puts tab
puts "Next wawe in 1h"
sleep(3600)
