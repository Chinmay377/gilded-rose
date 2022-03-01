import Foundation

public class Item {
    var name: String
    var sellIn: Int
    var quality: Int

    public init(name: String, sellIn: Int, quality: Int) {
        self.name = name
        self.sellIn = sellIn
        self.quality = quality
    }
}

extension Item: CustomStringConvertible {
    public var description: String {
        return "\(name), \(sellIn), \(quality)"
    }
}

extension Item {
    public var category: Category {
        if self.name.contains("Aged Brie") {
            return .agedBrie
        }
        if self.name.contains("Backstage passes") {
            return .backStage
        }
        if self.name.contains("Sulfuras") {
            return .sulfurace
        }
        if self.name.contains("Conjured") {
            return .conjured
        }
        return .general
    }
}

// MARK: 
public enum Category {
    case agedBrie // "Aged Brie" actually increases in Quality the older it gets
    case backStage //"Backstage passes", like aged brie, increases in Quality as its SellIn value approaches
    case sulfurace // "Sulfuras", being a legendary item, never has to be sold or decreases in Quality
    case conjured // "Conjured" items degrade in Quality twice as fast as normal items
    case general // At the end of each day our system lowers both values for every item
}

public enum Constants: Int {
    case maxQuality = 50 // Quality max value
    case minQuality = 0 // Quality min value
}
