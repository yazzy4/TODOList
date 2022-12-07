//
//  ViewController.swift
//  TodoList
//
//  Created by Yaz Burrell on 12/6/22.
//

import UIKit

private let reuseIdentifier = "ListCell"

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    
    @IBOutlet weak var addBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var tableview: UITableView!

    var items: [Item] = [Item(title: "First item", isCompleted: false),
                         Item(title: "Second item", isCompleted: false),
                         Item(title: "Third item", isCompleted: false),
                         Item(title: "Fourth item", isCompleted: false)]
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "// TODO: 📝"
    }
    
    
    @IBAction func addBarButtonItemPressed(_ sender: UIBarButtonItem) {
        
        let viewController = AddItemViewController()
        
        present(viewController, animated: true)
    }
    
    func completeCheck() {
        
    }
    

}

// MARK: - Datasource, delegate

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableview.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as? ListCell else { return UITableViewCell() }
        let item = items[indexPath.row]
        cell.todoItem.text = item.title
        cell.checkImage.image = UIImage(systemName: item.isCompleted ? "checkmark.circle" : "circle" )
        cell.tintColor = item.isCompleted ? UIColor.green : UIColor.red
        
        return cell
    }
    
    
}

