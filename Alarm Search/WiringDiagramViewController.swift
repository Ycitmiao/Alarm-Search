//
//  WiringDiagramViewController.swift
//  Alarm Search
//
//  Created by 孫苗 on 16/3/28.
//  Copyright © 2016年 孫苗. All rights reserved.
//

import UIKit

class WiringDiagramViewController: UIViewController,UIScrollViewDelegate{
    
    @IBOutlet weak var wiringDiagram: UIScrollView!
    
    var wiringDiagramImage:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //judge if the content of wiringDiagramImage is nil
        if wiringDiagramImage == nil {
         //just the Icon of Daikin
        wiringDiagramImage = UIImageView(image:UIImage(named:"AppIcon.png"))
            //self.wiringDiagramImage.addSubview(wiringDiagramImage)
            
        } else {
            
        // show the wiring diagram from the wiringViewcontroller
        self.wiringDiagram.addSubview(wiringDiagramImage)
        }
        wiringDiagram.maximumZoomScale = 0.60
        wiringDiagram.minimumZoomScale = 0.12
        self.wiringDiagram.delegate = self
        wiringDiagram.zoomScale = 0.30

        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
       return wiringDiagramImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backToWiringViewController(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    
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
