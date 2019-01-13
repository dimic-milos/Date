//
//  ViewController.swift
//  Date
//
//  Created by Milos Dimic on 1/13/19.
//  Copyright © 2019 Milos Dimic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm"
        let someDateTime = formatter.date(from: "1983/10/29 22:31")
        print(someDateTime!)
    }


}

