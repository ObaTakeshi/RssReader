//
//  CategolyViewController.swift
//  RssReader
//
//  Created by oba on 2017/06/13.
//  Copyright © 2017年 mycompany. All rights reserved.
//

import Foundation
import UIKit

class CategolyViewController: UITableViewController {
    
    let objects = ["暮らし","アニメとゲーム"]
    
    //画面が表示された直後
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //セルのタップ時に送るデータ
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 //
//        if let indexPath = self.tableView.indexPathForSelectedRow {
//            let controller = segue.destination as! DetailViewController
//            controller.item = x.items[indexPath.row]
//        }
//    }
    
    //必須メソッド(戻り値はセルの数)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //nilか否か
        return objects.count
    }
    
    //必須メソッド(戻り値はセルの内容)　indexPathは現在設定しているセルの行番号を保持
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //dequeue~Cellはセルの再利用(引数に再利用するセル(ストーリボードのIdentifer))
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategolyCell", for: indexPath)
        cell.textLabel?.text = objects[indexPath.row]
        
        return cell
    }
}