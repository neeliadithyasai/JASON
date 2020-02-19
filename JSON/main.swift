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
    if let path = Bundle.main.path(forResource: filename, ofType: "json")
      {
          //print(path)
          
       let str = try! String(contentsOfFile: path)
          print(str)
      }
    
}

readUserInfo(filename: "singleUser")
