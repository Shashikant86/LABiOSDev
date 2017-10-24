//
//  ViewController.swift
//  TBDS
//
//  Created by Shashikant Jagtap on 23/10/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   let data = ["Test", "Testing", "Testing", "Testing", "Testing", "Testing", "Testing", "Testing"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = data[indexPath.row]
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Company", in: context)
        
        let staff = NSManagedObject(entity: entity!, insertInto: context)
        
        staff.setValue("shashi", forKey: "employee")
        staff.setValue("12", forKey: "salary")
        
        
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Company")
        
        request.returnsObjectsAsFaults = false
        
        
        do {
            
            let results = try context.fetch(request)
            print(results)
        } catch {
            print("Fetch Failed")
        }
        
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

