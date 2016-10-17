//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Nabeel Khan on 10/17/16.
//  Copyright © 2016 Nabeel Khan. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskLabel: UILabel!
    
    var task : Task? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
            taskLabel.text = "🚨 \(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: AnyObject) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }
}
