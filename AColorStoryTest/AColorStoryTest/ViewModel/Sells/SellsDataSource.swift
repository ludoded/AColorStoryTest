import UIKit

final class SellsDataSource: NSObject {
    let viewModel: SellsViewModel
    
    init(viewModel: SellsViewModel) {
        self.viewModel = viewModel
        super.init()
    }
}

extension SellsDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.sells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SellCell.cellId) as? SellCell
            else { fatalError("Can't load the cell") }
        
        let sells = viewModel.sells[indexPath.row]
        cell.setup(with: sells)
        
        return cell
    }
}

extension SellsDataSource: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
}
