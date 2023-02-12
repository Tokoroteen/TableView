//
//  ViewController.swift
//  
//  
//  Created by Tokoroteen on 2023/02/12
//  
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    var mugiwaraMember = ["ルフィ","ゾロ","サンジ"]
    var mugiwaraMemberImage = [UIImage(named: "ミニオン.jpg"), UIImage(named: "IMG_8015.JPG"), UIImage(named: "IMG_8020.JPG")]
    
    //TableViewの宣言
    @IBOutlet var mugiwaraTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //DataSourceをこのViewControllerに適用！
        mugiwaraTableView.dataSource = self
        mugiwaraTableView.rowHeight = 120
        
        //カスタムセルの定義
        let nib = UINib(nibName: "MemberTableViewCell", bundle: nil)
        
        //カスタムセルをこのViewControllerに登録
        mugiwaraTableView.register(nib, forCellReuseIdentifier: "Cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //メンバーを格納している配列の要素分
        return mugiwaraMember.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //mugiwaraTableView上のセルを取得
        let memberCell = mugiwaraTableView.dequeueReusableCell(withIdentifier: "Cell") as! MemberTableViewCell
//        print(indexPath)
        
        //tagを受けたパーツをここで定義
//        let memberImageView = memberCell.viewWithTag(1) as! UIImageView
//        let memberNameLabel = memberCell.viewWithTag(2) as! UILabel
        
        //カスタムセル上のパーツにアクセスし、値を代入
        memberCell.memberImageView.image = mugiwaraMemberImage[indexPath.row]
        memberCell.memberNameLabel.text = mugiwaraMember[indexPath.row]
        
        return memberCell
    }
}

