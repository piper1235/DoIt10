//
//  CreateTaskViewController.swift
//  DoIt10
//
//  Created by Tony on 7/22/17.
//  Copyright © 2017 Anthony Vitrano. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var TaskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a task from the outlet information
        
        let task = Task()
        task.name = TaskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous viewcontroller
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        
        // Makes screen move to TasksViewController autmatically instead of hitting the back button
        navigationController?.popViewController(animated: true)
    }
    

}
