//
//  FengGrammarViewController.swift
//  BasedLearningDemo
//
//  Created by fengshaohui on 2016/11/24.
//  Copyright © 2016年 fengshaohui. All rights reserved.
//

import UIKit
import Foundation

class FengGrammarViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {


    @IBOutlet var listTableView: UITableView!

    let data = NSArray(objects: "For 循环","While 循环","if 条件语句","D","E","F","G","H","I","J","K","L","M","N")
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setExtraCellLineHidden(tableview: listTableView)
    }

    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView:UITableView, cellForRowAt indexPath:IndexPath)->UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "reuseIdentifier")
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell.textLabel!.text = "\(data.object(at: indexPath.row))"
        return cell
    }

     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        switch indexPath.row {
        case 0:
            print("😄-For 循环")
            self.fengPrintTheForCircle()
            self.fengPrintTheForanswer()
            self.fengPrintTheForEveryone()
            self.fengPrintTheForDictionary()
            self.fengPrintTheForConditionincrement()
        case 1:
            self.fengPrintWhileSimple()
            self.fengPrintDoWhile()
            self.fengPrintFallthrough()
            print("While 循环")
        case 2:
            self.fengPrintif()
            print("if 条件语句")

        default:
            print("更多...")
        }

    }

    func setExtraCellLineHidden(tableview:UITableView){

        let view = UIView ()
        view.backgroundColor = UIColor.clear
        tableview.tableFooterView = view
        // [tableView setTableFooterView:view];
    }

    ///For-In你可以使用 for-in 循环来遍历一个集合里面的所有元素，例如由数字表示的范围、数组中的元素、字符串中的字符
    func fengPrintTheForCircle(){
        print("**********😄 For 循环*************")

        for index in 1...5 {
             print("\(index) times 5 is \(index * 5)")
        }
        print("**********😄 For 循环*************")

    }

    ///这个例子计算 base 这个数的 power 次幂（本例中，是 3 的 10 次幂），从 1 （3 的 0 次幂）开始做 3 的乘法， 进行 10 次，使用 0 到 9 的半闭区间循环。
    func fengPrintTheForanswer(){
        print("**********☀️ For 循环*************")
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            answer *= base
        }
        print("\(base) to the power of \(power) is \(answer)")
        print("**********☀️ For 循环*************")
    }

    ///使用 for-in 遍历一个数组所有元素
    func fengPrintTheForEveryone(){
        print("**********🌙 For 循环*************")
        let names = ["Anna", "Alex", "Brian", "Jack"]
        for name in names {
            print("Hello, \(name)!")
        }
        print("**********🌙 For 循环*************")
    }

    //你也可以通过遍历一个字典来访问它的键值对(key-value pairs)
    func fengPrintTheForDictionary(){
        print("**********✨ For 循环*************")
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs {
            print("\(animalName)s have \(legCount) legs")
        }
        print("**********✨ For 循环*************")
    }

    //For条件递增
    func fengPrintTheForConditionincrement(){
        print("**********☁️ For 循环*************")
        for mm in 0 ..< 10 {
            print("mm is: \(mm)")
        }

        print("**********☁️ For 循环*************")
    }


    //MARK:  While 循环
    func fengPrintWhileSimple() {
        var i = 0
        while(i<4){
            print("i = \(i)")
            i += 1
        }
    }

    //MARK: do while
    func fengPrintDoWhile(){
        var k = 1
        repeat{
            print("🐯k=\(k)")
            k += 1
        }while(k<=5)
    }
    //MARK: if 语句
    func fengPrintif(){
        let temperatureInFahrenheit = 90
        //temperatureInFahrenheit = 90
        if temperatureInFahrenheit <= 32 {
            print("1")
        } else if temperatureInFahrenheit >= 86 {
            print("It's really warm. Don't forget to wear sunscreen.")
        } else {
            print("It's not that cold. Wear a t-shirt.")
        }

    }

    //MARK:Fallthrough
    func fengPrintFallthrough(){
        let integerToDescribe = 1 
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        } 
        print(description)
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
