//
//  SecondViewController.swift
//  KlimTableViewTest
//
//  Created by Клим Бакулин on 28.05.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelFullInfo: UILabel!
    
    var fullInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelFullInfo.text = fullInfo
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
