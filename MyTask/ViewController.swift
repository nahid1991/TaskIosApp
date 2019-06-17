//
//  ViewController.swift
//  MyTask
//
//  Created by Nahid on 8/6/19.
//  Copyright © 2019 Nahid. All rights reserved.
//

import UIKit

var tasksArray = [Task]()

class ViewController: UIViewController {
    @IBOutlet weak var taskNameTextfield: UITextField!
    @IBOutlet weak var taskDescTextview: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .short
        
        let taskDate = datePicker.date
        
        let taskDateInString = dateFormatter.string(from: taskDate)
        
        if let taskName = taskNameTextfield.text, let
            taskDesc = taskDescTextview.text {
            print(taskName, taskDesc, taskDateInString)
            
            let task = Task(name:taskName, description:taskDesc, date:taskDateInString)
            tasksArray.append(task)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

