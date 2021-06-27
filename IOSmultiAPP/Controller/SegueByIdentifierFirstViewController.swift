//
//  SegueByIdentifierFirstViewController.swift
//  IOSmultiAPP
//
//  Created by Denis Medvedev on 28/06/2021.
//  Copyright © 2021 Denis Medvedev. All rights reserved.
//

import UIKit

class SegueByIdentifierFirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func unwindToFirstVC(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func goPressed() {
        performSegue(withIdentifier: "goToSecondVCSegue", sender: nil)
    }
    
}
