import GildedRose

//let app = GildedRose(items: items);
//let newItems = InventoryFactoryJSONResponse().getAllItems()
let newItems = InventoryFactoryHardCoded().getAllItems()
let app = GildedRose(items: newItems);

var days = 2;
if (CommandLine.argc > 1) {
    days = Int(CommandLine.arguments[1])! + 1
}

for i in 0..<days {
    print("-------- day \(i) --------");
    print("name, sellIn, quality");
    for item in newItems {
        print(item);
    }
    print("");
    app.updateQuality();
}
