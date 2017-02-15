import UIKit

final class SellsViewController: UITableViewController {
    private let viewModel = SellsViewModel()
    private var sellDataSource: SellsDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        loadSells()
    }
    
    private func loadSells() {
        do {
            try viewModel.loadSells()
            tableView.reloadData()
        }
        catch let error {
            let alert = UIAlertController(title: "Error",
                                          message: error.localizedDescription,
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            navigationController?.present(alert, animated: true, completion: nil)
        }
    }
    
    private func setupTableView() {
        sellDataSource = SellsDataSource(viewModel: viewModel)
        tableView.dataSource = sellDataSource
        tableView.delegate = sellDataSource
    }
}
