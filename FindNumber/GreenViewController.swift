//
//  GreenViewController.swift
//  FindNumber
//
//  Created by Svetlana Kraichikova on 15/11/2022.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var greenLabel: UILabel!
    
    var textForLabel = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        greenLabel.text = textForLabel
       
    }
    

    @IBAction func goToRoot(_ sender: Any) {
        
       // self.navigationController?.popToRootViewController(animated: true)
        
        if let viewControllers = self.navigationController?.viewControllers {
            for vc in viewControllers {
                if vc is YellowViewController {
                    self.navigationController?.popToViewController(vc, animated: true)
                }
            }
        }
    }
    

}
