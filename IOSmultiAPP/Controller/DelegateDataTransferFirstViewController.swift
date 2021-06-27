//
//  DelegateDataTransferFirstViewController.swift
//  IOSmultiAPP
//
//  Created by Denis Medvedev on 27/06/2021.
//  Copyright © 2021 Denis Medvedev. All rights reserved.
//

import UIKit

class DelegateDataTransferFirstViewController: UIViewController, DataTransferDelegate {
    
    @IBOutlet var dataReviver: UILabel!
    @IBOutlet var dataSender: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // функция говорящая этом объекту что делать когда одно или более касаний зарегистрировано по View
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? DelegateDataTransferSecondViewController else { return }
        dvc.delegate = self
        dvc.dataReciverVar = dataSender.text
        dataSender.text = nil
    }
    
    func transfer(data: String?) {
        dataReviver.text = data
    }
    
    @IBAction func unwindToFirstVC(segue: UIStoryboardSegue){
        
    }

}
