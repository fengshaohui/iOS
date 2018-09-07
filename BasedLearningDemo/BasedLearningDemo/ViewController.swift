//
//  ViewController.swift
//  BasedLearningDemo
//
//  Created by fengshaohui on 16/4/8.
//  Copyright © 2016年 fengshaohui. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var listArray = NSArray()
    var i = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        listArray = ["语法","UILabel","UIButton","UITextField","UITextView","UIView","UIImageView","UIScrollView","UITableView","UICollectionView","UIAlertView","UIActionSheet","MKMapView"]


        var listTableView = UITableView ()
        self.view.backgroundColor = UIColor.white
        //0, 64, self.view.bounds.size.width, self.view.bounds.size.height-64
        listTableView = UITableView (frame: CGRect(x: 0, y: 64, width: self.view.bounds.size.width, height: self.view.bounds.size.height-64), style: UITableViewStyle.plain)
        listTableView.delegate = self
        listTableView.dataSource = self
        self.setExtraCellLineHidden(tableview: listTableView)
        self.view.addSubview(listTableView)


        
        
    }


    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let initIdentifier = "cells"
        let cell = UITableViewCell (style: UITableViewCellStyle.subtitle, reuseIdentifier: initIdentifier)
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell.textLabel?.text = listArray[indexPath.row] as? String

        return cell

    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        switch indexPath.row {
        case 0:
            print("😄-语法")
            self.performSegue(withIdentifier: "grammar", sender: self)
        case 1:
            print("😄-UILabel")
            self.performSegue(withIdentifier: "fenglabel", sender: self)
        case 2:
            print("😄-UIButton")
            self.performSegue(withIdentifier: "fengbutton", sender: self)
        case 3:
            print("😄-UITextField")
            self.performSegue(withIdentifier: "fengtextfield", sender: self)
        case 4:
            print("😄-UITextView")
            self.performSegue(withIdentifier: "fengtextview", sender: self)
        case 5:
            print("😄-UIView")
            self.performSegue(withIdentifier: "fengview", sender: self)
        case 6:
            print("😄-UIImageView")
            self.performSegue(withIdentifier: "fengimageview", sender: self)
        case 7:
            print("😄-UIScrollView")
           self.performSegue(withIdentifier: "fengscrollview", sender: self)
        case 8:
            print("😄-UITableView")
            //
           self.performSegue(withIdentifier: "fengtableview", sender: self)
        case 9:
            print("😄-UICollectionView")
            //fengcollectionview
        self.performSegue(withIdentifier: "fengcollectionview", sender: self)
        case 10:
            print("😄-UIAlertView")
            //fengalertview
            self.performSegue(withIdentifier: "fengalertview", sender: self)
        case 11:
            print("😄-UIActionSheet")
            //fengactionsheet
        self.performSegue(withIdentifier: "fengactionsheet", sender: self)
        case 12:
            print("😄-MKMapView")
            //fengmkmapview
        self.performSegue(withIdentifier: "fengmkmapview", sender: self)

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
//        if (segue.identifier == "fenglabel") {
//
//        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return false
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

