//
//  Parse.swift
//  random-test
//
//  Created by 北舘友頼 on 2023/04/11.
//

import Foundation

func parse(){
    
    var output = ""
    
    while true{
        print(output)
        let line = readLine()!.components(separatedBy: " ")
        if line == ["end"]{
            break
        }
        
        switch line[0]{
        case "int":
            output += IntVariable(lowerConstraint: Int64(line[1])!, upperConstraint: Int64(line[2])!).makeRandomCase()
            
        case "str":
            output += StringVariable(lengthLowerConstraint: Int64(line[1])!, lengthUpperConstraint:  Int64(line[2])!, stringSet: line[3]).makeRandomCase()
            
        case "dbl":
            output += DoubleVariable(lowerConstraint: Double(line[1])!, upperConstraint: Double(line[2])!).makeRandomCase()
            

        case "row":
            if line[1] == "int"{
                output += RowIntVariable(rowSize: Int64(line[2])!, lowerConstraint: Int64(line[3])!, upperConstraint: Int64(line[4])!).makeRandomCase()
            }
        case "col":
            if line[1] == "int"{
                output += ColumnIntVariable(columnSize: Int64(line[2])!, lowerConstraint: Int64(line[3])!, upperConstraint: Int64(line[4])!).makeRandomCase()
            }
        default:
            return
        }
        
    }
}
