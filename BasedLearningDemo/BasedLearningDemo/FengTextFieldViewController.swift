//
//  FengTextFieldViewController.swift
//  BasedLearningDemo
//
//  Created by fengshaohui on 16/4/22.
//  Copyright © 2016年 fengshaohui. All rights reserved.
//

import UIKit

class FengTextFieldViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.init(colorLiteralRed: 80, green: 170, blue: 242, alpha: 1.0)

    }
   
    @IBAction func clickedBack(_ sender: AnyObject) {
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
