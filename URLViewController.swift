//
//  URLViewController.swift
//  newmixxer
//
//  Created by Erdenebaatar, Zolboo on 11/8/18.
//  Copyright © 2018 Dickinson. All rights reserved.
//
// This class is the main part of the application
// that displays the internet page on the device
// through the component, WebView.
import UIKit
import WebKit
class URLViewController: UIViewController {
    // We use WKWebView to display the internet page
    // on the device
    @IBOutlet weak var Lmao: WKWebView!
    
    var passedURL = "https://www.google.com"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Call the loadURL method
        loadURL(urlString: passedURL)
    }
    /*
     * This method basically loads the WebView with the URL that is
     * passed to this method.
     */
    func loadURL(urlString: String){
        let url = URL(string: urlString)
        let URLrequest = URLRequest(url: url!)
        self.Lmao.load(URLrequest)
    }
    
}
