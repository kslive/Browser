//
//  ViewController.swift
//  Browser
//
//  Created by Eugene Kiselev on 12.07.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var urlTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urlTextField.delegate = self
        
        let homePage = "https://www.google.com/"
        let url = URL(string: homePage)
        let request = URLRequest(url: url!)
        
        urlTextField.text = homePage
        
        webView.load(request)
        webView.allowsBackForwardNavigationGestures = true
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        
    }
    
    @IBAction func forwardButtonAction(_ sender: Any) {
        
    }
    
}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let urlString = textField.text!
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        
        webView.load(request)
        
        textField.resignFirstResponder()
        
        return true
    }
}
