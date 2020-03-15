//
//  ViewController.swift
//  delegate
//
//  Created by mohamed on 3/14/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FullName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func ToFinal(_ sender: UIButton) {
        performSegue(withIdentifier: "toFinal", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VCfinal{
            destination.delegateObject = self
        }
        
    }

}
extension ViewController:delegateProtocol{
    
    func sendName(_ name:String?,_ name2 : String? ){
        FullName.text = (name! + " " + name2!)
        print(FullName.text!)
        
    }
    
}

