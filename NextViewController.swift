//
//  NextViewController.swift
//  Swift5ProtocolBasicApp1
//
//  Created by watar on 2020/07/04.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit

protocol CatchProtocol {
    func catchData(count:Int)
}

class NextViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    var delegate:CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func plusAction(_ sender: Any) {
        count += 1
        label.text = String(count)
    }
    
    
    @IBAction func back(_ sender: Any) {
        //activate in the class that that deleagates the delegate method
        delegate?.catchData(count: count)
        dismiss(animated: true, completion: nil)
    }
}
