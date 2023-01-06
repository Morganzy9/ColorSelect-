//
//  ColorsFullVC.swift
//  ColorSelect
//
//  Created by Ислам Пулатов on 1/4/23.
//

import UIKit

class ColorsFullVC: UIViewController {
    
    var color : UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? .systemBackground
    }
    


}
