import Foundation
import XCTest

@testable import GildedRose

class GildedRoseTests: XCTestCase {

    func testFoo() {
        let items = [Item(name: "Backstage passes to a concert", sellIn: 0, quality: 0)]
        let app = GildedRose(items: items);
        app.updateQuality();
        
        XCTAssertEqual("Backstage passes to a concert", app.items[0].name);
        XCTAssertEqual(app.items[0].category, .backStage);
    }
}
