//
//  addGroupViewController.swift
//  warikanDiary
//
//  Created by 根東秀都 on 2015/10/15.
//  Copyright © 2015年 shuto kondo. All rights reserved.
//

import UIKit
import Alamofire

class addGroupViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var descript: UITextView!
    
    let warikanGroup = GroupManager.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.delegate = self
        descript.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "閉じる", style: .Plain, target: self, action: "close")
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "作成", style: .Plain, target: self, action: "create")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func close() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func create() {
        if (name.text?.characters.count) == 0 {
            let alertView = UIAlertController(title: "エラー", message: "グループ名が記入されていません", preferredStyle: .Alert)
            alertView.addAction(UIAlertAction(title: "確認", style: .Default, handler: nil))
            self.presentViewController(alertView, animated: true, completion: nil)
        } else if (descript.text?.characters.count) == 0 {
            let alertView = UIAlertController(title: "エラー", message: "グループの説明がありません", preferredStyle: .Alert)
            alertView.addAction(UIAlertAction(title: "確認", style: .Default, handler: nil))
            self.presentViewController(alertView, animated: true, completion: nil)
        } else {
            
            let params = [
                "name": name.text,
                "descript": descript.text,
            ]
            
            Alamofire.request(.POST, "http://localhost:3000/api/groups", parameters: params)
                .responseJSON { response in
            }
            self.dismissViewControllerAnimated(true, completion: nil)
        }
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
