//
//  NextViewController.swift
//  aoka-TaskuApp11
//
//  Created by aoka on 2021/04/22.
//

import UIKit

class NextViewController: UIViewController {
    
   private var prefectureData = PrefectureData()
   var value:Int?
}

extension NextViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       prefectureData.prefecturesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        cell.textLabel?.text = prefectureData.prefecturesArray[indexPath.row]
        return cell
    }
}

extension NextViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        value = Int(indexPath.row) 
        performSegue(withIdentifier: "Segue", sender: nil)
    }
}
