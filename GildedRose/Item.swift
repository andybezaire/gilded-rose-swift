// do not alter, as those belong to the goblin in the corner who will insta-rage and one-shot you as he doesn't believe in shared code ownership

public struct Item: Equatable {
    var name: String
    var sellIn: Int
    var quality: Int
}

public protocol ItemQualityUpdater {
    static func updateQuality(_ items: Array<Item>) -> [Item]
}
