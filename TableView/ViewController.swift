//
//  ViewController.swift
//  TableView
//
//  Created by Dowon Kim on 24/07/2023.
//

import UIKit

// ⭐️You have to conform UITableViewDataSource when you need to use Table View -> and add protocol subs as well to conform.
class ViewController: UIViewController, UITableViewDataSource {
    

    

    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ❗️"self" of this code means ViewController
        tableView.dataSource = self
    }
    
    // ⭐️to conform to UITableViewDataSource 1/2
    // - How many contents that Table View should obtain?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // ⭐️to conform to UITableViewDataSource 2/2
    // - Put a detail on every each cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }

}

