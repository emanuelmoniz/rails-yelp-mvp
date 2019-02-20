puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'italian',
    stars:        5,
    img_url:      'http://static.asiawebdirect.com/m/bangkok/portals/bali-indonesia-com/homepage/top10/top10-restaurants-sanur/pagePropertiesImage/best-restaurants-sanur.jpg'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'chinese',
    stars:        4,
    img_url:      'https://santabarbaraca.com/content/uploads/2015/08/restaurants-santa-barbara.jpg'
  },
  {
    name:         'Pizza West',
    address:      '32A Shoreditch Low St, London E2 9PQ',
    category:     'italian',
    stars:        3,
    img_url:      'https://media-cdn.tripadvisor.com/media/photo-s/0a/7b/7b/c6/restaurant-view.jpg'
  },
  {
    name:         'Pizza North',
    address:      '92A Shoreditch Low St, Lisbon E2 1PQ',
    category:     'japanese',
    stars:        5,
    img_url:      'https://d2xpeceo701ble.cloudfront.net/~/media/images/patina/home/carousel/new-york/rockcentercafelandmarklocation1200.jpg'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
