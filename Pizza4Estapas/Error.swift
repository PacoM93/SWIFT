//
//  Error.swift
//  Pizza4Estapas
//
//  Created by Francisco Montes Fonseca on 10/12/17.
//  Copyright © 2017 COURSERA. All rights reserved.
//

import UIKit

class Error: UIViewController {

    @IBAction func ClosePopu(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
