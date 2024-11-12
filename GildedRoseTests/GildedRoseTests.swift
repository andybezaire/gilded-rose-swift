import Testing
@testable import GildedRose

@Suite(.tags(.normalItem)) struct NormalItems {
    @Test(.tags(.normalItem)) func updateQuantityWithNormalItem() {
        let input = [Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 20)]
        let expectedOutput = [Item(name: "+5 Dexterity Vest", sellIn: 9, quality: 19)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithMultipleNormalItems() {
        let input = [Item(name: "Wirt's Third Leg", sellIn: 30, quality: 1), Item(name: "Drakefire Amulet", sellIn: 5, quality: 5)]
        let expectedOutput = [Item(name: "Wirt's Third Leg", sellIn: 29, quality: 0), Item(name: "Drakefire Amulet", sellIn: 4, quality: 4)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithNormalItemOnSellDate() {
        let input = [Item(name: "Periapt of Vitality", sellIn: 0, quality: 7)]
        let expectedOutput = [Item(name: "Periapt of Vitality", sellIn: -1, quality: 5)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithNormalItemAfterSellDate() {
        let input = [Item(name: "Skull of Gul'dan", sellIn: -10, quality: 50)]
        let expectedOutput = [Item(name: "Skull of Gul'dan", sellIn: -11, quality: 48)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithNormalItemOfZeroQuality() {
        let input = [Item(name: "Khadgar's Whisker", sellIn: -10, quality: 0)]
        let expectedOutput = [Item(name: "Khadgar's Whisker", sellIn: -11, quality: 0)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }
}

@Suite(.tags(.agedBrie)) struct AgedBrie {
    @Test func updateQuantityWithAgedBrie() {
        let input = [Item(name: "Aged Brie", sellIn: 10, quality: 15)]
        let expectedOutput = [Item(name: "Aged Brie", sellIn: 9, quality: 16)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithAgedBrieAtMaxQuality() {
        let input = [Item(name: "Aged Brie", sellIn: 10, quality: 50)]
        let expectedOutput = [Item(name: "Aged Brie", sellIn: 9, quality: 50)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithAgedBrieOnSellDate() {
        let input = [Item(name: "Aged Brie", sellIn: 0, quality: 15)]
        let expectedOutput = [Item(name: "Aged Brie", sellIn: -1, quality: 17)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithAgedBrieOnSellDateNearMaxQuality() {
        let input = [Item(name: "Aged Brie", sellIn: 0, quality: 49)]
        let expectedOutput = [Item(name: "Aged Brie", sellIn: -1, quality: 50)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithAgedBrieOnSellDateAtMaxQuality() {
        let input = [Item(name: "Aged Brie", sellIn: 0, quality: 50)]
        let expectedOutput = [Item(name: "Aged Brie", sellIn: -1, quality: 50)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithAgedBrieAfterSellDate() {
        let input = [Item(name: "Aged Brie", sellIn: -10, quality: 15)]
        let expectedOutput = [Item(name: "Aged Brie", sellIn: -11, quality: 17)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithAgedBrieAfterSellDateNearMaxQuality() {
        let input = [Item(name: "Aged Brie", sellIn: -10, quality: 49)]
        let expectedOutput = [Item(name: "Aged Brie", sellIn: -11, quality: 50)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithAgedBrieAfterSellDateAtMaxQuality() {
        let input = [Item(name: "Aged Brie", sellIn: -10, quality: 50)]
        let expectedOutput = [Item(name: "Aged Brie", sellIn: -11, quality: 50)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }
}

@Suite(.tags(.sulfura)) struct Sulfuras {
    @Test func updateQuantityWithSulfuras() {
        let input = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 10, quality: 80)]
        let expectedOutput = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 10, quality: 80)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithSulfurasOnSellDate() {
        let input = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 80)]
        let expectedOutput = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 80)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithSulfurasAfterSellDate() {
        let input = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: -10, quality: 80)]
        let expectedOutput = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: -10, quality: 80)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }
}

@Suite(.tags(.backstagePass)) struct BackstagePasses {
    @Test func updateQuantityWithPassesLongBeforeSellDate() {
        let input = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 11, quality: 5)]
        let expectedOutput = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 6)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithPassesLongBeforeSellDateAtMaxQuality() {
        let input = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 11, quality: 50)]
        let expectedOutput = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 50)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithPassesBeforeSellDateUpperBound() {
        let input = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 5)]
        let expectedOutput = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 9, quality: 7)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithPassesBeforeSellDateLowerBound() {
        let input = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 6, quality: 5)]
        let expectedOutput = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 7)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithPassesJustBeforeSellDateUpperBound() {
        let input = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 5)]
        let expectedOutput = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 4, quality: 8)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithPassesJustBeforeSellDateLowerBound() {
        let input = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 1, quality: 5)]
        let expectedOutput = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 0, quality: 8)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithPassesOnSellDate() {
        let input = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 0, quality: 5)]
        let expectedOutput = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: -1, quality: 0)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithPassesAfterSellDate() {
        let input = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: -1, quality: 5)]
        let expectedOutput = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: -2, quality: 0)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }
}

@Suite(.tags(.conjuredItem), .disabled("New unimplemented feature, remove this and implement")) struct ConjuredItems {
    @Test func updateQuantityWithConjuredItem() {
        let input = [Item(name: "Conjured Mana Cake", sellIn: 5, quality: 5)]
        let expectedOutput = [Item(name: "Conjured Mana Cake", sellIn: 4, quality: 3)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithConjuredItemAtLowQuality() {
        let input = [Item(name: "Conjured Mana Cake", sellIn: 5, quality: 1)]
        let expectedOutput = [Item(name: "Conjured Mana Cake", sellIn: 4, quality: 0)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithConjuredItemOnSellDate() {
        let input = [Item(name: "Conjured Mana Cake", sellIn: 0, quality: 5)]
        let expectedOutput = [Item(name: "Conjured Mana Cake", sellIn: -1, quality: 1)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }

    @Test func updateQuantityWithConjuredItemAfterSellDate() {
        let input = [Item(name: "Conjured Mana Cake", sellIn: -1, quality: 5)]
        let expectedOutput = [Item(name: "Conjured Mana Cake", sellIn: -2, quality: 1)]
        let actualOutput = GildedRose.updateQuality(input)

        #expect(expectedOutput == actualOutput)
    }
}

private extension Tag {
    @Tag static var normalItem: Self
    @Tag static var agedBrie: Self
    @Tag static var sulfura: Self
    @Tag static var backstagePass: Self
    @Tag static var conjuredItem: Self
}
