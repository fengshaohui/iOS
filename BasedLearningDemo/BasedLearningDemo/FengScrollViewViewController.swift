//
//  FengScrollViewViewController.swift
//  BasedLearningDemo
//
//  Created by fengshaohui on 16/6/15.
//  Copyright © 2016年 fengshaohui. All rights reserved.
//

import UIKit

class FengScrollViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func clickedBackHome(_ sender: AnyObject) {
        _=navigationController?.popToRootViewController(animated: true)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
