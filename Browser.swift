//
//  Browser.swift
//  newmixxer
//
//  Created by Erdenebaatar, Zolboo on 11/8/18.
//  Copyright © 2018 Dickinson. All rights reserved.
//
import UIKit
import WebKit
class URLViewController: UIViewController {
    @IBOutlet weak var Lmao: WKWebView!
    var passedURL = "https://www.google.com"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadURL(urlString: passedURL)
    }
    func loadURL(urlString: String){
        let url = URL(string: urlString)
        let URLrequest = URLRequest(url: url!)
        self.Lmao.load(URLrequest)
    }
    
}
