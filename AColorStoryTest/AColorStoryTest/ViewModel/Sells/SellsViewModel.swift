import Foundation

final class SellsViewModel {
    var sells: [Sells] = []
    
    func loadSells() throws {
        let builder = JSONBuilder()
        sells = try builder.sells(from: "sells")
    }
}
