//
//  VideoPage.swift
//  BBalash
//
//  Created by karim saad on 9/13/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import Foundation
import UIKit
import GoogleMobileAds

class VideoPage:UIViewController,GADRewardBasedVideoAdDelegate{

    var main:MainScreen!
   // var container:UIView!
    override func viewDidLoad() {
        view.backgroundColor=UIColor.init(red: 237/255, green: 236/255, blue: 239/255, alpha: 1)
       // print("inside controller")
        //print(container.frame.height)
        let button=RoundFrame().AddFrame(viewx: view, x: view.frame.width*0.275, y: view.frame.height/2-(view.frame.height*0.6*0.1)/2, width: view.frame.width*0.45, height: view.frame.height*0.6*0.1, stroke: true, stroke_color: .white, fill_color: Colors().Blue(), text_color: .white, text: "Watch Video")
        
        button.addTarget(self, action: #selector(watchvideo), for: .touchUpInside)
        GADRewardBasedVideoAd.sharedInstance().delegate = self
        
    }
  
    
    func watchvideo(_ sender: UIButton!) {
        var request=GADRequest()
        request.testDevices = [kGADSimulatorID];
        GADRewardBasedVideoAd.sharedInstance().load(request, withAdUnitID: "ca-app-pub-3940256099942544/1712485313")
            print("settings1")
    
    }
    
    func rewardBasedVideoAd(_ rewardBasedVideoAd: GADRewardBasedVideoAd,
                            didRewardUserWith reward: GADAdReward) {
        print("Reward received with currency: \(reward.type), amount \(reward.amount).")
        
    }
    
    func rewardBasedVideoAdDidReceive(_ rewardBasedVideoAd:GADRewardBasedVideoAd) {
        print("Reward based video ad is received.")
        GADRewardBasedVideoAd.sharedInstance().present(fromRootViewController: self)
    }
    
    func rewardBasedVideoAdDidOpen(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        print("Opened reward based video ad.")
    }
    
    func rewardBasedVideoAdDidStartPlaying(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        print("Reward based video ad started playing.")
    }
    
    func rewardBasedVideoAdDidClose(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        print("Reward based video ad is closed.")
        let charge=UserDefaults.standard.float(forKey: "charge")
        let cur_charge=UserDefaults.standard.float(forKey: "cur_charge")
        print(charge)
        if(cur_charge==nil){
        main.updateMyProgress(max: CGFloat(charge),mincur: 0,maxcur: 10, max_text: String(charge), cur_text: "10")
        }else{
        main.updateMyProgress(max: CGFloat(charge),mincur: CGFloat(UserDefaults.standard.float(forKey: "cur_charge")) ,maxcur: CGFloat(UserDefaults.standard.float(forKey: "cur_charge")+10), max_text: String(charge), cur_text: "10")
        }
        
    }
    
    func rewardBasedVideoAdWillLeaveApplication(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        print("Reward based video ad will leave application.")
    }
    
    func rewardBasedVideoAd(_ rewardBasedVideoAd: GADRewardBasedVideoAd,
                            didFailToLoadWithError error: Error) {
        print("Reward based video ad failed to load.")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    func getScreen(main:MainScreen){
        self.main=main
    }


}
