//
//  ViewController.swift
//  TestCachingJson
//
//  Created by HaLam on 10/30/17.
//  Copyright © 2017 HaLam. All rights reserved.
//

import UIKit
//import AwesomeCache
//import SwiftyJSON
//import Alamofire

class ViewController: UIViewController {
    
    //    let cachesData = try? Cache<NSDictionary>(name: "SportFeedBack")
//        let cachesData = try? Cache<String>(name: "SportFeedBack")
//    let jsonSwifty = JSON(["name", "age"])
//    let cachesAwesome = try? Cache<JSON>(name: "SportFeedBack")
    
    func saveToJsonFile() {
        // Get the url of Persons.json in document directory
        guard let documentDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let fileUrl = documentDirectoryUrl.appendingPathComponent("Persons.json")
        
        let personArray =  [["person": ["name": "Dani", "age": "24"]], ["person": ["name": "ray", "age": "70"]]]
//        let person2 = jsonSwifty.arrayValue
        let person2 = "lam"
        
        // Transform array into data and save it into file
        do {
//            let data = try JSONSerialization.data(withJSONObject: person2, options: [])
            try person2.write(to: fileUrl, atomically: false, encoding: .utf8)
//            try data.write(to: fileUrl, options: [])
        } catch {
            print(error)
        }
    }
    
    func retrieveFromJsonFile() {
        // Get the url of Persons.json in document directory
        guard let documentsDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let fileUrl = documentsDirectoryUrl.appendingPathComponent("Persons.json")
        
        // Read data from .json file and transform data into an array
        do {
            let text2 = try String(contentsOf: fileUrl, encoding: .utf8)
            print()
//            let data = try Data(contentsOf: fileUrl, options: [])
//            guard let personArray = try JSONSerialization.jsonObject(with: data, options: [])
//                as? [SwiftyJSON.JSON] //public var arrayValue: [SwiftyJSON.JSON] { get }
//                else { return }
//            print(personArray) // prints [["person": ["name": "Dani", "age": "24"]], ["person": ["name": "ray", "age": "70"]]]
        } catch {
            print(error)
        }
    }
    
    @IBAction func hgjh(_ sender: UIButton) {
        retrieveFromJsonFile()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveToJsonFile()
//        Alamofire.request("lamha", method: .post)
//            .validate().responseJSON { response in
//                switch response.result {
//                case .success(let value):
//                    let json = JSON(value)
//                    print("json: \(json)")
//                    
//                case .failure(let error):
//                    print(error)
//                }
//        }
    }

}

