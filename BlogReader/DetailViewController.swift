//
//  DetailViewController.swift
//  BlogReader
//
//  Created by Yeswanth varma Kanumuri on 12/28/15.
//  Copyright © 2015 Yeswanth varma Kanumuri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var blopWebView: UIWebView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let postWebView = self.blopWebView {
                postWebView.loadHTMLString(detail.valueForKey("content")!.description, baseURL: NSURL(string:"https://googleblog.blogspot.com/"))
                    
                    
                    
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

