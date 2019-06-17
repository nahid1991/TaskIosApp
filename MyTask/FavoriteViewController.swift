//
//  FavoriteViewController.swift
//  MyTask
//
//  Created by Nahid on 16/6/19.
//  Copyright © 2019 Nahid. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {

    @IBOutlet weak var favoriteLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        let description = UserDefaults.standard.string(forKey: "saved")
        
        favoriteLabel.text = description
    }

}
