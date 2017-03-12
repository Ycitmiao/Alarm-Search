//
//  StartFromViewController.swift
//  Alarm Search
//
//  Created by 孫苗 on 16/3/15.
//  Copyright © 2016年 孫苗. All rights reserved.
//

import UIKit

class StartFromViewController: UIViewController {

    @IBOutlet weak var wiringButton: UIButton!
    
    @IBOutlet weak var alarmButton: UIButton!
    
    @IBOutlet weak var modeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Thread.sleep(forTimeInterval: 3.0)
        // make the wiring button edge to be cornor
        wiringButton.layer.masksToBounds = true
        wiringButton.layer.cornerRadius = 5.0
        
        //make the alarm button edge to be corner
        alarmButton.layer.masksToBounds = true
        alarmButton.layer.cornerRadius = 5.0
        
        //make the mode button edge to be cornor
        modeButton.layer.masksToBounds = true
        modeButton.layer.cornerRadius = 5.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segue_wiring"){
            let vc1:WiringViewController = segue.destination as! WiringViewController
            
        } else if(segue.identifier == "segue_alarm") {
            let vc2:ViewController = segue.destination as! ViewController
            
        } else if (segue.identifier == "segue_mode"){
            let vc3:ModeViewController = segue.destination as! ModeViewController
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
