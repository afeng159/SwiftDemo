//
//  ViewController.swift
//  Demo2
//
//  Created by 啦啦啦 on 2017/9/11.
//  Copyright © 2017年 啦啦啦. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    
    var data = ["30 Days Swift", "这些字体特别适合打「奋斗」和「理想」", "谢谢「造字工房」，本案例不涉及商业使用", "使用到造字工房劲黑体，致黑体，童心体", "呵呵，再见🤗 See you next Project", "微博 @Allen朝辉",
                "测试测试测试测试测试测试",
                "123",
                "Alex",
                "@@@@@@"]
    
    var fontName = ["MFTongXin_Noncommercial-Regular", "MFJinHei_Noncommercial-Regular", "MFZhiHei_Noncommercial-Regular", "Gaspar Regular"]
    
    var fontRowIndex = 0
    
    
    
    
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var changeBtn: UIButton!
    

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad();
        
        tableView.dataSource = self;
        
        tableView.delegate = self;
        
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "FontCell");
        
        changeBtn.layer.cornerRadius = 55;
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnClick(_ sender: Any) {
        
        fontRowIndex = (fontRowIndex + 1) % 4;
        print(fontName[fontRowIndex]);
        
        tableView.reloadData();

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
           let cell = tableView.dequeueReusableCell(withIdentifier: "FontCell", for: indexPath)
        
        let text = data[indexPath.row];
        
        
        cell.textLabel?.text = text;
        
        cell.textLabel?.textColor = UIColor.black;
        
        cell.textLabel?.font = UIFont(name: self.fontName[fontRowIndex], size: 15);
        
        return cell;
        
    }
    


}

