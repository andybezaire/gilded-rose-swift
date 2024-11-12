// do not alter, as those belong to the goblin in the corner who will insta-rage and one-shot you as he doesn't believe in shared code ownership

public struct Item: Equatable {
    public var name: String
    public var sellIn: Int
    public var quality: Int

    public init(name: String, sellIn: Int, quality: Int) {
        self.name = name
        self.sellIn = sellIn
        self.quality = quality
    }
}

public protocol ItemQualityUpdater {
    static func updateQuality(_ items: Array<Item>) -> [Item]
}
