//
//  main.swift
//  JASON
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

func readTextFile(filename: String)
{
    print(Bundle.main.bundlePath)
    if let path = Bundle.main.path(forResource: filename, ofType: "txt")
    {
        //print(path)
        
        let str = try! String(contentsOfFile: path)
        print(str)
    }
  
    
}


//readTextFile(filename: "data")


func readUserInfo(filename: String) {
    let filePath = Bundle.main.url(forResource: filename, withExtension: "json")
    guard let path = filePath else {
          print("Invalid file path found")
                return
      }
    guard let data = try? Data(contentsOf: path) else {
        print("Error while read Data from URL")
        return
    }
    guard let json = try? JSONSerialization.jsonObject(with: data, options: [])  else
    {
        print("Error while reading Json Data from file")
        return
    }

    print(json)
}

readUserInfo(filename: "singleUser")
