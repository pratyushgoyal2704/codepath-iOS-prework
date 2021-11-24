//
//  ViewController.swift
//  Prework
//
//  Created by pratyush on 11/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(frame: CGRect(x: view.frame.size.width - 300, y: view.frame.size.height - 400, width: 200, height: 70))
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Start Animation", for: .normal)
        button.addTarget(self, action: #selector(animate), for: .touchUpInside)
        view.addSubview(button)

    }
    
    @objc func animate() {
        UIView.animate(withDuration: 1, animations: {
            self.totalLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
            self.totalLabel.center = self.view.center
            
        })
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

