//
//  SecondViewController.swift
//  VCTalk
//
//  Created by Shashikant Jagtap on 13/10/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var delegate : Trasportable?
    
    var data: String = ""
    
    @IBOutlet weak var textFD2: UITextField!
    
    
    @IBOutlet weak var label2: UILabel!
    
    @IBAction func passBackPressed(_ sender: Any) {
        
        delegate?.shouldTransferDataBack(data: textFD2.text!)
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label2.text = data
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
