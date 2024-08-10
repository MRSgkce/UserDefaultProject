//
//  ViewController.swift
//  UserDefault
//
//  Created by Mürşide Gökçe on 10.08.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zamanLabel: UILabel!
    @IBOutlet weak var NotLabel: UILabel!
    @IBOutlet weak var zamanTextField: UITextField!
    @IBOutlet weak var NotTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // UserDefaults'tan verileri al
                if let kaydedilenNot = UserDefaults.standard.string(forKey: "not") {
                    NotLabel.text = "yapılacak iş: \(kaydedilenNot)"
                }
                
                if let kaydedilenZaman = UserDefaults.standard.string(forKey: "zaman") {
                    zamanLabel.text = "yapılacak zaman: \(kaydedilenZaman)"
                }
    }
    
    @IBAction func kaydet(_ sender: Any) {
        // UITextField'in metin özelliklerini UserDefaults'a kaydet
                if let notText = NotTextField.text {
                    UserDefaults.standard.setValue(notText, forKey: "not")
                }
                
                if let zamanText = zamanTextField.text {
                    UserDefaults.standard.setValue(zamanText, forKey: "zaman")
                }
                
                // Label'ları güncelle
                NotLabel.text = "yapılacak iş: \(NotTextField.text ?? "")"
                zamanLabel.text = "yapılacak zaman: \(zamanTextField.text ?? "")"
            }
        
    
    
    @IBAction func sil(_ sender: Any) {
    }
    
}

