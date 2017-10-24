//
//  ViewController.swift
//  VCTalk
//
//  Created by Shashikant Jagtap on 13/10/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Trasportable {
    
    
    func shouldTransferDataBack(data: String) {
        
        label1.text = data
        
        
    }
    

    @IBOutlet weak var textFD1: UITextField!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBAction func passNextButton(_ sender: Any) {
        
        performSegue(withIdentifier: "connect", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "connect" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textFD1.text!
            secondVC.delegate = self
        }
        
    }
    
    
    


}

