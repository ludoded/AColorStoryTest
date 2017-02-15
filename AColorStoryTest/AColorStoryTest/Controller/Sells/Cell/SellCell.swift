import UIKit

final class SellCell: UITableViewCell {
    @IBOutlet weak var sellings: UILabel!
    
    func setup(with sells: Sells) {
        let totalSells = "A total of \(sells.total) \(sells.name) were sold, in \(sells.basketAmount) baskets"
        sellings.text = totalSells
    }
}
