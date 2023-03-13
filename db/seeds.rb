# category seeder
Category.create({"category_name"=>"T-Shirts", "slug"=>"t-shirts", "description"=>"", "img_src"=>"https://images.unsplash.com/photo-1524275539700-cf51138f679b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"})                                                 
Category.create({"category_name"=>"Hoodies", "slug"=>"hoodies", "description"=>"", "img_src"=>"https://images.unsplash.com/photo-1618333262686-d0bdf1e9089f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlf"})
Category.create({"category_name"=>"Gaming", "slug"=>"gaming", "description"=>"", "img_src"=>"https://images.unsplash.com/photo-1635048424329-a9bfb146d7aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2831&q=80"})                                               
Category.create({"category_name"=>"Laptops", "slug"=>"laptops", "description"=>"", "img_src"=>"https://images.unsplash.com/photo-1544099858-75feeb57f01b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80"})                                                
Category.create({"category_name"=>"Shoes", "slug"=>"shoes", "description"=>"", "img_src"=>"https://images.unsplash.com/photo-1460353581641-37baddab0fa2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80"})
Category.create({"category_name"=>"Electronics", "slug"=>"electronics", "description"=>"", "img_src"=>"https://images.unsplash.com/photo-1498049794561-7780e7231661?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80"})
Category.create({"category_name"=>"Books", "slug"=>"books", "description"=>"", "img_src"=>"https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1773&q=80"})
Category.create({"category_name"=>"Sport Wears", "slug"=>"sport-wears", "description"=>"", "img_src"=>"https://images.unsplash.com/photo-1536244955395-0b8a2a5ab5df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"})
Category.create({"category_name"=>"Health & Personal Care", "slug"=>"health-personal-care", "description"=>"", "img_src"=>"https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Fuji/2022/February/DashboardCards/GW_CONS_AUS_HPC_HPCEssentials_CatCard_Desktop2x._SY608_CB627424361_.jpg"})
Category.create({"category_name"=>"Phones & Tablets", "slug"=>"phones-tablets", "description"=>"", "img_src"=>"https://images.unsplash.com/photo-1574944985070-8f3ebc6b79d2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2834&q=80"})
# item seeder 
Item.create({"item_name"=>"COLLUSION t-shirt", "stock_number"=>5, "price"=>0.899e1, "description"=>"COLLUSION oversized logo t-shirt in dark blue", "image_src"=>"https://images.asos-media.com/products/collusion-oversized-logo-t-shirt-in-dark-blue/203396964-2?$n_640w$&wid=634&fit=constrain", "category_id"=>1}) 
Item.create({"item_name"=>"New Look t-shirt", "stock_number"=>5, "price"=>0.9e1, "description"=>"New Look oversized t-shirt in black", "image_src"=>"https://images.asos-media.com/products/new-look-oversized-t-shirt-in-black/202846122-2?$n_640w$&wid=634&fit=constrain", "category_id"=>1})                        
Item.create({"item_name"=>"adidas t-shirt", "stock_number"=>5, "price"=>0.18e2, "description"=>"adidas Football Squadra 21 t-shirt in whitek", "image_src"=>"https://images.asos-media.com/products/adidas-football-squadra-21-t-shirt-in-white/202733257-1-white?$n_640w$&wid=634&fit=constrain", "category_id"=>1})  
Item.create({"item_name"=>"Armani t-shirt", "stock_number"=>5, "price"=>0.333e2, "description"=>"Armani Exchange text logo t-shirt in black", "image_src"=>"https://images.asos-media.com/products/armani-exchange-text-logo-t-shirt-in-black/202743432-1-black?$n_640w$&wid=634&fit=constrain", "category_id"=>1})
Item.create({"item_name"=>"Only & Sons t-shirt", "stock_number"=>5, "price"=>0.162e2, "description"=>"Only & Sons oversized t-shirt with photo back print in black", "image_src"=>"https://images.asos-media.com/products/only-sons-oversized-t-shirt-with-photo-back-print-in-black/204402114-1-caviar?$n_640w$&wid=634&fit=constrain", "category_id"=>1})
Item.create({"item_name"=>"Topman t-shirt", "stock_number"=>11, "price"=>0.35e2, "description"=>"Topman oversized t-shirt in charcoal", "image_src"=>"https://images.asos-media.com/products/topman-oversized-t-shirt-in-charcoal/203370293-1-charcoal?$n_640w$&wid=634&fit=constrain", "category_id"=>1})
Item.create({"item_name"=>"Tommy Hilfiger t-shirt", "stock_number"=>5, "price"=>0.2e2, "description"=>"Tommy Hilfiger embroidered flag logo t-shirt in navy", "image_src"=>"https://images.asos-media.com/products/tommy-hilfiger-embroidered-flag-logo-t-shirt-in-navy/12591348-1-skycaptain?$n_640w$&wid=634&fit=constrain", "category_id"=>1})
Item.create({"item_name"=>"Polo Ralph 3 pack t-shirts", "stock_number"=>5, "price"=>0.5e2, "description"=>"Polo Ralph Lauren 3 pack t-shirts with pony logo in black/grey/white", "image_src"=>"https://images.asos-media.com/products/polo-ralph-lauren-3-pack-t-shirts-with-pony-logo-in-black-grey-white/200849052-1-multi?$n_640w$&wid=634&fit=constrain", "category_id"=>1})
Item.create({"item_name"=>"Jack & Jones 5 pack t-shirt", "stock_number"=>5, "price"=>0.1e3, "description"=>"Jack & Jones 5 pack longline scoop hem t-shirt in muiti", "image_src"=>"https://images.asos-media.com/products/jack-jones-5-pack-longline-scoop-hem-t-shirt-in-muiti/203084084-2?$n_640w$&wid=634&fit=constrain", "category_id"=>1})
Item.create({"item_name"=>"Fred Perry t-shirt", "stock_number"=>5, "price"=>0.5e4, "description"=>"Fred Perry contrast tape ringer t-shirt in black", "image_src"=>"https://images.asos-media.com/products/fred-perry-contrast-tape-ringer-t-shirt-in-black/204421546-1-black?$n_640w$&wid=634&fit=constrain", "category_id"=>1})
Item.create({"item_name"=>"Reclaimed hoodie", "stock_number"=>5, "price"=>0.12099e3, "description"=>"Reclaimed Vintage unisex wave print hoodie in green", "image_src"=>"https://images.asos-media.com/products/reclaimed-vintage-unisex-wave-print-hoodie-in-green/204194885-1-green?$n_640w$&wid=634&fit=constrain", "category_id"=>2})
Item.create({"item_name"=>"HUGO sweatshirt", "stock_number"=>5, "price"=>0.99e2, "description"=>"HUGO Duratschi223 box logo sweatshirt in black", "image_src"=>"https://images.asos-media.com/products/hugo-duratschi223-box-logo-sweatshirt-in-black/204319068-2?$n_640w$&wid=634&fit=constrain", "category_id"=>2})
Item.create({"item_name"=>"Carhartt hoodie ", "stock_number"=>5, "price"=>0.118e3, "description"=>"Carhartt WIP chase hoodie in grey", "image_src"=>"https://images.asos-media.com/products/carhartt-wip-chase-hoodie-in-grey/203417782-1-grey?$n_640w$&wid=634&fit=constrain", "category_id"=>2})
Item.create({"item_name"=>"The North Face Glacier hoodie", "stock_number"=>5, "price"=>0.1333e3, "description"=>"The North Face Glacier 100 1/4 zip fleece in black", "image_src"=>"https://images.asos-media.com/products/the-north-face-glacier-100-1-4-zip-fleece-in-black/203213274-1-black?$n_640w$&wid=634&fit=constrain", "category_id"=>2})
Item.create({"item_name"=>"New Balance sweatshirt", "stock_number"=>5, "price"=>0.2222e3, "description"=>"New Balance unisex life in balance sweatshirt in grey", "image_src"=>"https://images.asos-media.com/products/new-balance-unisex-life-in-balance_sweatshirt-in-grey/201502654-2?$n_640w$&wid=634&fit=constrain", "category_id"=>2})
Item.create({"item_name"=>"Sixth hoodie", "stock_number"=>11, "price"=>0.12e3, "description"=>"Sixth June eagle hoodie in black", "image_src"=>"https://images.asos-media.com/products/sixth-june-eagle-hoodie-in-black/204026046-1-black?$n_640w$&wid=634&fit=constrain", "category_id"=>2})
Item.create({"item_name"=>"Lacoste Holiday hoodie", "stock_number"=>5, "price"=>0.6e2, "description"=>"Lacoste Holiday badge hoodie in green", "image_src"=>"https://images.asos-media.com/products/lacoste-holiday-badge-hoodie-in-green/203306833-1-green?$n_640w$&wid=634&fit=constrain", "category_id"=>2})
Item.create({"item_name"=>"Tommy Jeans sweatshirt", "stock_number"=>5, "price"=>0.9e2, "description"=>"Tommy Jeans cotton signature logo half zip sweatshirt in black", "image_src"=>"https://images.asos-media.com/products/tommy-jeans-cotton-signature-logo-half-zip-sweatshirt-in-black/204038831-1-black?$n_640w$&wid=634&fit=constrain", "category_id"=>2})
Item.create({"item_name"=>"New Balance hoodie", "stock_number"=>5, "price"=>0.1e3, "description"=>"New Balance Legends hoodie in oatmeal", "image_src"=>"https://images.asos-media.com/products/new-balance-legends-hoodie-in-oatmeal/203697169-1-oatmeal?$n_640w$&wid=634&fit=constrain", "category_id"=>2})
Item.create({"item_name"=>"Versace sweatshirt", "stock_number"=>5, "price"=>0.35e3, "description"=>"Versace Jeans Couture rubberised emblem sweatshirt in black", "image_src"=>"https://images.asos-media.com/products/versace-jeans-couture-rubberised-emblem-sweatshirt-in-black/203379631-2?$n_960w$&wid=952&fit=constrain", "category_id"=>2})
Item.create({"item_name"=>"CORSAIR VIRTUOSO Gaming Headset ", "stock_number"=>5, "price"=>0.28999e3, "description"=>"CORSAIR VIRTUOSO RGB WIRELESS XT High-Fidelity Gaming Headset with Bluetooth and Spatial Audio - Works with Mac, PC, PS5, PS4, Xbox series X/S - Slate", "image_src"=>"https://m.media-amazon.com/images/I/71xK0oPvBLL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>3})
Item.create({"item_name"=>"SteelSeries Apex Gaming Keyboard", "stock_number"=>5, "price"=>0.7999e2, "description"=>"SteelSeries Apex 3 TKL RGB Gaming Keyboard – Tenkeyless Compact Form Factor - 8-Zone RGB Illumination – IP32 Water & Dust Resistant – Whisper Quiet Gaming Switch – Gaming Grade Anti-Ghosting", "image_src"=>"https://m.media-amazon.com/images/I/715XLKbQnFL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>3})
Item.create({"item_name"=>"Redragon M602 RGB Wired Gaming Mouse", "stock_number"=>5, "price"=>0.4999e2, "description"=>"Redragon M602 RGB Wired Gaming Mouse RGB Spectrum Backlit Ergonomic Mouse Griffin Programmable with 7 Backlight Modes up to 7200 DPI for Windows PC Gamers (Black)", "image_src"=>"https://m.media-amazon.com/images/I/61EjNRNwaZL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>3})
Item.create({"item_name"=>"HEADMALL Gaming Chair", "stock_number"=>5, "price"=>0.17e3, "description"=>"HEADMALL Gaming Chair with Footrest, Gamer Chair with Lumbar Support and Headrest Height Adjustable Office Chair with 360°-Swivel Seat - Black & White", "image_src"=>"https://m.media-amazon.com/images/I/61Ze6xUv+FL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>3})
Item.create({"item_name"=>"Xbox Series X", "stock_number"=>5, "price"=>0.577e3, "description"=>"Xbox Series X 1TB Black", "image_src"=>"https://m.media-amazon.com/images/I/51hV2qz3WuL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>3})
Item.create({"item_name"=>"Microsoft Xbox One", "stock_number"=>5, "price"=>0.4e3, "description"=>"Microsoft Xbox One X 1TB Console with Wireless Controller: Enhanced, HDR, Native 4K, Ultra HD (2017 Model)", "image_src"=>"https://m.media-amazon.com/images/I/61O60jiF30L._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>3})
Item.create({"item_name"=>"DreamController Original Xbox Wireless Controller", "stock_number"=>5, "price"=>0.15099e3, "description"=>"DreamController Original Xbox Wireless Controller Special Edition Customized Compatible with Xbox One S/X, Xbox Series X/S & Windows 10 Made with Advanced HydroDip Print Technology", "image_src"=>"https://m.media-amazon.com/images/I/71fGDp8M4KL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>3})
Item.create({"item_name"=>"Playstation Sony 4", "stock_number"=>5, "price"=>0.5e3, "description"=>"Playstation Sony 4, 500GB Slim System [CUH-2215AB01], Black", "image_src"=>"https://m.media-amazon.com/images/I/51tbWVPtckL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>3})
Item.create({"item_name"=>"Nintendo Switch", "stock_number"=>5, "price"=>0.48e3, "description"=>"Nintendo Switch with Neon Blue and Neon Red Joy‑Com", "image_src"=>"https://m.media-amazon.com/images/I/51yJ+OqktYL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>3})
Item.create({"item_name"=>"PlayStation Wireless Controller", "stock_number"=>5, "price"=>0.12099e3, "description"=>"PlayStation DualSense Wireless Controller – Midnight Black", "image_src"=>"https://m.media-amazon.com/images/I/61O9tWR6WDS._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>3})
Item.create({"item_name"=>"Lenovo IdeaPad", "stock_number"=>5, "price"=>0.59e3, "description"=>"Lenovo IdeaPad Gaming Chromebook - 2022 - Chromebook Gaming Laptop", "image_src"=>"https://m.media-amazon.com/images/I/61JpPnjxniL._AC_UL640_QL65_.jpg", "category_id"=>4})
Item.create({"item_name"=>"Acer Nitro 5 ", "stock_number"=>5, "price"=>0.779e3, "description"=>"Acer Nitro 5 AN515-55-53E5 Gaming Laptop | Intel Core i5-10300H | NVIDIA GeForce RTX 3050 GPU | 15.6 FHD 144Hz IPS Display | 8GB DDR4 | 256GB NVMe SSD | Intel Wi-Fi 6 | Backlit Keyboard", "image_src"=>"https://m.media-amazon.com/images/I/81bc8mA3nKL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>4})
Item.create({"item_name"=>"ASUS ROG", "stock_number"=>5, "price"=>0.6e3, "description"=>"ASUS ROG Strix Scar 15 Gaming Laptop, 15.6” 240Hz IPS", "image_src"=>"https://m.media-amazon.com/images/I/71IA+MeLP2L._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>4})
Item.create({"item_name"=>"HP 2022 Stream 14 HD Laptop", "stock_number"=>5, "price"=>0.5e3, "description"=>"HP 2022 Stream 14 HD Laptop, Intel Celeron N4120 Processor, 4GB RAM, 64GB eMMC Storage, HD Webcam, HDMI, Wi-Fi, Bluetooth, Rose Gold, Office 365 1-Year, Windows 11 S", "image_src"=>"https://m.media-amazon.com/images/I/718iqv65iFL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>4})
Item.create({"item_name"=>"Microsoft Surface Laptop", "stock_number"=>5, "price"=>0.3e3, "description"=>"Microsoft Surface Laptop Go 12.4 Touchscreen, Intel Core i5-1035G1 Processor, 4 GB RAM, 128GB PCIe SSD, Up to 13Hr Battery Life, WiFi, Webcam, Windows 11 Pro, Platinum Silver", "image_src"=>"https://m.media-amazon.com/images/I/71OExaOAkbL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>4})
Item.create({"item_name"=>"Apple 2023 MacBook Pro ", "stock_number"=>5, "price"=>0.3e4, "description"=>"Apple 2023 MacBook Pro Laptop M2 Pro chip with 12‑core CPU and 19‑core GPU: 16.2-inch Liquid Retina XDR Display, 16GB Unified Memory, 1TB SSD Storage", "image_src"=>"https://m.media-amazon.com/images/I/61fd2oCrvyL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>4})
Item.create({"item_name"=>"Apple 2020 MacBook Air", "stock_number"=>5, "price"=>0.1e4, "description"=>"Apple 2020 MacBook Air Laptop M1 Chip, 13 Retina Display, 8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD Camera, Touch ID. Works with iPhone/iPad; Gold", "image_src"=>"https://m.media-amazon.com/images/I/71vFKBpKakL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>4})
Item.create({"item_name"=>"Apple 2021 MacBook Pro", "stock_number"=>5, "price"=>0.2e4, "description"=>"Apple 2021 MacBook Pro (16-inch, M1 Pro chip with 10‑core CPU and 16‑core GPU, 16GB RAM, 1TB SSD) - Silver", "image_src"=>"https://m.media-amazon.com/images/I/61Y30DpqRVL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>4})
Item.create({"item_name"=>"2015 Apple MacBook Pro", "stock_number"=>5, "price"=>0.5e3, "description"=>"2015 Apple MacBook Pro with intel I7 (15-inch, 16GB RAM, 256GB SSD)- Silver", "image_src"=>"https://m.media-amazon.com/images/I/71PHKPH4NQL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>4})
Item.create({"item_name"=>"Dell XPS", "stock_number"=>5, "price"=>0.15e4, "description"=>"Dell XPS 13 9310 Touchscreen 13.4 inch FHD Thin and Light Laptop - Intel Core i7-1185G7, 16GB LPDDR4x RAM, 512GB SSD, Intel Iris Xe Graphics, Windows 10 Pro - Silver", "image_src"=>"https://m.media-amazon.com/images/I/81aI36Tc0XS._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>4})
Item.create({"item_name"=>"Puma trainers", "stock_number"=>5, "price"=>0.12099e3, "description"=>"Puma RBD Game Low trainers in khaki", "image_src"=>"https://images.asos-media.com/products/puma-rbd-game-low-trainers-in-khaki/203898064-2?$n_640w$&wid=634&fit=constrain", "category_id"=>5})
Item.create({"item_name"=>"Adidas trainers", "stock_number"=>5, "price"=>0.9e2, "description"=>"adidas Originals Ozweego trainers in crystal white", "image_src"=>"https://images.asos-media.com/products/adidas-originals-ozweego-trainers-in-crystal-white/203414475-2?$n_640w$&wid=634&fit=constrain", "category_id"=>5})
Item.create({"item_name"=>"New Balance trainers", "stock_number"=>5, "price"=>0.12099e3, "description"=>"New Balance 5740 trainers in grey multi", "image_src"=>"https://images.asos-media.com/products/new-balance-5740-trainers-in-grey-multi/203629186-2?$n_640w$&wid=634&fit=constrain", "category_id"=>5})
Item.create({"item_name"=>"Noak made loafers", "stock_number"=>5, "price"=>0.32099e3, "description"=>"Noak made in Portugal loafers in navy suede", "image_src"=>"https://images.asos-media.com/products/noak-made-in-portugal-loafers-in-navy-suede/203671854-2?$n_640w$&wid=634&fit=constrain", "category_id"=>5})
Item.create({"item_name"=>"Office penny loafers", "stock_number"=>5, "price"=>0.19999e3, "description"=>"Office penny loafers in brown leather", "image_src"=>"https://images.asos-media.com/products/office-penny-loafers-in-brown-leather/203079895-2?$n_640w$&wid=634&fit=constrain", "category_id"=>5})
Item.create({"item_name"=>"Tommy Hilfiger shoe", "stock_number"=>5, "price"=>0.19099e3, "description"=>"Tommy Hilfiger leather boat shoe in brown", "image_src"=>"https://images.asos-media.com/products/tommy-hilfiger-leather-boat-shoe-in-brown/204312504-2?$n_640w$&wid=634&fit=constrain", "category_id"=>5})
Item.create({"item_name"=>"Fred Perry loafer", "stock_number"=>5, "price"=>0.22099e3, "description"=>"Fred Perry GH Bass leather penny loafer shoe in black", "image_src"=>"https://images.asos-media.com/products/fred-perry-gh-bass-leather-penny-loafer-shoe-in-black/203985466-2?$n_640w$&wid=634&fit=constrain", "category_id"=>5})
Item.create({"item_name"=>"Walk London loafers", "stock_number"=>5, "price"=>0.10099e3, "description"=>"Walk London Terry Snaffle loafers in black pebble leather", "image_src"=>"https://images.asos-media.com/products/walk-london-terry-snaffle-loafers-in-black-pebble-leather/201506732-2?$n_640w$&wid=634&fit=constrain", "category_id"=>5})
Item.create({"item_name"=>"River Island boots", "stock_number"=>5, "price"=>0.9099e2, "description"=>"River Island chunky sole chelsea boots in black", "image_src"=>"https://images.asos-media.com/products/river-island-chunky-sole-chelsea-boots-in-black/204228024-2?$n_640w$&wid=634&fit=constrain", "category_id"=>5})
Item.create({"item_name"=>"Clarks Originals boots", "stock_number"=>5, "price"=>0.14099e3, "description"=>"Clarks Originals Wallabee boots in black suede", "image_src"=>"https://images.asos-media.com/products/clarks-originals-wallabee-boots-in-black-suede/204274332-2?$n_640w$&wid=634&fit=constrain", "category_id"=>5})
Item.create({"item_name"=>"Samsung Galaxy S10,", "stock_number"=>5, "price"=>0.4e3, "description"=>"Samsung Galaxy S10, 128GB, Prism Blue", "image_src"=>"https://m.media-amazon.com/images/I/61dldTSpV-L._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>6})
Item.create({"item_name"=>"Apple iPhone 12", "stock_number"=>5, "price"=>0.1e4, "description"=>"Apple iPhone 12, 64GB, Black", "image_src"=>"https://m.media-amazon.com/images/I/41bIlvE1rdL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>6})
Item.create({"item_name"=>"Google Pixel 4", "stock_number"=>5, "price"=>0.9e3, "description"=>"Google Pixel 4 - Clearly White 128GB", "image_src"=>"https://m.media-amazon.com/images/I/71Ap5hKZoJL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>6})
Item.create({"item_name"=>"Samsung Galaxy A71", "stock_number"=>5, "price"=>0.2e3, "description"=>"Samsung Galaxy A71 5G LTE Verizon | 6.7 AMOLED Screen |128GB of Storage | Long Lasting Battery | Single SIM", "image_src"=>"https://m.media-amazon.com/images/I/81xdj2JuAgL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>6})
Item.create({"item_name"=>"SAMSUNG Galaxy S20", "stock_number"=>5, "price"=>0.6e3, "description"=>"SAMSUNG Galaxy S20 FE 5G Cell Phone, Factory Unlocked Android Smartphone, 128GB, Pro Grade Camera", "image_src"=>"https://m.media-amazon.com/images/I/71RxOftVoQL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>6})
Item.create({"item_name"=>"SAMSUNG Galaxy S23", "stock_number"=>5, "price"=>0.1e4, "description"=>"SAMSUNG Galaxy S23 Cell Phone,", "image_src"=>"https://m.media-amazon.com/images/I/716nc1e8OdL._AC_UL640_QL65_.jpg", "category_id"=>6})
Item.create({"item_name"=>"SAMSUNG Galaxy Z Fold", "stock_number"=>5, "price"=>0.1e4, "description"=>"SAMSUNG Galaxy Z Fold 4 Cell Phone", "image_src"=>"https://m.media-amazon.com/images/I/71Zzyu-Ol4L._AC_UL640_QL65_.jpg", "category_id"=>6})
Item.create({"item_name"=>"Apple iPhone 12 Pro Max", "stock_number"=>5, "price"=>0.15e4, "description"=>"Apple iPhone 12 Pro Max 5G, US Version, 128GB, Graphite", "image_src"=>"https://m.media-amazon.com/images/I/61I39htrBbL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>6})
Item.create({"item_name"=>"Apple 2022 10.9-inch iPad", "stock_number"=>5, "price"=>0.2e4, "description"=>"Apple 2022 10.9-inch iPad (Wi-Fi, 64GB) - Silver", "image_src"=>"https://m.media-amazon.com/images/I/61goypdjAYL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>6})
Item.create({"item_name"=>"Apple 2022 iPad Air", "stock_number"=>5, "price"=>0.15e4, "description"=>"Apple 2022 iPad Air (10.9-inch, Wi-Fi, 64GB) - Space Gray (5th Generation)Apple 2022 iPad Air (10.9-inch, Wi-Fi, 64GB) - Space Gray", "image_src"=>"https://m.media-amazon.com/images/I/61XZQXFQeVL._AC_UY436_FMwebp_QL65_.jpg", "category_id"=>6})
Item.create({"item_name"=>"Smile Hero Teeth Whitening Strips", "stock_number"=>5, "price"=>0.45e2, "description"=>"Smile Hero Teeth Whitening Strips", "image_src"=>"https://m.media-amazon.com/images/I/51TZ7K7fk3L._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>7})
Item.create({"item_name"=>"Bliss Skin Drops Fast Action Formula ", "stock_number"=>5, "price"=>0.3e2, "description"=>"Bliss Skin Drops Fast Action Formula (Single, 30ml)-C", "image_src"=>"https://m.media-amazon.com/images/I/61+bqxaFTYL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>7})
Item.create({"item_name"=>"Bad Breath Treatment for Adults", "stock_number"=>5, "price"=>0.25e2, "description"=>"Bad Breath Treatment for Adults, Bad Breath Eliminating Serum, Natural Breath Freshening Drops, Lasts up to 8 Hours, Minty Taste, 30ml", "image_src"=>"https://m.media-amazon.com/images/I/71OBZ6IzWjL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>7})
Item.create({"item_name"=>"Dove Body Wash ", "stock_number"=>5, "price"=>0.15e2, "description"=>"Dove Body Wash with Pump with Skin Natural Nourishers for Instantly Soft Skin and Lasting Nourishment Deep Moisture Cleanser That Effectively Washes Away Bacteria While Nourishing Your Skin 30.6 oz", "image_src"=>"https://m.media-amazon.com/images/I/61cCQEwj2hL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>7})
Item.create({"item_name"=>"MasterMedi Tongue Scraper", "stock_number"=>5, "price"=>0.2e2, "description"=>"MasterMedi Tongue Scraper with Travel Case (2 Pack), Bad Breath Treatment Tongue Scraper for Adults, Medical Grade 100% Stainless Steel for Oral Care, Easy to Use Tongue Cleaner for Hygiene", "image_src"=>"https://m.media-amazon.com/images/I/71ljjF6RA1L._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>7})
Item.create({"item_name"=>"Colgate Extra Clean Toothbrush", "stock_number"=>5, "price"=>0.1e2, "description"=>"Colgate Extra Clean Toothbrush, Soft Toothbrush for Adults, 6 Count (Pack of 1)", "image_src"=>"https://m.media-amazon.com/images/I/81l2bK1kAcL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>7})
Item.create({"item_name"=>"Water Dental Flosser", "stock_number"=>5, "price"=>0.5e1, "description"=>"Water Dental Flosser Cordless for Teeth - Nicwell 4 Modes Dental Oral Irrigator, Portable and Rechargeable IPX7 Waterproof Powerful Battery Life Water Teeth Cleaner Picks for Home Travel", "image_src"=>"https://m.media-amazon.com/images/I/71eU7ZuVXYL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>7})
Item.create({"item_name"=>"Philips Sonicare Toothbrush", "stock_number"=>5, "price"=>0.1e2, "description"=>"Philips Sonicare Genuine C2 Optimal Plaque Control Toothbrush Heads, 3 Brush Heads, White, HX9023/65", "image_src"=>"https://m.media-amazon.com/images/I/71YsyR9MpGL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>7})
Item.create({"item_name"=>"Colgate Toothpaste", "stock_number"=>5, "price"=>0.1e2, "description"=>"Colgate Optic White Advanced Teeth Whitening Toothpaste, 2% Hydrogen Peroxide Toothpaste, Sparkling White, 3.2 Oz, 3 Pack", "image_src"=>"https://m.media-amazon.com/images/I/61NUH8C3FOL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>7})
Item.create({"item_name"=>"Ear and Nose Hair Trimmer Clipper", "stock_number"=>5, "price"=>0.2e2, "description"=>"Ear and Nose Hair Trimmer Clipper - 2022 Professional Painless Eyebrow & Facial Hair Trimmer for Men Women, Battery-Operated Trimmer with IPX7 Waterproof, Dual Edge Blades for Easy Cleansing Black", "image_src"=>"https://m.media-amazon.com/images/I/61ox1Eh9FaL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>7})
Item.create({"item_name"=>"Bodyprox Ankle Support Brace, Breathable Neoprene Sleeve, Adjustable Wrap!", "stock_number"=>5, "price"=>0.15099e3, "description"=>"Bodyprox Ankle Support Brace, Breathable Neoprene Sleeve, Adjustable Wrap!", "image_src"=>"https://m.media-amazon.com/images/I/81mEoQ2pm-L._AC_UL640_QL65_.jpg", "category_id"=>8})
Item.create({"item_name"=>"Dickies Men's Dri-tech Moisture Control Crew Socks Multipack", "stock_number"=>5, "price"=>0.32099e3, "description"=>"Dickies Men's Dri-tech Moisture Control Crew Socks Multipack", "image_src"=>"https://m.media-amazon.com/images/I/9171uzu8PEL._AC_UL640_QL65_.jpg", "category_id"=>8})
Item.create({"item_name"=>"Amazon Basics High-Density Round Foam Roller for Exercise, Massage, Muscle Recovery - 12, 18, 24, 36", "stock_number"=>5, "price"=>0.42099e3, "description"=>"Amazon Basics High-Density Round Foam Roller for Exercise, Massage, Muscle Recovery - 12, 18, 24, 36", "image_src"=>"https://m.media-amazon.com/images/I/91yuQpw++mL._AC_UL640_QL65_.jpg", "category_id"=>8})
Item.create({"item_name"=>"AQUAFIT 1 Gallon Water Bottle With Times To Drink - 128 oz Water Bottle With Straw - Motivational Water Bottle - Large Water Bottle - Sports Water Bottle With Time Marker - Gym Water Jug 1 Gallon", "stock_number"=>5, "price"=>0.32099e3, "description"=>"AQUAFIT 1 Gallon Water Bottle With Times To Drink - 128 oz Water Bottle With Straw - Motivational Water Bottle - Large Water Bottle - Sports Water Bottle With Time Marker - Gym Water Jug 1 Gallon", "image_src"=>"https://m.media-amazon.com/images/I/7189r6Q+5-L._AC_UL640_QL65_.jpg", "category_id"=>8})
Item.create({"item_name"=>"ComfyBrace Night Wrist Sleep Support Brace - F.D.A.- Fits Both Hands - Cushioned to Help With Carpal Tunnel and Relieve and Treat Wrist Pain , Adjustable, Fitted", "stock_number"=>5, "price"=>0.12099e3, "description"=>"ComfyBrace Night Wrist Sleep Support Brace - F.D.A.- Fits Both Hands - Cushioned to Help With Carpal Tunnel and Relieve and Treat Wrist Pain , Adjustable, Fitted", "image_src"=>"https://m.media-amazon.com/images/I/71tDWcdwKXL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>8})
Item.create({"item_name"=>"Bodyprox Elbow Brace 2 Pack for Tennis & Golfer's Elbow Pain Relief", "stock_number"=>5, "price"=>0.20099e3, "description"=>"Bodyprox Elbow Brace 2 Pack for Tennis & Golfer's Elbow Pain Relief", "image_src"=>"https://m.media-amazon.com/images/I/61JpKBcZU5L._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>8})
Item.create({"item_name"=>"Fitbit Inspire 3 Health & Fitness Tracker with Stress Management, Workout Intensity, Sleep Tracking, 24/7 Heart Rate and more, Midnight Zen/Black One Size (S & L Bands Included)", "stock_number"=>5, "price"=>0.22099e3, "description"=>"Fitbit Inspire 3 Health & Fitness Tracker with Stress Management, Workout Intensity, Sleep Tracking, 24/7 Heart Rate and more, Midnight Zen/Black One Size (S & L Bands Included)", "image_src"=>"https://m.media-amazon.com/images/I/61gFrSlmofL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>8})
Item.create({"item_name"=>"Amazon Basics Neoprene Workout Dumbbell", "stock_number"=>5, "price"=>0.15099e3, "description"=>"Amazon Basics Neoprene Workout Dumbbell", "image_src"=>"https://m.media-amazon.com/images/I/61wtJKb5BIL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>8})
Item.create({"item_name"=>"Franklin Sports Outdoor Pickleballs - X-40 Pickleball Balls - USA Pickleball (USAPA) Approved - Official US Open Ball - 3, 12, and 100 Bulk Packs of Pickleballs", "stock_number"=>5, "price"=>0.50099e3, "description"=>"Franklin Sports Outdoor Pickleballs - X-40 Pickleball Balls - USA Pickleball (USAPA) Approved - Official US Open Ball - 3, 12, and 100 Bulk Packs of Pickleballs", "image_src"=>"https://m.media-amazon.com/images/I/71Jp44o4rfL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>8})
Item.create({"item_name"=>"SPECIAL MADE Collapsible Water Bottles Leakproof Valve Reusable BPA Free Silicone Foldable Travel Water Bottle for Gym Camping Hiking Travel Sports Lightweight Durable 20oz Dark Green", "stock_number"=>5, "price"=>0.45099e3, "description"=>"SPECIAL MADE Collapsible Water Bottles Leakproof Valve Reusable BPA Free Silicone Foldable Travel Water Bottle for Gym Camping Hiking Travel Sports Lightweight Durable 20oz Dark Green", "image_src"=>"https://m.media-amazon.com/images/I/51EUDKOg1qS._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>8})
Item.create({"item_name"=>"Apple AirPods", "stock_number"=>5, "price"=>0.3e3, "description"=>"Apple AirPods (2nd Generation) Wireless Earbuds with Lightning Charging Case Included. Over 24 Hours of Battery Life, Effortless Setup. Bluetooth Headphones for iPhone", "image_src"=>"https://m.media-amazon.com/images/I/7120GgUKj3L._AC_UL640_QL65_.jpg", "category_id"=>9})
Item.create({"item_name"=>"Apple Pencil", "stock_number"=>5, "price"=>0.12099e3, "description"=>"Apple Pencil (2nd Generation)", "image_src"=>"https://m.media-amazon.com/images/I/21SPDoiRuGL._AC_UL640_QL65_.jpg", "category_id"=>9})
Item.create({"item_name"=>"Amazon B Alkaline Batteries, 10-Year Shelf Life, Easy to Open Value Pack", "stock_number"=>5, "price"=>0.2099e2, "description"=>"Amazon Basics 48 Pack AA High-Performance Alkaline Batteries, 10-Year Shelf Life, Easy to Open Value Pack", "image_src"=>"https://m.media-amazon.com/images/I/81ZnAYiX5sL._AC_UL640_QL65_.jpg", "category_id"=>9})
Item.create({"item_name"=>"Apple Power Adapter ", "stock_number"=>5, "price"=>0.10099e3, "description"=>"Apple 20W USB-C Power Adapter - iPhone Charger with Fast Charging Capability, Type C Wall Charger", "image_src"=>"https://m.media-amazon.com/images/I/41iWogJnZQL._AC_UL640_QL65_.jpg", "category_id"=>9})
Item.create({"item_name"=>"Seagat External Hard Drive", "stock_number"=>5, "price"=>0.2e3, "description"=>"Seagate Portable 2TB External Hard Drive HDD — USB 3.0 for PC, Mac, PlayStation, & Xbox -1-Year Rescue Service (STGX2000400)", "image_src"=>"https://m.media-amazon.com/images/I/81tjLksKixL._AC_UL640_QL65_.jpg", "category_id"=>9})
Item.create({"item_name"=>"Energizer AA Batteries", "stock_number"=>5, "price"=>0.15099e3, "description"=>"Energizer AA Batteries, Double A Long-Lasting Alkaline Power Batteries, 32 Count (Pack of 1)", "image_src"=>"https://m.media-amazon.com/images/I/91-R5huHLnL._AC_UL640_QL65_.jpg", "category_id"=>9})
Item.create({"item_name"=>"Ailun Glass Screen Protector", "stock_number"=>5, "price"=>0.22099e3, "description"=>"Ailun Glass Screen Protector Compatible for iPhone 11/XR,6.1 Inch 3 Pack Tempered Glass", "image_src"=>"https://m.media-amazon.com/images/I/81MZ5D1wHpL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>9})
Item.create({"item_name"=>"Logitech C920x HD Pro Webcam", "stock_number"=>5, "price"=>0.6e3, "description"=>"Logitech C920x HD Pro Webcam, Full HD 1080p/30fps Video Calling, Clear Stereo Audio, HD Light Correction, Works with Skype, Zoom, FaceTime, Hangouts, PC/Mac/Laptop/Macbook/Tablet - Black", "image_src"=>"https://m.media-amazon.com/images/I/71iNwni9TsL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>9})
Item.create({"item_name"=>"Soundcore Anker Life Headphones", "stock_number"=>5, "price"=>0.15e3, "description"=>"Soundcore Anker Life Q20 Hybrid Active Noise Cancelling Headphones, Wireless Over Ear Bluetooth Headphones, 40H Playtime, Hi-Res Audio, Deep Bass, Memory Foam Ear Cups, for Travel, Home Office", "image_src"=>"https://m.media-amazon.com/images/I/61kV3qWxT-L._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>9})
Item.create({"item_name"=>"SanDisk Flash Drive", "stock_number"=>5, "price"=>0.2e2, "description"=>"SanDisk 128GB Ultra Flair USB 3.0 Flash Drive - SDCZ73-128G-G46", "image_src"=>"https://m.media-amazon.com/images/I/41IhYxnGIvL._AC_UL640_FMwebp_QL65_.jpg", "category_id"=>9})
Item.create({"item_name"=>"The Courage to Be Free: Florida's Blueprint for America's Revival", "stock_number"=>5, "price"=>0.2e2, "description"=>"The Courage to Be Free: Florida's Blueprint for America's Revival", "image_src"=>"https://images-na.ssl-images-amazon.com/images/I/81QOUISS7VL._AC_UL381_SR381,381_.jpg", "category_id"=>10})
Item.create({"item_name"=>"The Boy, the Mole, the Fox and the Horse", "stock_number"=>5, "price"=>0.3e2, "description"=>"The Boy, the Mole, the Fox and the Horse", "image_src"=>"https://images-na.ssl-images-amazon.com/images/I/71eJk7GtUOL._AC_UL381_SR381,381_.jpg", "category_id"=>10})
Item.create({"item_name"=>"Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones", "stock_number"=>5, "price"=>0.4e2, "description"=>"Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones", "image_src"=>"https://images-na.ssl-images-amazon.com/images/I/81bGKUa1e0L._AC_UL381_SR381,381_.jpg", "category_id"=>10})
Item.create({"item_name"=>"Lessons in Chemistry: A Novel", "stock_number"=>5, "price"=>0.5e2, "description"=>"Lessons in Chemistry: A Novel", "image_src"=>"https://images-na.ssl-images-amazon.com/images/I/71yNgTMEcpL._AC_UL381_SR381,381_.jpg", "category_id"=>10})
Item.create({"item_name"=>"The 48 Laws of Power", "stock_number"=>5, "price"=>0.6e2, "description"=>"The 48 Laws of Power", "image_src"=>"https://images-na.ssl-images-amazon.com/images/I/71aG+xDKSYL._AC_UL127_SR127,127_.jpg", "category_id"=>10})
Item.create({"item_name"=>"The Body Keeps the Score: Brain, Mind, and Body in the Healing of Trauma", "stock_number"=>5, "price"=>0.7e2, "description"=>"The Body Keeps the Score: Brain, Mind, and Body in the Healing of Trauma", "image_src"=>"https://images-na.ssl-images-amazon.com/images/I/61NdJMwAThS._AC_UL127_SR127,127_.jpg", "category_id"=>10})
Item.create({"item_name"=>"The Housemaid", "stock_number"=>5, "price"=>0.8e2, "description"=>"The Housemaid", "image_src"=>"https://images-na.ssl-images-amazon.com/images/I/81PDk822yzL._AC_UL127_SR127,127_.jpg", "category_id"=>10})
Item.create({"item_name"=>"Ugly Love: A Novel", "stock_number"=>5, "price"=>0.9e2, "description"=>"Ugly Love: A Novel", "image_src"=>"https://images-na.ssl-images-amazon.com/images/I/71E8VNPC1dL._AC_UL127_SR127,127_.jpg", "category_id"=>10})
Item.create({"item_name"=>"The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life", "stock_number"=>5, "price"=>0.1e3, "description"=>"The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life", "image_src"=>"https://images-na.ssl-images-amazon.com/images/I/71QKQ9mwV7L._AC_UL127_SR127,127_.jpg", "category_id"=>10})
Item.create({"item_name"=>"Drama Free: A Guide to Managing Unhealthy Family Relationships", "stock_number"=>5, "price"=>0.95e2, "description"=>"Drama Free: A Guide to Managing Unhealthy Family Relationships", "image_src"=>"https://images-na.ssl-images-amazon.com/images/I/91XAx9B6oiL._AC_UL127_SR127,127_.jpg", "category_id"=>10})