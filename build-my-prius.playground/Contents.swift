import Cocoa

/*
 Build an app that would allow your to select the model, color, packages, and accessories for a 2016 prius
 */

struct Prius {
    let colors = ["Electric Storm Blue", "Supersonic Red", "Wind Chill Pearl", "Classic Silver Metallic", "Magnetic Gray Metallic", "Midnight Black Mettalic", "Sea Glass Pearl"]
    let models = ["L Eco", "LE", "LE AWD-e", "XLE", "XLE AWD-e", "2020 Edition", "Limited"]
    let interior_accessories = ["Cargo Liner", "Cargo Tote", "Carpet Cargo Mat", "Coin Holder/Ashtray Cup", "Emergency Kit", "First Aid Kit w/PPE", "Security System", "Universal Tablet Holder"]
    let exterior_accessories = ["Aero Side Splitter", "Body Side Moldings", "Cargo Net-Envelope", "Door Edge Gaurds", "Illuminated Door Sills", "Paint Protection Film (Front Bumper)", "Paint Protection Film (Hood Fenders, Mirror, Backs & Door Cups)", "Rear Bumper Applique", "Rear Bumper Protector", "Removable Cross Bars"]
    let packages = ["Premium Convenience Package", "Technology Package", "Navigation Package"]
    
}

print("Which model would you like?")

for model:String in Prius().models{
    print(model)
}
    
print("Selected Model: " + Prius().models[2])


print("Which color would you like?")

for color:String in Prius().colors{
    print(color)
}
    

print("Selected color: " + Prius().colors[6])


print("Which interior accessories would you like?")

for interior:String in Prius().interior_accessories{
    print(interior)
}
    

print("Selected interior accessories: " + Prius().interior_accessories[6])

print("Which exterior accessories would you like?")

for exterior:String in Prius().exterior_accessories{
    print(exterior)
}
    

print("Selected exterior accessories: " + Prius().exterior_accessories[8])

print("Which package would you like?")

for package:String in Prius().packages{
    print(package)
}
    

print("Selected package: " + Prius().packages[1])

