//
//  FiolViewController.swift
//  FindNumber
//
//  Created by Svetlana Kraichikova on 15/11/2022.
//

import UIKit

class FiolViewController: UIViewController {

    @IBOutlet weak var fiolLabel: UILabel!
    var textForLabel = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fiolLabel.text = textForLabel
      
    }
    
    @IBAction func goToGreenController(_ sender: UIBarButtonItem) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "greenVC") as? GreenViewController {
            vc.textForLabel = "Хрень какая-то..."
            vc.title = "Зеленый"
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
 
}
