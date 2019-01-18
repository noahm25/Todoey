//
//  CategoryViewController.swift
//  Todoey
//
//  Created by Noah Martineau Raymundo on 2019-01-18.
//  Copyright © 2019 Phidget. All rights reserved.
//

import UIKit
import CoreData

class CategoryViewController: UITableViewController {
    
    var categories = [Category]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad(){
        super.viewDidLoad()
        
    }
    
    //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
         return categories.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        
        cell.textLabel?.text = categories[indexPath.row].name
        
        return cell
        
    }
    
    //MARK - Data Manipulation Methods
    
    //MARK - Add New categorya
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "AddNew Category", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add", style: .default) { (action) in
    
            
        }
        
        alert.addAction(action)
        
        alert.addTextField { (field) in
            TextField
        }
    }
    
    //MARK - TableView Delegate Methods
    
    
    
}
