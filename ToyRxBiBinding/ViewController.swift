//
//  ViewController.swift
//  ToyRxBiBinding
//
//  Created by Faiz Mokhtar AD0502 on 04/11/2020.
//

import UIKit
import RxSwift
import RxCocoa
import RxBiBinding

class ViewController: UIViewController {
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    let bag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        (firstTextField.rx.text <-> secondTextField.rx.text)
            .disposed(by: bag)
    }


}

