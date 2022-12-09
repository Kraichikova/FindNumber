//
//  YellowViewController.swift
//  FindNumber
//
//  Created by Svetlana Kraichikova on 15/11/2022.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func goToFiolViewController(_ sender: UIButton) {
        performSegue(withIdentifier: "goToFiol", sender: "Да нормааально!")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "goToFiol":
            if let fiolVC = segue.destination as? FiolViewController {
                if let str = sender as? String {
                fiolVC.textForLabel = str
                   }
                }
        default:
            break
        }
   
    }
    
}
