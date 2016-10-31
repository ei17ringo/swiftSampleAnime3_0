//
//  ViewController.swift
//  sampleAnime
//
//  Created by Eriko Ichinohe on 2016/02/09.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // アニメーション対象のView
    let aView = UIView(frame: CGRect(x: 0,y: 0,width: 100,height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 青色に指定
        self.aView.backgroundColor = UIColor.blue
        
        // 画面上に表示
        self.view.addSubview(aView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTap(_ sender: UIButton) {
        
        print("Tap!!!")
        
        //緑に変わるアニメーション
        //withDuration:アニメーションが行われる間隔（秒）
        //animations:変化後の状態
        //completion:アニメーション後に行われる処理
        UIView.animate(withDuration: 5, animations: { () -> Void in self.aView.backgroundColor = UIColor.green}, completion: {finished in print("色が変わりました")})
    }

}

