//
//  InventoryItems.swift
//  
//
//  Created by Chinmay Nayak on 26/02/22.
//

import Foundation
import GildedRose

protocol InventoryItems {
    func getAllItems() -> [Item]
}


class InventoryFactoryHardCoded: InventoryItems {
    func getAllItems() -> [Item] {
        let items = [
            Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 20),
            Item(name: "Aged Brie", sellIn: 2, quality: 0),
            Item(name: "Elixir of the Mongoose", sellIn: 5, quality: 7),
            Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 80),
            Item(name: "Sulfuras, Hand of Ragnaros", sellIn: -1, quality: 80),
            Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 15, quality: 20),
            Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 49),
            Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 49),
            Item(name: "Conjured Mana Cake", sellIn: 3, quality: 6)]
        
        return items
    }
}

class InventoryFactoryJSONResponse: InventoryItems {
    func getAllItems() -> [Item] {
        let items = [
            Item(name: "Dexterity Vest", sellIn: 10, quality: 20),
            Item(name: "Aged Brie", sellIn: 2, quality: 10),
            Item(name: "Aged Brie", sellIn: 5, quality: 30),
            Item(name: "Elixir of the Mongoose", sellIn: 5, quality: 7),
            Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 80),
            Item(name: "Sulfuras, Hand of Ragnaros", sellIn: -1, quality: 80),
            Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 15, quality: 20),
            Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 7, quality: 35),
            Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 2, quality: 30),
            Item(name: "Conjured Mana Cake", sellIn: 3, quality: 20)]
        
        return items
    }
}
