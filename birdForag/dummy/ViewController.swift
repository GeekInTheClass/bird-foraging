//
//  ViewController.swift
//  dummy
//
//  Created by JKim on 2016. 10. 3..
//  Copyright © 2016년 JKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var descriptionText: UILabel!
    
    var bird:Text?
    @IBOutlet weak var navigationTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let a = bird{
            descriptionText.text = a.text
            navigationTitle.title = a.title
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

