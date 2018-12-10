//
//  ViewController.swift
//  Alamofirewithchris
//
//  Created by Vattanac on 12/10/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://codewithchris.com/code/afsample.json")
        
        Alamofire.request("https://codewithchris.com/code/afsample.json").responseJSON { response in
          
           
            
            if case let json as [String:Any] = response.result.value {
                print(json["firstkey"] as! String)
                print(json["secondkey"] as! NSArray)
            }
            
        }
        
    }
    
    
}

