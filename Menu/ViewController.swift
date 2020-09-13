//
//  ViewController.swift
//  Menu
//
//  Created by Ahmed kamal on 9/13/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit
import SwiftyMenu
import SnapKit
class ViewController: UIViewController {

   var BrandsArray = [BrandsData]()
   @IBOutlet private weak var dropDown: SwiftyMenu!
        
    var list = ["Cairo", "Alex", "Mansoura", "Tanta", "Kafr El Sheikh", "Aswan", "Hurghada", "Sharm El-Shaikh", "Damietta"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
          
            dropDown.delegate = self
            dropDown.items = list
            
            dropDown.expandingAnimationStyle = .spring(level: .low)
            dropDown.expandingDuration = 1.0
            dropDown.collapsingAnimationStyle = .linear
            dropDown.collapsingDuration = 0.5
           
//            dropDown.didExpand = {
//                print("Expanded!")
//            }
//
//            dropDown.didCollapse = {
//                print("Collapsed!")
//            }
           
        }

    }

    extension ViewController: SwiftyMenuDelegate {
        func swiftyMenu(_ swiftyMenu: SwiftyMenu, didSelectItem item: SwiftyMenuDisplayable, atIndex index: Int) {
            print("Selected item: \(item), at index: \(index)")
            
        }
    }


    
    // String extension to conform SwiftyMenuDisplayable for defult behavior
    extension String: SwiftyMenuDisplayable {
        public var displayableValue: String {
            return self
        }
        
        public var retrievableValue: Any {
            return self
        }
    }

