//
//  FlutterViewController.swift
//  Runner
//
//  Created by ww on 2019/10/25.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import Foundation

class FlutterViewController: UIViewController,FlutterBinaryMessenger {
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white
    }
    func send(onChannel channel: String, message: Data?) {
    
    }
    
    func send(onChannel channel: String, message: Data?, binaryReply callback: FlutterBinaryReply? = nil) {
        
    }
    
    func setMessageHandlerOnChannel(_ channel: String, binaryMessageHandler handler: FlutterBinaryMessageHandler? = nil) {
        
    }
    
    
}
