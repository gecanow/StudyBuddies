//
//  ViewController.swift
//  StudyBuddies
//
//  Created by Gaby Ecanow on 4/29/17.
//  Copyright © 2017 Gaby Ecanow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTappedJoin(_ sender: Any) {
        print("trying to segue")
        self.performSegue(withIdentifier: "FirstSegue", sender: nil)
    }

}

