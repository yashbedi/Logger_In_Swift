//
//  Logger.swift
//
//  Created by Yash Bedi on 22/01/19.
//  Copyright © 2019 Yash Bedi. All rights reserved.
//

import Foundation

let kLogsFile = "MyLogFile"
let kLogsDirectory = "MyData"

class Logger {
    
    class func writeToFile(_ text: String, to fileNamed: String, folder: String = kLogsDirectory) {
        
        let textToBeAppended = "\(Date()) "+text+"\n"
        
        guard let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first else { return }
        
        guard let writePath = NSURL(fileURLWithPath: path).appendingPathComponent(folder) else { return }
        
        print(writePath.absoluteString)
        
        let file = writePath.appendingPathComponent(fileNamed + ".txt")
        
        if let fileHandle = FileHandle(forWritingAtPath: file.path) {
            fileHandle.seekToEndOfFile()
            fileHandle.write(textToBeAppended.data(using: .utf8)!)
        } else {
            print("File does not exists")
            try? FileManager.default.createDirectory(atPath: writePath.path, withIntermediateDirectories: true)
            try? textToBeAppended.write(to: file, atomically: false, encoding: String.Encoding.utf8)
        }
    }
}
