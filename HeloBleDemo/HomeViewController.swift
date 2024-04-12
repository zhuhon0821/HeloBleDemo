//
//  HomeViewController.swift
//  HeloBleDemo
//
//  Created by AppleDev_9527 on 2024/4/9.
//

import UIKit
import HeloBleLib
import GRDB
import SwiftProtobuf

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        BleManager().go()
    
    }
    

}
