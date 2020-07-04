//
//  ViewController.swift
//  Swift5ProtocolBasicApp1
//
//  Created by watar on 2020/07/04.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CatchProtocol {
    
    @IBOutlet weak var label1: UILabel!
    
    var count = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func catchData(count: Int) {
        label.text = String(count)
    }

    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.description as! NextViewController
        nextVC.delegate = self
    }

}

