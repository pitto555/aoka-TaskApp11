//
//  ViewController.swift
//  aoka-TaskuApp11
//
//  Created by aoka on 2021/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var prefectureLabel: UILabel!
    private var prefectureData = PrefectureData()
    
    @IBAction func exitCancel (segue:UIStoryboardSegue){
    }
    
    @IBAction func exitDone (segue:UIStoryboardSegue){
        let nextVC = segue.source as? NextViewController
        if let nextVcValue = nextVC?.value {
            prefectureLabel.text = prefectureData.prefecturesArray[nextVcValue]
        }
    }
}
