//
//  SegueDataTransferSecondViewController.swift
//  IOSmultiAPP
//
//  Created by Denis Medvedev on 27/06/2021.
//  Copyright © 2021 Denis Medvedev. All rights reserved.
//

import UIKit

class SegueDataTransferSecondViewController: UIViewController {
    
    var dataReciverVar: String!
    
    @IBOutlet var dataReviver: UILabel!
    @IBOutlet var dataSender: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataReviver.text = dataReciverVar
    }
    
    // функция говорящая этом объекту что делать когда одно или более касаний зарегистрировано по View
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
