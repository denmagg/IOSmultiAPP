//
//  SegueDataTransferFirstViewController.swift
//  IOSmultiAPP
//
//  Created by Denis Medvedev on 27/06/2021.
//  Copyright © 2021 Denis Medvedev. All rights reserved.
//

import UIKit

class SegueDataTransferFirstViewController: UIViewController {

    // аутлеты отправителей и получателей данных
    @IBOutlet var dataReviver: UILabel!
    @IBOutlet var dataSender: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // функция говорящая этом объекту что делать когда одно или более касаний зарегистрировано по View
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //функция подготовки к переходу в которой мы отправляем данные на SVC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SegueDataTransferSecondViewController else { return }
        dvc.dataReciverVar = dataSender.text
        dataSender.text = nil
    }
    
    //функция выхода для SVC
    @IBAction func unwindToFirstController(segue: UIStoryboardSegue) {
        guard let svc = segue.source as? SegueDataTransferSecondViewController else { return }
        dataReviver.text = svc.dataSender.text
    }
}
