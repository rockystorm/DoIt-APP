//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Nabeel Khan on 10/16/16.
//  Copyright © 2016 Nabeel Khan. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBOutlet weak var createTaskNameField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: AnyObject) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        // create a task from the outlet information
        
        let task = Task(context: context)
        
        task.name = createTaskNameField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        // Pop Back
        
        navigationController!.popViewController(animated: true)
        
    }

}
