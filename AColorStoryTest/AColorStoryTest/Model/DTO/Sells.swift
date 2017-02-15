import Foundation

struct Sells {
    typealias SellsDict = Dictionary<String, Any>
    
    let name: String
    let baskets: [Int]
    let unitCosts: Double
    
    /// Dynamic properties
    
    /// Total amount from all baskets
    var total: Int {
        return baskets.reduce(0, +)
    }
    
    /// Total amount of baskets
    var basketAmount: Int {
        return baskets.count
    }
    
    init?(json: Any) {
        guard json is SellsDict else { return nil }
        let dict = json as! SellsDict
        
        self.name = dict.string(for: "name")
        self.baskets = dict.arrayOfInts(for: "baskets")
        self.unitCosts = dict.double(for: "unit_costs")
    }
}
