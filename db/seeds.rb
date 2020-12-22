# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Property.create([
    {type:"cafe", title:"お洒落な空間！", description:"お洒落な空間！", address_full:"東京都渋谷区道玄坂1-23-3", region:"関東", prefecture:"東京", city:"渋谷区", price:500, header_img:"https://dl.dropboxusercontent.com/s/e0j0c5yp7fbauh3/A00004356.jpg", owner_id:1},
    {type:"cafe", title:"大人な空間！", description:"大人な空間！", address_full:"東京都新宿区西新宿2-14-3", region:"関東", prefecture:"東京", city:"新宿区", price:800, header_img:"https://dl.dropboxusercontent.com/s/ssl0ei1oy3annm1/88126db2fa34d6f9d4f304311fd661ff.jpg", owner_id:1},
    {type:"rooftop", title:"自由に使える屋上！", description:"自由に使える屋上！", address_full:"東京都目黒区目黒3-8-4", region:"関東", prefecture:"東京", city:"目黒区", price:200, header_img:"https://dl.dropboxusercontent.com/s/aj9xbb5tvoqbty2/450-20191105175328203741.jpg", owner_id:2},
    {type:"rooftop", title:"晴れやかな屋上！", description:"晴れやかな屋上！", address_full:"東京都中央区日本橋4-18-8", region:"関東", prefecture:"東京", city:"中央区", price:800, header_img:"https://dl.dropboxusercontent.com/s/1gyqrusw17g0qgh/img_f9b34bdb1218b9ccbe6091f1fbf455e774408.jpg", owner_id:2},
    {type:"garden", title:"広々な庭！", description:"広々な庭！", address_full:"東京都江東区砂場1-28-3", region:"関東", prefecture:"東京", city:"江東区", price:1000, header_img:"https://dl.dropboxusercontent.com/s/xrbtodcf3jceidl/3fd8456f2abd4a8888ae6686472be47d-e1570792926959.jpg", owner_id:3},
])

Owner.create([
    {name:"Taro Yamada", email:"taroyamada@gmail.com"},
    {name:"John Macbeth", email:"johnmacbeth@gmail.com"},
    {name:"Daniel Park", email:"danielpark@gmail.com"}
])
