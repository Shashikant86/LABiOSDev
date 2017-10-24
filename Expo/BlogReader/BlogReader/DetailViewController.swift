//
//  DetailViewController.swift
//  BlogReader
//
//  Created by Shashikant Jagtap on 23/10/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
        
        if let detail = detailItem {
            if let blogWebview = self.webView {
                self.title = detail.value(forKey: "title") as! String
                blogWebview.loadHTMLString(detail.value(forKey: "content") as! String, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

