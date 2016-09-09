task :create_task => :environment do
	namespace :category do
Category.create([
  { name: 'Motorbikes', alias: 'Moto' },	
  { name: 'Tools', alias: 'T' },
  { name: 'Cars', alias: 'C' },
])
end
	namespace :item do
Item.create([
  { name: 'Suzuki', price: 20000, description: 'Very fast', id_category: 1 },
  { name: 'Kawasaki', price: 10000, description: 'Very fast', id_category: 1 },
  { name: 'Yamaha', price: 15000, description: 'Very fast', id_category: 1 },
  { name: 'Сhainsaw', price: 1000, description: 'Very sharp', id_category: 2 },
  { name: 'Drill', price: 500, description: 'Need everyone', id_category: 2 },
  { name: 'Screw', price: 100, description: 'Need everyone', id_category: 2 },
  { name: 'Tesla', price: 150000, description: 'Automatic steering with traffic aware cruise control', id_category: 3 },
  { name: 'Nissan', price: 100000, description: 'Black edition', id_category: 3 },
  { name: 'Acura', price: 120000, description: 'Super handling all-wheel drive', id_category: 3 },
])
  end
end