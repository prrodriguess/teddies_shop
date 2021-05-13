puts 'Cleaning database...'
Teddy.destroy_all if Rails.env.development?
Category.destroy_all if Rails.env.development?

puts 'Creating categories...'
geek = Category.create!(name: 'geek')
kids = Category.create!(name: 'kids')

puts 'Creating teddies...'
Teddy.create!(price: 10 ,sku: 'original-teddy-bear', name: 'Teddy bear', category: kids,
photo_url: 'https://images.unsplash.com/photo-1620751992909-d0eaf22f61b0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=360&q=80')

Teddy.create!(price_cents: 958 ,sku: 'jean-mini', name: 'Jean-Michel - Le Wagon', category: geek,
photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
Teddy.create!(price_cents: 2050 ,sku: 'octocat', name: 'Octacat - GitHub', category: geek,
photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
puts 'finished!'
