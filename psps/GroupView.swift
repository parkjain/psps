//
//  GroupView.swift
//  psps
//
//  Created by Release on 2018. 5. 28..
//  Copyright © 2018년 Release. All rights reserved.
//

import UIKit



class GroupView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func add(_ sender: Any) {
        performSegue(withIdentifier: "gotoAdd", sender: self)
    }
    
    
    @IBAction func transfer(_ sender: Any) {
    // 전송
    }
    
}
