//
//  WiringViewController.swift
//  Alarm Search
//
//  Created by 孫苗 on 16/3/16.
//  Copyright © 2016年 孫苗. All rights reserved.
//

import UIKit

class WiringViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var sutSeriesLabel: UILabel!
    
    @IBOutlet weak var wiringSearchLabel: UIButton!
    
    @IBOutlet weak var searchResultLabel: UILabel!
    
    //user input voltage
    @IBOutlet weak var inputVoltage: UITextField!
    
    //user input motor power
    @IBOutlet weak var inputPower: UITextField!
    
    //output DCL type
    @IBOutlet weak var outputDCL: UITextField!
    
    //output regenerative breaker size
    @IBOutlet weak var outputRegenerativeBreakerSize: UITextField!
    
    //number of regenerative breaker
    @IBOutlet weak var numberOfRegenerative: UITextField!

    
    //wiring type of regenerative breaker
    @IBOutlet weak var connectingType: UITextField!
    
    //ScrollView for wiring to magnify
    @IBOutlet weak var wiringScrollView: UIScrollView!
    
    //define the UIImage instances
    var wiringImage: UIImageView!
    
    //define the outlet for the button of detail wiring diagram
    @IBOutlet weak var detailWiringDiagram: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // make the SUT series label edge to be corner
        sutSeriesLabel.layer.masksToBounds = true
        sutSeriesLabel.layer.cornerRadius = 3.0
        
        //make the search button edge to be round 
        wiringSearchLabel.layer.masksToBounds = true
        wiringSearchLabel.layer.cornerRadius = 3.0
        
        //make the search result label edge to be cornor
        searchResultLabel.layer.masksToBounds = true
        searchResultLabel.layer.cornerRadius = 3.0
        
        //make the following textfield uneditable
        outputDCL.isEnabled = false
        outputRegenerativeBreakerSize.isEnabled = false
        numberOfRegenerative.isEnabled = false
        connectingType.isEnabled = false
        
        //set the keyboard type of textfield to be number pad
        inputPower.keyboardType = UIKeyboardType.numberPad
        inputVoltage.keyboardType = UIKeyboardType.numberPad
        
        //Define the Scrolling range of scrollView
        self.wiringScrollView.maximumZoomScale = 0.36
        self.wiringScrollView.minimumZoomScale = 0.08
        self.wiringScrollView.delegate = self
        
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
   
    @IBAction func backToMainScene(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func wiringSearch(_ sender: UIButton) {
        var a = ""
        a = inputVoltage.text!
        var b = ""
        b = inputPower.text!
        if a == "" && b == "" {
            outputDCL.text! = "無"
            outputRegenerativeBreakerSize.text! = "無"
            numberOfRegenerative.text! = "無"
            connectingType.text! = "無"
        } else {
            switch (a,b){
            case ("400","22"):
                outputDCL.text! = "PM-SDL05"
                outputRegenerativeBreakerSize.text! = "68"
                numberOfRegenerative.text! = "6"
                connectingType.text! = "並列"
                wiringImage = UIImageView(image:UIImage(named:"400V_22kW.png"))
                //Add the subView of imageView
                self.wiringScrollView.addSubview(wiringImage)
                self.wiringScrollView.zoomScale = 0.12

                
            case ("400","15"):
                outputDCL.text! = "PM-SDL04"
                outputRegenerativeBreakerSize.text! = "68"
                numberOfRegenerative.text! = "4"
                connectingType.text! = "並列"
                wiringImage = UIImageView(image:UIImage(named:"400V_15kW.png"))
                self.wiringScrollView.addSubview(wiringImage)
                  self.wiringScrollView.zoomScale = 0.12
                
            case("400","11"):
                outputDCL.text! = "PM-SDL04"
                outputRegenerativeBreakerSize.text! = "68"
                numberOfRegenerative.text! = "2"
                connectingType.text! = "並列"
                wiringImage = UIImageView(image: UIImage(named: "400V_11kW.png"))
                self.wiringScrollView.addSubview(wiringImage)
                self.wiringScrollView.zoomScale = 0.12
                
            case("200","15"):
                outputDCL.text! = "PM-SDL03"
                outputRegenerativeBreakerSize.text! = "30"
                numberOfRegenerative.text! = "6"
                connectingType.text! = "並列"
                wiringImage = UIImageView(image: UIImage(named: "200V_15kW.png"))
                self.wiringScrollView.addSubview(wiringImage)
                self.wiringScrollView.zoomScale = 0.12
                
            case("200","11"):
                outputDCL.text! = "PM-SDL06"
                outputRegenerativeBreakerSize.text! = "30"
                numberOfRegenerative.text! = "3"
                connectingType.text! = "並列"
                wiringImage = UIImageView(image: UIImage(named: "200V_11kW.png"))
                self.wiringScrollView.addSubview(wiringImage)
                self.wiringScrollView.zoomScale = 0.12
                
            case("200","7"):
                outputDCL.text! = "PM-SDL06"
                outputRegenerativeBreakerSize.text! = "10"
                numberOfRegenerative.text! = "2"
                connectingType.text! = "直列"
                wiringImage = UIImageView(image: UIImage(named:"200V_7kW.png"))
                self.wiringScrollView.addSubview(wiringImage)
                self.wiringScrollView.zoomScale = 0.12
                
            default:
                outputDCL.text! = "機種無し"
                outputRegenerativeBreakerSize.text! = "無"
                numberOfRegenerative.text! = "無"
                connectingType.text! = "無"

            }
           
            inputPower.endEditing(true)
            inputVoltage.endEditing(true)
        }
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return wiringImage
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationWiringDiagramViewCtonroller: WiringDiagramViewController = segue.destination as! WiringDiagramViewController
        

        destinationWiringDiagramViewCtonroller.wiringDiagramImage = wiringImage
        }
    

}
