//
//  ViewController.swift
//  alert
//
//  Created by Shashikant Jagtap on 25/10/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let activityIndicators = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))

    
    @IBAction func restore(_ sender: Any) {
        
        activityIndicators.stopAnimating()
        
        
    }
    
    
    @IBAction func pause(_ sender: Any) {
        
        
        
        activityIndicators.hidesWhenStopped = true
        activityIndicators.center = self.view.center
        
        activityIndicators.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        
        view.addSubview(activityIndicators)
        activityIndicators.startAnimating()
        
        
        
        
        
        
    }
    
    
    @IBAction func presentAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Hello There", message: "What are you doing", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            print("Pressed")
            self.dismiss(animated: true, completion: nil)
        }))
        
        present(alert, animated: true, completion: nil)
        
        
        
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

