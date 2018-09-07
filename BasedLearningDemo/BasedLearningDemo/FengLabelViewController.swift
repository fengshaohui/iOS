//
//  FengLabelViewController.swift
//  BasedLearningDemo
//
//  Created by fengshaohui on 16/4/11.
//  Copyright © 2016年 fengshaohui. All rights reserved.
//

import UIKit
import QuartzCore
class FengLabelViewController: UIViewController {

    var singleLabel = UILabel()
    var moreLabel = UILabel()

    var str = NSString()

    var fheight = CGRect()
    var size1 = CGSize()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //单行
       // singleLabel = UILabel(frame: CGRectMake(20,64+20 ,self.view.frame.size.width-40,30))
        singleLabel = UILabel(frame:CGRect(x: 20, y: 84, width: self.view.frame.size.width-40, height: 30))
        singleLabel.layer.masksToBounds = true
        singleLabel.layer.cornerRadius = 2.0
        singleLabel.layer.borderColor = UIColor.black.cgColor
        singleLabel.layer.borderWidth = 0.5
        singleLabel.font = UIFont.systemFont(ofSize: 16)
        singleLabel.textColor = UIColor.black
        singleLabel.textAlignment = NSTextAlignment.left
        singleLabel.text = "这是一个简单的UILabel"
        self.view.addSubview(singleLabel)

        //多行

        size1 = CGSize(width: self.view.frame.size.width-40, height: 10000);
        str = "由于Apple近几年在iOS系统的不断改进过程中添加了许多新的特性和功能，这使得iOS系统对文本的渲染能力有了大大的提升。在iOS7中我们就已经能感觉到在文本渲染方面有了很大改进和提升。现在iOS8发布了，在文本渲染方面在延续了之前强大功能的基础上，又提升了其易用性。简单纵观iOS文本渲染的发展史，你也许对目前文本渲染的强大能有更深刻的体会"

        let attributes = [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 16)]
        fheight = str.boundingRect(with: size1, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: attributes, context: nil);
        moreLabel.numberOfLines = 0
        moreLabel.lineBreakMode = NSLineBreakMode.byCharWrapping
        moreLabel.layer.masksToBounds = true
        moreLabel.layer.cornerRadius = 2.0
        moreLabel.layer.borderColor = UIColor.black.cgColor
        moreLabel.layer.borderWidth = 0.5
        moreLabel.font = UIFont.systemFont(ofSize: 16)
        moreLabel.textColor = UIColor.black
        moreLabel.textAlignment = NSTextAlignment.left
        moreLabel.text = str as String
        moreLabel.frame = CGRect(x: 20, y: 84+60, width: fheight.width, height: fheight.height);
        self.view.addSubview(moreLabel)

        



    }


    
    


    @IBAction func clicckedMain(_ sender: UIBarButtonItem) {
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
