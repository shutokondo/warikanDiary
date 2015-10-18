//
//  GroupManager.swift
//  warikanDiary
//
//  Created by 根東秀都 on 2015/10/15.
//  Copyright © 2015年 shuto kondo. All rights reserved.
//

import UIKit

class GroupManager: NSObject {
    static let sharedInstance = GroupManager()
    var groups: [Group] = []
    
    func addGroup(group: Group) {
        self.groups.append(group)
    }

}
