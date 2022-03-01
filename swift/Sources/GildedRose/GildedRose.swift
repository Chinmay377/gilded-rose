
public class GildedRose {
    var items: [Item]
    
    public required init(items:[Item]) {
        self.items = items
    }
    
    public func updateQuality() {
        
        items.forEach { item in
            switch item.category {
            case .agedBrie:
                calculateDateAndQualityForAgedBrie(item)
            case .backStage:
                calculateDateAndQualityForBackstage(item)
            case .sulfurace:
                break
            case .conjured:
                calculateDateAndQualityForConjured(item)
            case .general:
                calculateDateAndQualityForGenaral(item)
            }
        }
        
        
        func calculateDateAndQualityForAgedBrie(_ item: Item) {
            item.sellIn -= 1
            item.quality += 1
            if item.quality > Constants.maxQuality.rawValue { // Have to make the qulaity 50 all the time if more than 50
                item.quality = Constants.maxQuality.rawValue
            }
        }
        
        func calculateDateAndQualityForBackstage(_ item: Item) {
            item.sellIn -= 1
            if item.sellIn <= 10 && item.sellIn > 5 { // Quality increases by 2 when there are 10 days or less
                item.quality += 2
            } else if item.sellIn <= 5 && item.sellIn >= 0 { // Quality increases by 3 when there are 5 days or less
                item.quality += 3
            } else if item.sellIn < 0 { // Quality drops to 0 after the concert
                item.quality = 0
                return
            } else {
                item.quality += 1
            }
                
            if item.quality > Constants.maxQuality.rawValue { // Have to make the quality 50 all the time if more than 50
                item.quality = Constants.maxQuality.rawValue
            }
        }
                
        func calculateDateAndQualityForConjured(_ item: Item) {
            item.sellIn -= 1
            if item.sellIn <= 0 {
                // The quality has to be decreased twice as normal item
                item.quality -= 4
            } else {
                // Quality has to be decreased by twice as normal item
                item.quality -= 2
            }
            if item.quality < Constants.minQuality.rawValue { // Have to make the quality 0 all the time if less than 0
                item.quality = Constants.minQuality.rawValue
            }
        }
        
        func calculateDateAndQualityForGenaral(_ item: Item) {
            item.sellIn -= 1
            if item.sellIn <= 0 {
                // The quality has to be decreased twice
                item.quality -= 2
            } else {
                // Quality has to be decreased by 1
                item.quality -= 1
            }
            
            if item.quality < Constants.minQuality.rawValue { // Have to make the quality 0 all the time if less than 0
                item.quality = Constants.minQuality.rawValue
            }
        }
    }
}
