//
//  VCfinal.swift
//  delegate
//
//  Created by mohamed on 3/14/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import UIKit
protocol delegateProtocol {
    func sendName(_ name:String?,_ name2 : String? )
}
class VCfinal : ViewController{
    
    
    @IBOutlet weak var SecondName: UITextField!
    @IBOutlet weak var FirstName: UITextField!
    var delegateObject:delegateProtocol! = nil
    @IBAction func ToStart(_ sender: UIButton) {
        delegateObject!.sendName(FirstName.text,SecondName.text)
        
        performSegue(withIdentifier: "toStart", sender: nil)
        
        //dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
}
