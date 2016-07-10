# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# sections = Section.create([{id:1, name:'Breakfast'}, {id:2, name:'Lunch'}, {id:3, name:'Dinner'}, {id:4, name:'Drinks'}])

# l = Section.find_by(name: 'Lunch')
# #l.fooditems.create([{name: 'Canh Chua', description: 'Delicious fist soup', price: 30000, image_url: 'http://loremflickr.com/320/240/canh-chua'}])
# fi = FoodItem.create([{name: 'Canh Chua', description: 'Delicious fist soup', price: 30000, image_url: 'http://loremflickr.com/320/240/canh-chua'}])
# l.food_items = fi
Section.delete_all
sections = Section.create([{id:1, name:'Breakfast'}, {id:2, name:'Lunch'}, {id:3, name:'Dinner'}, {id:4, name:'Drinks'}])

b = Section.find_by(name: 'Breakfast')
b.food_items = []
FoodItem.create(name: 'Banh canh cha ca', description: 'Delicious soup with fish', section:b, price: 25000, image_url: 'https://media.licdn.com/mpr/mpr/shrinknp_800_800/AAEAAQAAAAAAAAkOAAAAJDYzYTU0M2QwLWFkOGQtNDYwMi1hNGRlLWZiMzRlOWZlZTI4Mw.jpg')
FoodItem.create(name: 'Banh my opla', description: 'Hot break with fried eggs', section:b, price: 20000, image_url: 'http://saigongame.com/uploads/images/huong%20dan%20cach%20che%20bien%20banh%20mi%20trung%20op%20la%20ngn%20tuyet.jpg')
FoodItem.create(name: 'Pho bo', description: 'Delicious soup with beef', section:b, price: 30000,  image_url: 'http://media.vietq.vn/files/ctvhanh/cach_lam_pho_bo_5.jpg')
FoodItem.create({name: 'Hu tieu my', description: 'Delicious soup with meat, eggs', section:b, price: 25000, image_url: 'http://anh.eva.vn/upload/4-2013/images/2013-10-15/1381851300-Mi-hu-tiu8.jpg'})
FoodItem.create({name: 'Goi cuon', description: 'Spring rolls with meat, shrimp and vegetables', section:b, price: 40000, image_url: 'http://phoonghung.vn/resources/uploaded/PhoOngHung/HLinks/2014/09/1/Goi-cuon-26-635536579455863939.jpg'})

l = Section.find_by(name: 'Lunch')
l.food_items = []

FoodItem.create(name: 'Canh chua', description: 'Delicious soup with fish', section:l, price: 30000, image_url: 'http://loremflickr.com/320/240/canh-chua')
FoodItem.create(name: 'Rau muong luoc', description: 'Rau muong luoc', section:l, price: 10000, image_url: 'http://hoangviettourist.com/images/2015/05/com-bac-tu-chon-cho-bua-trua-cong-so-sai-gon-1432194188-555d8c8cc63d7.jpg')
FoodItem.create(name: 'Ca duc chien gion', description: 'Ca duc chien gion', section:l, price: 30000, image_url: 'http://i1103.photobucket.com/albums/g476/dvd101/6874265356_bd5e046e51.jpg')
FoodItem.create(name: 'Muc don thit', description: 'Rau muong luoc', section:l, price: 40000, image_url: 'http://chamuchalong.hongphong.gov.vn/wp-content/uploads/2015/04/muc-nhoi-thit-xot-ca-1.jpg')
FoodItem.create(name: 'Thit luoc mam tom', description: 'Thit luoc mam tom', section:l, price: 30000, image_url: 'http://dacsanmienbac.org/wp-content/uploads/2013/02/thit-luoc-jpg-1361761415-1361762370_500x0.jpg')



d = Section.find_by(name: 'Dinner')
d.food_items = []

FoodItem.create(name: 'Chao vit', description: 'Delicious soup with duck', section:d, price: 40000, image_url: 'http://www.toimuonden.com/data/dinings/10219/images/gallery/main/vnm_2011_354460.jpg')
FoodItem.create(name: 'My ga quay', description: 'My ga quay', section:d, price: 350000, image_url: 'http://thieunien.vn/files/s-23/2016/0415/5710b522-0021a75154.jpg')
FoodItem.create(name: 'Bun mam mien tay', description: 'Bun mam mien tay', section:d, price: 40000, image_url: 'http://www.uphinh.vn/image/stream/714164.jpg')
FoodItem.create(name: 'Bun cha Ha Noi', description: 'Bun cha Ha Noi', section:d, price: 40000, image_url: 'http://congthucmonngon.com/wp-content/uploads/2012/10/B%C3%BAn-ch%E1%BA%A3-H%C3%A0-N%E1%BB%99i.jpg')
FoodItem.create(name: 'Com tam', description: 'Com tam', section:d, price: 20000, image_url: 'http://comtamminhlong.com/upload/product/700028724451.jpg')



d = Section.find_by(name: 'Drinks')
d.food_items = []

FoodItem.create(name: 'Tra da', description: 'Ice tea', section:d, price: 2000, image_url: 'http://media.tinmoi.vn/2012/08/11/71_11_1344671135_52_trada_4f0f0.jpg')
FoodItem.create(name: 'Bia Sai Gon', description: 'Sai gon beer', section:d, price: 120000, image_url: 'https://muachung10.vcmedia.vn/thumb_w/640/i:gallery/2013/06/07/ho4xq/Voucher-bia.jpg')
FoodItem.create(name: 'Lipton sua', description: 'Liption with milk', section:d, price: 10000, image_url: 'http://ketnoicafe.vn/data/news/1481/Lipton-sua-da-ketnoicafe.jpg')
FoodItem.create(name: 'Sua tuoi', description: 'Fresh milk', section:d, price: 15000, image_url: 'http://www.bioacimin.com/wp-content/uploads/2016/04/Bioacimin-03-Apr-Tr%E1%BA%BB-n%C3%AAn-u%E1%BB%91ng-s%E1%BB%AFa-t%C6%B0%C6%A1i-t%E1%BB%AB-khi-n%C3%A0o.jpg')
FoodItem.create(name: 'Ca phe da', description: 'Coffee with ice', section:d, price: 20000, image_url: 'http://img.v3.news.zdn.vn/w660/Uploaded/ngtmns/2014_11_25/travel_for_children__coffee__1.jpg')

# OrderStatus initialization
OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
