//
//  FengButtonViewController.swift
//  BasedLearningDemo
//
//  Created by fengshaohui on 16/4/20.
//  Copyright © 2016年 fengshaohui. All rights reserved.
//

import UIKit
import QuartzCore
class FengButtonViewController: UIViewController {
    var simpleButton = UIButton()
    var imageButton = UIButton()

    var currtButton = UIButton()
    var timer = Timer()
    var countDown = 0



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //简单button
        simpleButton = UIButton(type: UIButtonType.custom)
        simpleButton.frame = CGRect(x: 20, y: 20+64, width: (self.view.frame.size.width-60)/2, height: 35)
        simpleButton.setTitle("😄", for: .normal)
        simpleButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        simpleButton.backgroundColor = UIColor.yellow
        simpleButton.setTitleColor(UIColor.black, for: UIControlState.normal)
        simpleButton.layer.masksToBounds = true
        simpleButton.layer.borderColor = UIColor.cyan.cgColor
        simpleButton.layer.borderWidth = 1.0
        simpleButton.layer.cornerRadius = 4.0
        //swift 3 方法
        simpleButton.addTarget(self, action: #selector(self.clickedSimpleButton(simpleButton:)), for: .touchUpInside)
       // simpleButton.addTarget(self, action: #selector(FengButtonViewController.clickedSimpleButton(_:)), for: .TouchUpInside)
        self.view.addSubview(simpleButton)

        //背景图button
        imageButton = UIButton(type: UIButtonType.custom)
        imageButton.frame = CGRect(x:40+(self.view.frame.size.width-60)/2  , y: 20+64, width: (self.view.frame.size.width-60)/2, height: 35)
        imageButton.setTitle("图片", for: .normal)
        imageButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        let fimage = UIImage(named: "buttomimage")
        imageButton.setBackgroundImage(fimage, for: .normal)
        imageButton.setTitleColor(UIColor.black, for: UIControlState.normal)
        imageButton.layer.masksToBounds = true
        imageButton.layer.borderColor = UIColor.cyan.cgColor
        imageButton.layer.borderWidth = 1.0
        imageButton.layer.cornerRadius = 4.0
        imageButton.addTarget(self, action: #selector(self.clickedimageButton(imageButton:)), for: .touchDown)
        //imageButton.addTarget(self, action: #selector(FengButtonViewController.clickedimageButton(_:)), for: .TouchDown)

        imageButton.addTarget(self, action: #selector(self.change(imageButton:)), for: .touchDownRepeat)
       //  imageButton.addTarget(self, action: #selector(FengButtonViewController.change(_:)), for: .TouchDownRepeat)
        self.view.addSubview(imageButton)

        //复选框
        let frame = CGRect(x: 20+45, y: 139, width: (self.view.frame.size.width-60)/2-90, height: 35)
        let checkButton = UIButton(type: .custom)
        checkButton.frame = frame
        //checkButton.addTarget(self, action: #selector(FengButtonViewController.checkbutton(_:)), for: .TouchUpInside)
        checkButton.addTarget(self, action: #selector(self.checkbutton(checkButton:)), for: .touchUpInside)
        checkButton.setBackgroundImage(UIImage(named: "check1"), for: .normal)
        checkButton.setBackgroundImage(UIImage(named: "check2"), for: .selected)
        self.view.addSubview(checkButton)


        //倒计时
        let frame1 = CGRect(x: 40+(self.view.frame.size.width-60)/2, y: 139, width: (self.view.frame.size.width-60)/2, height: 35)
        currtButton = UIButton(type: .custom)
        currtButton.frame = frame1
        currtButton.layer.masksToBounds = true
        currtButton.layer.borderColor = UIColor.cyan.cgColor
        currtButton.layer.borderWidth = 1.0
        currtButton.layer.cornerRadius = 4.0
        currtButton.setTitle("获取验证码", for: .normal)
        currtButton.titleLabel?.font = UIFont .systemFont(ofSize: 16)
        currtButton.backgroundColor = UIColor.brown
        currtButton.setTitleColor(UIColor.white, for: .normal)
        //currtButton.addTarget(self, action: #selector(FengButtonViewController.cutdown(_:)), for: .TouchUpInside)
        currtButton.addTarget(self, action: #selector(self.cutdown(currtButton:)), for: .touchUpInside)
        self.view.addSubview(currtButton)

    }

    //设置时间限制，调方法
    func cutdown(currtButton:UIButton) {
        currtButton.isEnabled = false
        countDown = 60
        self.beginstart()

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FengButtonViewController.beginstart), userInfo: nil, repeats: true)

     }

    //计数自减
    func beginstart()  {
        countDown = countDown-1
        if countDown == 0 {
            self.normalState()
            return
        }

        let str2 = "S后重新获取"
        let str1 = String(countDown)
        let titlestr = str1+str2
        currtButton.setTitle(titlestr, for: .disabled)
    }
    //计数等于0
    func normalState()  {
        currtButton.isEnabled = true;
        currtButton.setTitle("获取验证码", for: .normal)
        countDown = 0
        timer.invalidate()
    }

    //复选框方法
    func checkbutton(checkButton:UIButton)  {
        checkButton.isSelected = !checkButton.isSelected
        if checkButton.isSelected == false {
            simpleButton.setTitle("🔫", for: .normal)
        }else{
            simpleButton.setTitle("🚀", for: .normal)
        }
    }
    //简单button点击方法
    func clickedSimpleButton(simpleButton: UIButton)  {
        simpleButton.setTitle("🐯", for: .normal)
        simpleButton.backgroundColor = UIColor.green
    }

   //图片button点击方法
    func clickedimageButton(imageButton:UIButton){


        simpleButton.setTitle("🐟", for: .normal)

    }

    //图片按钮
    func change(imageButton:UIButton){


        simpleButton.setTitle("🐶", for: .normal)
        
    }

   
    @IBAction func clickMainButton(_ sender: UIBarButtonItem) {
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
