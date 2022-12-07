//
//  AddItemViewController.swift
//  TodoList
//
//  Created by Yaz Burrell on 12/7/22.
//

import UIKit

class AddItemViewController: UIViewController {
    
    // MARK: - Properties
    
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Add Item 🖊️"
    }

}
