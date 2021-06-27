//
//  SegueByIdentifierSecondViewController.swift
//  IOSmultiAPP
//
//  Created by Denis Medvedev on 28/06/2021.
//  Copyright © 2021 Denis Medvedev. All rights reserved.
//

import UIKit

class SegueByIdentifierSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goPressed() {
        performSegue(withIdentifier: "unwindToFirstVCSegue", sender: nil)
    }
    

}
