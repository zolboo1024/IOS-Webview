//
//  ViewController.swift
//  newmixxer
//
//  Created by Erdenebaatar, Zolboo on 11/8/18.
//  Copyright © 2018 Dickinson. All rights reserved.
//
//  This is the entry point of the application that
//  creates a button to log on to the the URL.
//  One problem with this method is that
//  Whenever an exception is thrown, for example, the URL doesn't exist
//  or if the device is not connected to the internet, it's not handled.
//  Therefore, we have to check if the device is connected to the internet,
//  using the "CheckInternet" static class and if it is, we proceed with
//  the application.
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Login: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        //OPTIONAL: I wanted the buttons to be rounded but you can skip this step
        Login.layer.cornerRadius = 30
        Login.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    //Here we check if the device is connected to the internet through the
    // static CheckInternet class. If not, we display a pop up message saying
    // that the device needs to be connected to the internet
    @IBAction func Login_Send(_ sender: Any) {
        if CheckInternet.Connection(){
            self.performSegue(withIdentifier: "LoginSegue", sender: self)
        }
        else {
            self.Alert(Message: "Please connect your device to the Internet")
        }
    }
    // We specify the passed URL as google and then pass it on to URLViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! URLViewController
        if segue.identifier == "LoginSegue" {
            destVC.passedURL = "https://google.com"
        }
    }
    // A typical Pop-up alert message for IOS.
    func Alert (Message: String){
        let alert = UIAlertController(title: "No Connection", message: Message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

