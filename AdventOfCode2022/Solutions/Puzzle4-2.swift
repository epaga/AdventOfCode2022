//
//  Puzzle1-1.swift
//  AdventOfCode2022
//

import Foundation
import SwiftUI

struct Puzzle42: View {
    var body: some View {
        PuzzleView(code: """
            // split into assignment pairs
            let assignmentPairs = data4.split(separator: "\\n")
            let result = assignmentPairs.reduce(0) {
                runningCount, assignmentPair in
                let assignments = assignmentPair.split(separator: ",")
                // split each one by "-"
                let assignment1 = assignments[0].split(separator: "-")
                let assignment2 = assignments[1].split(separator: "-")
                // check if either are inside the other, if so, add one to the count
                if  Int(assignment1[0])! >= Int(assignment2[0])! && Int(assignment1[1])! <= Int(assignment2[1])! ||
                    Int(assignment2[0])! >= Int(assignment1[0])! && Int(assignment2[1])! <= Int(assignment1[1])! {
                    return runningCount + 1
                }
                return runningCount
            }
            return "\\(result)"
    """) {
            // split into assignment pairs
            let assignmentPairs = data4.split(separator: "\n")
            let result = assignmentPairs.reduce(0) {
                runningCount, assignmentPair in
                let assignments = assignmentPair.split(separator: ",")
                // split each one by "-"
                let assignment1 = assignments[0].split(separator: "-")
                let assignment2 = assignments[1].split(separator: "-")
                // check if either are inside the other, if so, add one to the count
                if  Int(assignment1[0])! >= Int(assignment2[0])! && Int(assignment1[0])! <= Int(assignment2[1])! ||
                    Int(assignment2[0])! >= Int(assignment1[0])! && Int(assignment2[0])! <= Int(assignment1[1])! ||
                    Int(assignment1[1])! >= Int(assignment2[0])! && Int(assignment1[1])! <= Int(assignment2[1])! ||
                    Int(assignment2[1])! >= Int(assignment1[0])! && Int(assignment2[1])! <= Int(assignment1[1])!
                {
                    return runningCount + 1
                }
                return runningCount
            }
            return "\(result)"
        }
    }
}

struct Puzzle42_Previews: PreviewProvider {
    static var previews: some View {
        Puzzle11()
    }
}
