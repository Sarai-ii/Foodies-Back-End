\c foodies

INSERT INTO restaurants (name, category, self_delivery, street_num, street_name, city, state, zip, opens, closes, image)VALUES
-- QUEENS
    ('Halal Grill Bros', 'Halal, Comfort', false, '218-74', 'Hempstead Ave', 'Queens', 'NY', 11429, '11:00 AM','2:00 AM', 'https://halalbrosgrill.biz/wp-content/uploads/2021/05/Halal-Bros-Grill-Menu-Bar-1.jpg'),
    ('Love''s Kitchen', 'Halal, Comfort', false, '125-02', '84th Rd', 'Queens', 'NY', 11415, '11:00 AM','10:00 PM', 'https://popmenucloud.com/cdn-cgi/image/width=1920,height=1920,format=auto,fit=scale-down/fgpdaicu/9642a238-60df-4948-bb12-875cb289f9b9.JPG'),
    ('Halal Grill Bros', 'Halal, Comfort', true, '3476', 'Jerome Ave', 'Bronx', 'NY', 10467, '11:00 AM','12:00 AM', 'https://halalbrosgrill.biz/wp-content/uploads/2021/05/Halal-Bros-Grill-Menu-Bar-1.jpg'),
    ('Grounds Donut House', 'Dessert, Comfort', false, '4039', 'E Tremont Ave', 'Bronx', 'NY', 10465, '7:00 AM','6:00 PM', 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/7/item-100000005987630667_1678794447.jpg'),
-- MANHATTAN
    ('Joe''s Pizza', 'Pizza, Comfort, Italian', false, '150', 'E 14th Street', 'New York', 'NY', 10003, '10:30 AM','3:00 AM', 'https://media.cntraveler.com/photos/5a95ce8b99c77f4533dfbf2c/16:9/w_2560,c_limit/Joes-Pizza_2018_20180218-NYC-Shoot-46.jpg'),
    ('Jacob''s Pickles', 'Southern, Comfort', false, '509', 'Amsterdam Ave', 'New York', 'NY', 10024, '10:00 AM','12:00 AM', 'https://www.timeoutmarket.com/newyork/wp-content/uploads/2019/05/6.JacobsPickles-EatDrinkPage.jpg'),
-- BROOKLYN
    ('Joe''s Pizza', 'Pizza, Comfort, Italian', false, '216', 'Bedford Avenue', 'Brooklyn', 'NY', 11249, '10:30 AM','3:00 AM', 'https://media.cntraveler.com/photos/5a95ce8b99c77f4533dfbf2c/16:9/w_2560,c_limit/Joes-Pizza_2018_20180218-NYC-Shoot-46.jpg'),
    ('Soco Bk', 'American, Comfort, Seafood, Soul Food', false, '509', 'Myrtle Ave', 'Brooklyn', 'NY', 11205, '12:00 PM','9:00 PM', 'https://www.ocregister.com/wp-content/uploads/2020/08/OCR-L-SOCO-0828-04-1.jpg?w=1024');

INSERT INTO menus (restaurant_id, item_name, item_category, item_cost, item_description, combo, image)VALUES
--                                                  HALAL GRILL BROS
-- create an algorithm that adds $2 if has_combo is true 
-- Platters
    ('1', 'Lamb/Chicken/Mix', 'platters', 10.00,'Over Rice with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', false, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/5a82330d-dc6a-48f4-9d38-73fd64e96ee7-eb53eecf-6722-4d51-b412-ea1a67999b6e-retina-large.jpg' ),
    ('1', 'Lamb/Chicken/Mix Combo', 'platters', 11.50,'Over Rice with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', true, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/5a82330d-dc6a-48f4-9d38-73fd64e96ee7-eb53eecf-6722-4d51-b412-ea1a67999b6e-retina-large.jpg' ),
    ('1', 'Chicken', 'platters', 10.00,'Over Rice with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', false, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/714eeb86-48aa-4c1b-9816-9b2656224038-4e1d2551-04bd-41de-9af5-966e27f30cf6-retina-large.jpg'),
    ('1', 'Chicken Combo' , 'platters', 11.50,'Over Rice with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', true, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/714eeb86-48aa-4c1b-9816-9b2656224038-4e1d2551-04bd-41de-9af5-966e27f30cf6-retina-large.jpg'),
-- Gyros
    ('1', 'Chicken Gyro', 'gyros', 14.00,'Comes with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', false, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/766d8ef1-804a-4b99-b2cc-488dffe5a2fc-77bf3078-ed1a-4ef4-b806-6b102678e690-retina-large.jpg' ),
    ('1', 'Chicken Gyro Combo', 'gyros', 16.00,'Comes with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers). Combo comes with a side of fries and soda.', true, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/81943c5b-eede-4734-b30b-599c75acdb30-01a4bcd6-b862-4916-9937-54fda06cbb9d-retina-large.jpg' ),
    ('1', 'Jerk Salmon Gyro', 'gyros', 16.00,'Comes with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', false, '' ),
    ('1', 'Jerk Salmon Gyro Combo', 'gyros', 17.00,'Comes with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers). Combo comes with a side of fries and soda.', true, '' ),

-- Kofta Kabob
    ('1', 'Kofta Kabob', 'kofta', 5.00,'Comes with lettuce, and mediterranean salad (tomatoes, onions and cucumber mix).', false, 'https://www.allrecipes.com/thmb/0qGpg5-cnJIDWbFdARFuqGde86Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/106030-kofta-kebabs-3x4-351-copy-19f4c51c10e54f6ba60ba6169891dd1e.jpg' ),
    ('1', 'Kofta Kabob Gyro', 'kofta, gyro', 12.00,'Comes with lettuce, and mediterranean salad (tomatoes, onions and cucumber mix).', false, 'https://www.allrecipes.com/thmb/0qGpg5-cnJIDWbFdARFuqGde86Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/106030-kofta-kebabs-3x4-351-copy-19f4c51c10e54f6ba60ba6169891dd1e.jpg' ),
    ('1', 'Kofta Kabob Over Rice', 'kofta, platter', 15.00,'Comes with lettuce, and mediterranean salad (tomatoes, onions and cucumber mix).', false, 'https://www.allrecipes.com/thmb/0qGpg5-cnJIDWbFdARFuqGde86Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/106030-kofta-kebabs-3x4-351-copy-19f4c51c10e54f6ba60ba6169891dd1e.jpg' ),

-- Salads
    ('1', 'Lamb/Chicken/Mix Protein', 'salad', 10.00,'Create Your Own Salad! Choose 6 toppings and add the protein(s) of your choice.', false, 'https://lh3.googleusercontent.com/p/AF1QipPDTdKHHGTkO9Z8VLaLkdPWAs9HdgxfIH4vDyCT=s680-w680-h510' ),
    ('1', 'Jerk Chicken Protein', 'salad', 11.00,'Create Your Own Salad! Choose 6 toppings and add the protein(s) of your choice.', false, 'https://lh3.googleusercontent.com/p/AF1QipPDTdKHHGTkO9Z8VLaLkdPWAs9HdgxfIH4vDyCT=s680-w680-h510'),
    ('1', 'Grilled Chicken Protein', 'salad', 10.00,'Create Your Own Salad! Choose 6 toppings and add the protein(s) of your choice.', false, 'https://lh3.googleusercontent.com/p/AF1QipPDTdKHHGTkO9Z8VLaLkdPWAs9HdgxfIH4vDyCT=s680-w680-h510'),
    ('1', 'Jerk Salmon Protein', 'salad', 14.00, 'Create Your Own Salad! Choose 6 toppings and add the protein(s) of your choice', false, 'https://lh3.googleusercontent.com/p/AF1QipPDTdKHHGTkO9Z8VLaLkdPWAs9HdgxfIH4vDyCT=s680-w680-h510' ),

-- Platters
    ('3', 'Chicken', 'platters', 10.00,'Over Rice with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)',false, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/714eeb86-48aa-4c1b-9816-9b2656224038-4e1d2551-04bd-41de-9af5-966e27f30cf6-retina-large.jpg'),
    ('3', 'Chicken Combo', 'platters', 11.50,'Over Rice with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', true, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/714eeb86-48aa-4c1b-9816-9b2656224038-4e1d2551-04bd-41de-9af5-966e27f30cf6-retina-large.jpg'),
    ('3', 'Lamb/Chicken/Mix', 'platters', 10.00,'Over Rice with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', false, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/5a82330d-dc6a-48f4-9d38-73fd64e96ee7-eb53eecf-6722-4d51-b412-ea1a67999b6e-retina-large.jpg' ),
    ('3', 'Lamb/Chicken/Mix Combo', 'platters', 11.50,'Over Rice with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', true, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/5a82330d-dc6a-48f4-9d38-73fd64e96ee7-eb53eecf-6722-4d51-b412-ea1a67999b6e-retina-large.jpg' ),
-- Gyros
    ('3', 'Chicken Gyro', 'gyros', 14.00,'Comes with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', false, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/766d8ef1-804a-4b99-b2cc-488dffe5a2fc-77bf3078-ed1a-4ef4-b806-6b102678e690-retina-large.jpg' ),
    ('3', 'Chicken Gyro Combo', 'gyros', 16.00,'Comes with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers). Combo comes with a side of fries and soda.', true, 'https://img.cdn4dd.com/p/fit=cover,width=600,height=300,format=auto,quality=50/media/photosV2/81943c5b-eede-4734-b30b-599c75acdb30-01a4bcd6-b862-4916-9937-54fda06cbb9d-retina-large.jpg' ),
    ('3', 'Jerk Salmon Gyro', 'gyros', 16.00,'Comes with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers)', false, '' ),
    ('3', 'Jerk Salmon Gyro Combo', 'gyros', 17.00,'Comes with lettuce and Mediterranean Salad. (Lettuce, tomatoes, onions, cucumbers). Combo comes with a side of fries and soda.', true, '' ),

-- Kofta Kabob
    ('3', 'Kofta Kabob', 'kofta', 5.00,'Comes with lettuce, and mediterranean salad (tomatoes, onions and cucumber mix).', false, 'https://www.allrecipes.com/thmb/0qGpg5-cnJIDWbFdARFuqGde86Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/106030-kofta-kebabs-3x4-351-copy-19f4c51c10e54f6ba60ba6169891dd1e.jpg' ),
    ('3', 'Kofta Kabob Gyro', 'kofta, gyro', 12.00,'Comes with lettuce, and mediterranean salad (tomatoes, onions and cucumber mix).', false, 'https://www.allrecipes.com/thmb/0qGpg5-cnJIDWbFdARFuqGde86Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/106030-kofta-kebabs-3x4-351-copy-19f4c51c10e54f6ba60ba6169891dd1e.jpg' ),
    ('3', 'Kofta Kabob Over Rice', 'kofta, platter', 15.00,'Comes with lettuce, and mediterranean salad (tomatoes, onions and cucumber mix).', false, 'https://www.allrecipes.com/thmb/0qGpg5-cnJIDWbFdARFuqGde86Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/106030-kofta-kebabs-3x4-351-copy-19f4c51c10e54f6ba60ba6169891dd1e.jpg' ),

-- Salads
    ('3', 'Lamb/Chicken/Mix Protein', 'salad', 10.00,'Create Your Own Salad! Choose 6 toppings and add the protein(s) of your choice.', false, 'https://lh3.googleusercontent.com/p/AF1QipPDTdKHHGTkO9Z8VLaLkdPWAs9HdgxfIH4vDyCT=s680-w680-h510' ),
    ('3', 'Jerk Chicken Protein', 'salad', 11.00,'Create Your Own Salad! Choose 6 toppings and add the protein(s) of your choice.', false, 'https://lh3.googleusercontent.com/p/AF1QipPDTdKHHGTkO9Z8VLaLkdPWAs9HdgxfIH4vDyCT=s680-w680-h510'),
    ('3', 'Grilled Chicken Protein', 'salad', 10.00,'Create Your Own Salad! Choose 6 toppings and add the protein(s) of your choice.', false, 'https://lh3.googleusercontent.com/p/AF1QipPDTdKHHGTkO9Z8VLaLkdPWAs9HdgxfIH4vDyCT=s680-w680-h510'),
    ('3', 'Jerk Salmon Protein', 'salad', 14.00, 'Create Your Own Salad! Choose 6 toppings and add the protein(s) of your choice', false, 'https://lh3.googleusercontent.com/p/AF1QipPDTdKHHGTkO9Z8VLaLkdPWAs9HdgxfIH4vDyCT=s680-w680-h510' ),

--                                                 JOES PIZZA
-- Pies
    ('5', 'Plain Cheese Pizza', 'Pizza Pie', 25.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2F2d7e7311-f6aa-4ff7-8204-50ad816edf5c.jpg&left=91&top=0&right=104&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('5', 'Plain Cheese Pizza 1/2 Topping', 'Pizza Pie', 27.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2Fd55a5b63-f4a0-47a8-bc2e-dcbcebd77d5d.jpg&left=346&top=0&right=54&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('5', 'Plain Cheese Pizza w/ 1 Topping', 'Pizza Pie', 29.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2F8f515a54-ee9c-4aff-a779-2bb730ab5692.jpg&left=108&top=0&right=350&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('5', 'Plain Cheese Pizza w/ 2 Toppings', 'Pizza Pie', 31.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2Fcfcdaf15-e42f-43c0-a286-22283e37461b.jpg&left=425&top=0&right=446&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('5', 'Fresh Mozzarella Pizza', 'Pizza Pie', 29.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2Fa7b63bfc-487b-487e-9310-73426411fb1f.jpg&left=0&top=0&right=400&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('5', 'Fresh Mozzarella Pizza w/ 1 Topping', 'Pizza Pie', 30.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2F1b3b76f3-5525-4286-851e-5a5b4876f719.jpg&left=0&top=0&right=1137&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('5', 'MeatLover Pizza', 'Pizza Pie', 33.00, 'Pepperoni, sausage, meatball', false, '' ),
    ('5', 'Supreme Pizza', 'Pizza Pie', 33.00, 'Pepperoni, sausage, mushroom, onion', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2F0d4d6977-b7c7-4830-8b00-3f8b73c503fd.jpg&left=156&top=0&right=545&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('5', 'Sicilian Square Pizza', 'Pizza Pie', 29.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2Fb01ce59f-6aa2-46d3-8ca5-0bd500a15aaf.jpg&left=0&top=58&right=0&bottom=61&height=800&width=924&quality=85&fit=contain' ),
    ('5', 'Sicilian Square Pizza w/ 1 topping', 'Pizza Pie', 31.00, '', false, '' ),
-- Drinks
    ('5', 'Imported Soda', 'drinks', 3.75, '', false, '' ),
    ('5', 'Stewart\s Soda', 'drinks', 3.00, '', false, '' ),
    ('5', 'Snapple', 'drinks', 3.00, '', false, '' ),
-- Salad
    ('5', 'Joe''s House Salad', 'salad', 9.00, 'Iceberg, cucumbers, peppers, black olives, artichokes, tomato, red onion. Served with house dressing.', false, '' ),
    ('5', 'Joe''s House Salad Family', 'salad', 29.00, 'Feeds 4-5. Iceberg, cucumbers, peppers, black olives, artichokes, tomato, red onion. Served with house dressing.', false, '' ),

-- Pies
    ('7', 'Plain Cheese Pizza', 'Pizza Pie', 25.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2F2d7e7311-f6aa-4ff7-8204-50ad816edf5c.jpg&left=91&top=0&right=104&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('7', 'Plain Cheese Pizza 1/2 Topping', 'Pizza Pie', 27.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2Fd55a5b63-f4a0-47a8-bc2e-dcbcebd77d5d.jpg&left=346&top=0&right=54&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('7', 'Plain Cheese Pizza w/ 1 Topping', 'Pizza Pie', 29.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2F8f515a54-ee9c-4aff-a779-2bb730ab5692.jpg&left=108&top=0&right=350&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('7', 'Plain Cheese Pizza w/ 2 Toppings', 'Pizza Pie', 31.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2Fcfcdaf15-e42f-43c0-a286-22283e37461b.jpg&left=425&top=0&right=446&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('7', 'Fresh Mozzarella Pizza', 'Pizza Pie', 29.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2Fa7b63bfc-487b-487e-9310-73426411fb1f.jpg&left=0&top=0&right=400&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('7', 'Fresh Mozzarella Pizza w/ 1 Topping', 'Pizza Pie', 30.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2F1b3b76f3-5525-4286-851e-5a5b4876f719.jpg&left=0&top=0&right=1137&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('7', 'MeatLover Pizza', 'Pizza Pie', 33.00, 'Pepperoni, sausage, meatball', false, '' ),
    ('7', 'Supreme Pizza', 'Pizza Pie', 33.00, 'Pepperoni, sausage, mushroom, onion', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2F0d4d6977-b7c7-4830-8b00-3f8b73c503fd.jpg&left=156&top=0&right=545&bottom=0&height=800&width=924&quality=85&fit=contain' ),
    ('7', 'Sicilian Square Pizza', 'Pizza Pie', 29.00, '', false, 'https://menuimages.chownowcdn.com/image-resizing?image=11015%2Fb01ce59f-6aa2-46d3-8ca5-0bd500a15aaf.jpg&left=0&top=58&right=0&bottom=61&height=800&width=924&quality=85&fit=contain' ),
    ('7', 'Sicilian Square Pizza w/ 1 topping', 'Pizza Pie', 31.00, '', false, '' ),
-- Drinks
    ('7', 'Imported Soda', 'drinks', 3.75, '', false, '' ),
    ('7', 'Stewart''s Soda', 'drinks', 3.00, '', false, '' ),
    ('7', 'Snapple', 'drinks', 3.00, '', false, '' ),
-- Salad
    ('7', 'Joe''s House Salad', 'salad', 9.00, 'Iceberg, cucumbers, peppers, black olives, artichokes, tomato, red onion. Served with house dressing.', false, '' ),
    ('7', 'Joe''s House Salad Family', 'salad', 29.00, 'Feeds 4-5. Iceberg, cucumbers, peppers, black olives, artichokes, tomato, red onion. Served with house dressing.', false, '' ),
--                                              LOVE'S KITCHEN
-- Burgers
-- Entrees
    ('2', 'Short Rib Grilled Cheese', 'entree', 17.00, 'Indulge in our mouthwatering braised beef sandwich, adorned with balsamic onions, arugula, and cheese on sourdough bread. Accompanied by a refreshing side salad or your choice of crispy fries - a delectable feast for all.', false, 'https://popmenucloud.com/cdn-cgi/image/width%3D1536%2Cheight%3D1536%2Cfit%3Dscale-down%2Cformat%3Dauto%2Cquality%3D60/fgpdaicu/b60c5fee-d02a-46fc-9626-9e1c00e3e8ed.JPG' ),
    ('2', 'Lomo Saltado', 'entree', 20.00, 'Enjoy a mouthwatering stir-fry dish with onions, peppers, tomatoes, and cumin, seasoned with soy sauce. Served with fries, cilantro, citrus herb cream, and accompanied by white rice - a delicious fusion of flavors.', false, 'https://popmenucloud.com/cdn-cgi/image/width%3D1536%2Cheight%3D1536%2Cfit%3Dscale-down%2Cformat%3Dauto%2Cquality%3D60/fgpdaicu/25e4e1f0-ea59-47dd-883d-014219cb5c5a.jpg' ),
    ('2', 'NY Strip Steak', 'entree', 29.00, 'Savor our tenderly cooked steak, customized to your desired temperature, and adorned with sautéed mushrooms, caramelized onions, and brandy peppercorn sauce. Accompanied by garlic Parmesan mashed potatoes and sautéed vegetables - a delightful and hearty meal.', false, 'https://popmenucloud.com/cdn-cgi/image/width%3D1536%2Cheight%3D1536%2Cfit%3Dscale-down%2Cformat%3Dauto%2Cquality%3D60/fgpdaicu/38354315-bcb6-475f-8a91-6c46699973d6.JPG' ),

-- Seafood
    ('2', 'Steak & Shrimp Bowl', 'seafood', 23.00, 'Experience the fusion of sautéed shrimp and tender NY strip steak with vegetables, doused in a delightful blend of soy and sriracha sauce, served over a bed of white rice - a flavorful and satisfying combination.', false, 'https://popmenucloud.com/cdn-cgi/image/width%3D2400%2Cheight%3D2400%2Cfit%3Dscale-down%2Cformat%3Dauto%2Cquality%3D60/fgpdaicu/89aa316f-0f77-496e-96a1-43c070548d43.jpg' ),
    ('2', 'Jerk Shrimp Pineapple Fried Rice', 'seafood', 22.00, 'Indulge in our delicious dish featuring jerk marinaded jumbo shrimp, diced pineapple, carrots, peas, onions, peppers, broccoli, sweet plantains, and eggs - a flavorful and satisfying combination of Caribbean-inspired flavors.', false, 'https://popmenucloud.com/cdn-cgi/image/width%3D2400%2Cheight%3D2400%2Cfit%3Dscale-down%2Cformat%3Dauto%2Cquality%3D60/fgpdaicu/0abbae60-2193-44b6-9b58-28890b732bf9.JPG' ),
    ('2', 'Seafood Fettuccine', 'seafood', 29.00, 'Indulge in a delectable seafood medley featuring clams, shrimp, boneless lobster claws, and green mussels, served in saffron cream sauce, topped with aged parmesan, arugula, and a hint of peppers flakes - a taste of the ocean and a burst of flavors.', false, 'https://popmenucloud.com/cdn-cgi/image/width%3D1536%2Cheight%3D1536%2Cfit%3Dscale-down%2Cformat%3Dauto%2Cquality%3D60/fgpdaicu/808e191c-0018-4747-b139-403996411334.JPG' ),

-- Cold Pressed Juice
    ('2', 'Green Giant', 'drinks', 9.00, 'Enjoy a refreshing and nutritious green juice featuring kale, spinach, ginger, cucumbers, green apple, and celery - a healthy and revitalizing blend of greens and natural ingredients.', false, '' ),
    ('2', 'Le Jus Violet', 'drinks', 9.00, 'Savor the vibrant and healthy juice blend of beets, carrot, lemon, and ginger - a nutrient-packed and zesty option to boost your energy and invigorate your taste buds.', false, '' ),

--                                              GROUNDS DONUT HOUSE
-- Donuts
    ('4', 'Original Glazed', 'dessert, donuts', 3.50, '', false, 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/8/item-100000005987630408_1636209087.jpg?size=medium' ),
    ('4', 'Chocolate Forsted', 'dessert, donuts', 4.00, '', false, 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/2/item-100000005987630412_1636209136.jpg?size=medium' ),
    ('4', 'Churro', 'dessert, donuts', 4.00, '', false, 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/0/item-100000007583456830_1636209278.jpg?size=medium' ),
    ('4', 'Strawberry Frosted ', 'dessert, donuts', 4.00, '', false, 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/0/item-100000005987630410_1636209112.jpg?size=medium' ),
    ('4', 'Fruity Pebbles', 'dessert, donuts', 4.00, '', false, 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/2/item-100000005987630422_1636209258.jpg?size=medium' ),
    ('4', 'Farmhouse Jelly', 'dessert, donuts', 4.00, '', false, 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/3/item-100000005987630673_1678794505.jpg?size=medium' ),
    ('4', 'Coffee Cake', 'dessert, donuts', 4.00, 'Coffee infused frosting, topped with crumbled coffee cake and a caramel drizzle', false, 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/7/item-100000005987630667_1678794447.jpg?size=medium' ),
    ('4', 'Maple Bacon', 'dessert, donuts', 5.00, '', false, 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/9/item-100000005987630669_1678794573.jpg?size=medium' ),
    ('4', 'Cookies & Cream', 'dessert, donuts', 4.00, '', false, 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/9/item-100000021760784979_1678794598.jpg?size=medium' ),
    ('4', 'Boston Cream', 'dessert, donuts', 4.00, '', false, 'https://d2s742iet3d3t1.cloudfront.net/restaurants/restaurant-61154000000000000/menu/items/5/item-100000007014669765_1678794536.jpg?size=medium' ),

-- Cookies
    ('4', 'Milano', 'dessert, cookies', 3.75, '5oz hand baked chocolate chip cookie', false, '' ),
    ('4', 'Red Velvet', 'dessert, cookies', 3.75, '5oz hand baked red velvet cookie', false, '' ),
    ('4', 'Strawberries & Cream', 'dessert, cookies', 3.75, '5oz hand baked cookie', false, '' ),

-- Drinks (Coffee)
    ('4', 'Cold Brew', 'drinks coffee', 4.00, '', false, '' ),
    ('4', 'Cold Brew', 'drinks coffee', 4.00, '', false, '' ),
    ('4', 'Iced Coffee Brew', 'drinks coffee', 2.75, '', false, '' ),

-- Drinks (Not Coffee)
    ('4', 'Green Iced Tea', 'drinks tea', 2.75, '', false, '' ),
    ('4', 'Iced Green Tea Lemonade', 'drinks tea', 3.00, '', false, '' ),
    ('4', 'Strawberry Green Tea Lemonade', 'drinks tea', 3.00, '', false, '' ),
    ('4', 'Lemonade', 'drinks', 2.75, '', false, '' ),
    ('4', 'Chai Lemonade', 'drinks', 3.40, '', false, '' ),

--                                              JACOB'S PICKLES
-- Biscuit Breakfast Sandwhiches 
    ('6', 'Bacon Egg & Cheese Biscuit', 'breakfast biscuit', 16.00, 'Choice of gravy - sausage or mushroom gravy. with two fried eggs.', false, '' ),
    ('6', 'Egg & Cheese Biscuit', 'breakfast biscuit', 15.00, '', false, '' ),
    ('6', 'Biscuits & Gravy', 'breakfast biscuit', 14.00, 'Choice of gravy - sausage or mushroom gravy.', false, '' ),
-- Southern Biscuit Sandwhiches
    ('6', 'Chicken Bacon Egg & Cheese', 'southern-biscuit', 19.00, 'w/ Picnic Sauce', false, 'https://img.cdn4dd.com/p/fit=cover,width=1000,height=600,format=auto,quality=50/media/photosV2/fc934e19-47da-4c08-95c0-7e9f6534de6d-retina-large.JPG' ),
-- Entrees 
    ('6', 'Shrimp & Bacon Grits', 'entree', 26.00, 'Whole wild shrimp, nitrate-free bacon, and organic cheese grits.', false, 'https://img.cdn4dd.com/p/fit=cover,width=1000,height=600,format=auto,quality=50/media/photosV2/267bfcd8-0e02-4003-9f5b-acbe7e79c24d-retina-large.JPG' ),
    ('6', 'Chicken & Pancakes', 'entree', 21.00, 'with Crispy Nitrate Free Bacon and Home Made Syrup.', false, 'https://img.cdn4dd.com/p/fit=cover,width=1000,height=600,format=auto,quality=50/media/photosV2/ebd9138f-0d9b-4fc5-9324-a2cad2279287-retina-large.JPG' ),
    ('6', 'Buffalo Chicken Mac & Cheese', 'entree', 19.00, '', false, 'https://img.cdn4dd.com/p/fit=cover,width=1000,height=600,format=auto,quality=50/media/photosV2/fc64f61e-dc64-442d-a25d-b9ad9ac50d62-retina-large.JPG' ),
-- Chicken Biscuit Sandwhiches
    ('6', 'Hot Chicken Sandwhich', 'dinner biscuit', 18.00, 'Hot Sour Pickles', false, 'https://img.cdn4dd.com/p/fit=cover,width=1000,height=600,format=auto,quality=50/media/photosV2/e9621c84-d93d-4b70-bb60-21a7068cd38c-retina-large.JPG' ),
    ('6', 'Honey Chicken & Pickles', 'dinner biscuit', 18.00, 'Buttermilk fried chicken, hot sours, clover honey served with grain miller organic cheese grits', false, 'https://img.cdn4dd.com/p/fit=cover,width=1000,height=600,format=auto,quality=50/media/photosV2/ead7a1a4-cebd-41a5-bae2-65bac85a104c-retina-large.JPG' ),

-- Desserts
    ('6', 'Fried Oreos', 'desserts', 9.00, '', false, 'https://img.cdn4dd.com/p/fit=cover,width=1000,height=600,format=auto,quality=50/media/photosV2/9959f3d8-254f-4467-8536-abc120091695-retina-large.JPG' ),

-- Drinks
    ('6', 'Unsweetened Tea', 'drinks', 5.00, 'Sweetened with honey', false, '' ),
    ('6', 'Sweet Tea', 'drinks', 5.00, 'Sweetened with honey', false, '' ),
    ('6', 'Half Tea & Half Lemonade', 'drinks', 5.00, 'Sweetened with honey', false, '' ),
    ('6', 'Fresh Squeezed Lemonade', 'drinks', 5.00, 'Sweetened with honey', false, '' ),

--                                                  SOCO BK
-- Appetizers
    ('8', 'Creole Gumbo', 'appetizer', 16.00, 'Creole shrimp, pork andouille, seasonal veggies, spicy seafood broth', false, '' ),
    ('8', 'Salmon Cakes', 'appetizer', 18.00, 'Smoked wings, house-made pepper jelly, tzatziki dip', false, '' ),

-- Entrees
    ('8', 'Clinton Hill Omelette', 'brunch', 18.00, 'Pork andouille, gruyere, baby arugula, frizzled onions, home fries.', false, '' ),
    ('8', 'Smoked BBQ Chicken', 'entree', 26.00, 'Half organic chicken, Asian BBQ sauce, string beans, garlic mashed potatoes', false, '' ),
    ('8', 'Buttermilk Fried Chicken', 'brunch entree', 24.00, 'Organic chicken, red velvet waffle', false, '' ),
    ('8', 'Pecan-Crusted Pork Chop', 'entree', 26.00, 'Single-cut, red wine reduction, citrus mashed sweet potatoes, braised collards', false, '' ),
    ('8', 'Fresh Fried Catch', 'entree', 36.00, 'Herb marinated, lightly battered whole fish stuffed with dirty rice, lobster broth', false, '' ),
    ('8', 'Lobster, Shrimp N Grits', 'brunch entree', 38.00, 'Spicy tomato broth, creamy white cheddar grits', false, '' ),

-- Salads
    ('8', 'Greek Salad', 'salad', 15.00, 'Romaine, feta cheese, kalamata olives, red onion, cucumber, oregano viniagrette', false, '' ),
    ('8', '509 Caesar Salad', 'salad', 15.00, 'Shredded kale, romaine lettuce, shaved Parmesan, cornbread croutons. Add Shrimp +$9.00 | Add Salmon +$9.00 | Add Steak +$10.00', false, '' ),

-- Desserts
    ('8', 'Soco Signature Cup Cake', 'dessert', 8.00, 'Hand-crafted red velvet cup cake', false, '' ),
    ('8', 'Strawbwerry Shortcake', 'dessert', 14.00, 'Warm vanilla sponge cake, white chocolate creme anglaise, strawberry puree, Chantilly cream', false, '' ),
    ('8', 'Flourless Chocolate Cake', 'dessert', 13.00, 'Raspberry sauce, whipped cream topping', false, '' );


INSERT INTO reviews (restaurant_id, reviewer, content, stars_rating ) VALUES
    ('1', 'Edward S.', 'Food Was Delicious and arrived earlier than expected.', 5),
    ('2', 'Emily L.', 'Arrived early best, app.', 5),
    ('3', 'Hillary S.', 'Will come back for more', 5),
    ('4', 'Steve J.', 'Thank You!!', 5),
    ('5', 'Michael S.', 'The food took me on a trip and delivery kept me updated every step of the way.', 5),
    ('6', 'Brittney D.', 'Best food ever, never would have gotten to order if this was on another app, Thanks Foodie.', 5),
    ('7', 'David M.', 'My got to spot!', 5),
    ('8', 'Star R.', 'Delicious', 5),
    ('8', 'Ashton K.', 'Yummy.', 5);
