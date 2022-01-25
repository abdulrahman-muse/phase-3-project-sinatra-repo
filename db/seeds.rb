puts "🌱 Seeding spices..."

blue = Color.create(name: 'Blue')
red = Color.create(name: "Red")
green = Color.create(name: "Green")
purple = Color.create(name: "Purple")
pink = Color.create(name: "Pink")

Shade.create(hex_code: "#0F1CA5", color_id: blue.id)
Shade.create(hex_code: "#0A1DDC", color_id: blue.id)
Shade.create(hex_code: "#3647F1", color_id: blue.id)
Shade.create(hex_code: "#BE090C", color_id: red.id)
Shade.create(hex_code: "#E60D10", color_id: red.id)
Shade.create(hex_code: "#F23235", color_id: red.id)
Shade.create(hex_code: "#06BB2C", color_id: green.id)
Shade.create(hex_code: "#08E737", color_id: green.id)
Shade.create(hex_code: "#32F35B", color_id: green.id)
Shade.create(hex_code: "#540ABE", color_id: purple.id)
Shade.create(hex_code: "#6C14ED", color_id: purple.id)
Shade.create(hex_code: "#8436F5", color_id: purple.id)
Shade.create(hex_code: "#B910AF", color_id: pink.id)
Shade.create(hex_code: "#E11BD5", color_id: pink.id)
Shade.create(hex_code: "#F23AE7", color_id: pink.id)

puts "✅ Done seeding!"
