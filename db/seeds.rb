# Fakeimage.create!([
#   {url: "https://static.wikia.nocookie.net/sims/images/f/f1/Back_Slack_Recliner.jpg", product_id: Product.maximum(:id).next},
#   {url: "https://static.wikia.nocookie.net/sims/images/1/10/Von_Braun_Recliner.jpg", product_id: Product.maximum(:id).next},
#   {url: "https://static.wikia.nocookie.net/sims/images/6/61/Deck_Chair_by_Survivall.jpg", product_id: Product.maximum(:id).next},
#   {url: "https://static.wikia.nocookie.net/sims/images/a/ae/Empress_Dining_Room_Chair.jpg", product_id: Product.maximum(:id).next},
#   {url: "https://static.wikia.nocookie.net/sims/images/3/37/Parisienne_Dining_Chair.jpg", product_id: Product.maximum(:id).next},
#   {url: "https://static.wikia.nocookie.net/sims/images/f/f5/Sioux_Sity_Wicker_Chair.png", product_id: Product.maximum(:id).next},
#   {url: "https://static.wikia.nocookie.net/sims/images/d/d1/The_M_Chair.jpg", product_id: Product.maximum(:id).next},
#   {url:"https://static.wikia.nocookie.net/sims/images/b/bb/Touch_of_Teak_Dinette_Chair.jpg" , product_id: Product.maximum(:id).next},
#   {url: "https://static.wikia.nocookie.net/sims/images/d/d1/Werkbunnst_All_Purpose_Chair.jpg", product_id: Product.maximum(:id).next}
# ])
# Would need a loop but this would work with index starting at 0 --> product_id: (Product.maximum(:id).next + i) 
# It would put every product_id at the end of all existing product id's... not sure of the use. Could come in handy.

# Image.create!([
#   {url: "https://static.wikia.nocookie.net/sims/images/f/f1/Back_Slack_Recliner.jpg"}
#   {url: "https://static.wikia.nocookie.net/sims/images/1/10/Von_Braun_Recliner.jpg"},
#   {url: "https://static.wikia.nocookie.net/sims/images/6/61/Deck_Chair_by_Survivall.jpg"},
#   {url: "https://static.wikia.nocookie.net/sims/images/a/ae/Empress_Dining_Room_Chair.jpg"},
#   {url: "https://static.wikia.nocookie.net/sims/images/3/37/Parisienne_Dining_Chair.jpg"},
#   {url: "https://static.wikia.nocookie.net/sims/images/f/f5/Sioux_Sity_Wicker_Chair.png"},
#   {url: "https://static.wikia.nocookie.net/sims/images/d/d1/The_M_Chair.jpg"},
#   {url:"https://static.wikia.nocookie.net/sims/images/b/bb/Touch_of_Teak_Dinette_Chair.jpg" },
#   {url: "https://static.wikia.nocookie.net/sims/images/d/d1/Werkbunnst_All_Purpose_Chair.jpg"}
# ])


# Supplier.create!([
#   {name: "Hassel de Hoff Chairs", email: "hhoffchairs@gmail.com", phone_number: "(123)444-9876"},
#   {name: "Seating Elite", email: "seatelite@gmail.com", phone_number: "(333)444-2323"},
#   {name: "Dirt Cheap Chairs", email: "chairdumpster@gmail.com", phone_number: "(111)222-3333"}
# ])


# Product.create!([
#   {name: "Werkbunnst All Purpose Chair", price: 80, description: "Chairs are a great invention! They let you sit down while eating, make typing possible when using the computer and are great for sitting on while watching TV. This minimal, serious, cantilevered design provides seriously minimal comfort.", image_url: "https://static.wikia.nocookie.net/sims/images/d/d1/Werkbunnst_All_Purpose_Chair.jpg", inventory_count: 0},
#   {name: "Deck Chair by Survivall", price: 150, description: "Just the right height and angle for eating, drinking and socializing, this sturdy chair can fill many needs, whether on the deck or porch, in the garden, or at the foot of your bed. Survivall products use only locally grown, locally milled, pure redwood cleansed of any foreign particles.", image_url: "https://static.wikia.nocookie.net/sims/images/6/61/Deck_Chair_by_Survivall.jpg", inventory_count: 0},
#   {name: "Touch of Teak Dinette Chair", price: 200, description: "Step up and sit down to Touch of Teak! Elegance and durability hearken to simpler times and simpler comfort levels. Whether used alone or part of a handsome dinette set, these chairs scream class and value.", image_url: "https://static.wikia.nocookie.net/sims/images/b/bb/Touch_of_Teak_Dinette_Chair.jpg", inventory_count: 0},
#   {name: "The M Chair", price: 299, description: "Designed to compliment the M Table, these iron and steel chairs are obvious classics. With the same insight and database queries, M chair designers married the best of Industrial era styling with Post-Irony seriousness of surface. The M Chair...a new beginning for an old end.", image_url: "https://static.wikia.nocookie.net/sims/images/d/d1/The_M_Chair.jpg", inventory_count: 0},
#   {name: "Empress Dining Room Chair", price: 600, description: "Impress your friends with the Empress dining room chair. The plush, inviting cushions are a sore Sim's best friend. The austere black lacquer design has a Northern Japanese influence. Place these near tables so Sims may eat in comfort ...and style.", image_url: "https://static.wikia.nocookie.net/sims/images/a/ae/Empress_Dining_Room_Chair.jpg", inventory_count: 0},
#   {name: "Parisienne Dining Chair", price: 1200, description: "Made to accent our Parisienne dining table, this European-style armless dining chair has been made by a family of cabinet makers whose pedigree stretches back to the reign of Louis XIII. Sinuous lines and refined comfort set these chairs apart from so many of their stark modern rivals.", image_url: "https://static.wikia.nocookie.net/sims/images/3/37/Parisienne_Dining_Chair.jpg", inventory_count: 0},
#   {name: "'Back Slack' Recliner", price: 250, description: "Retreat from the outside world, and relax in the comfortable retro-style of the 'Back Slack' recliner by Cheap Eazzzzze. Inspired by computer generated sweaters and subliminal relaxation tapes, the 'Back Slack' features oversized stuffed arms, luxurious pillows, and a super-soft, sink-into-the-cushions seat.", image_url: "https://static.wikia.nocookie.net/sims/images/f/f1/Back_Slack_Recliner.jpg", inventory_count: 0},
#   {name: "'Von Braun' Recliner", price: 850, description: "Initially designed as a command chair for space modules, the Von Braun's space planning was meticulous and economical. Werkbunnst engineers, rejecting physical exhaustion and all concern for material costs, refused to stop until they had achieved the ideal line and the absolute comfort our customers demand. Though it has a 'machine made' appearance it is almost 100% hand labored.", image_url: "https://static.wikia.nocookie.net/sims/images/1/10/Von_Braun_Recliner.jpg", inventory_count: 0},
#   {name: "Sioux City Wicker Chair", price: 80, description: "Who needs excessive comfort when you can fill your home with cheap, hand crafted Sioux City furnishings? Inspired by the last decade's South Western design fad, the multi-colored fabric could match anything. Durable, propylene glycol SimWicker and vinyl cushions guaranteed for 30 days. Sioux Sity: 'Take a load off everything but your wallet.'", image_url: "https://static.wikia.nocookie.net/sims/images/f/f5/Sioux_Sity_Wicker_Chair.png", inventory_count: 0},
#   {name: "Some junk chair", price: nil, description: nil, image_url: nil, inventory_count: 0}
# ])
