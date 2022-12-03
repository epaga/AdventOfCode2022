//
//  Puzzle2-2.swift
//  AdventOfCode2022
//

import Foundation
import SwiftUI

struct Puzzle22: View {
    
    var body: some View {
        PuzzleView(code: """
            // go through line by line
            let matches = data21.split(separator: "\\n")
            let result = matches.reduce(0) { partialResult, match in
                let moves = match.split(separator: " ")
                // Add up score based on two characters separated by space
                // only this time we need to react based on the second character
                if (moves[0] == "A") {
                    if (moves[1] == "X") {
                        return partialResult + 3 + 0
                    } else if (moves[1] == "Y") {
                        return partialResult + 1 + 3
                    } else {
                        return partialResult + 2 + 6
                    }
                } else if (moves[0] == "B") {
                    if (moves[1] == "X") {
                        return partialResult + 1 + 0
                    } else if (moves[1] == "Y") {
                        return partialResult + 2 + 3
                    } else {
                        return partialResult + 3 + 6
                    }
                } else {
                    if (moves[1] == "X") {
                        return partialResult + 2 + 0
                    } else if (moves[1] == "Y") {
                        return partialResult + 3 + 3
                    } else {
                        return partialResult + 1 + 6
                    }
                }
            }
            return "\\(result)"
""") {
            // go through line by line
            let matches = data21.split(separator: "\n")
            let result = matches.reduce(0) { partialResult, match in
                let moves = match.split(separator: " ")
                // Add up score based on two characters separated by space
                // only this time we need to react based on the second character
                if (moves[0] == "A") {
                    if (moves[1] == "X") {
                        return partialResult + 3 + 0
                    } else if (moves[1] == "Y") {
                        return partialResult + 1 + 3
                    } else {
                        return partialResult + 2 + 6
                    }
                } else if (moves[0] == "B") {
                    if (moves[1] == "X") {
                        return partialResult + 1 + 0
                    } else if (moves[1] == "Y") {
                        return partialResult + 2 + 3
                    } else {
                        return partialResult + 3 + 6
                    }
                } else {
                    if (moves[1] == "X") {
                        return partialResult + 2 + 0
                    } else if (moves[1] == "Y") {
                        return partialResult + 3 + 3
                    } else {
                        return partialResult + 1 + 6
                    }
                }
            }
            return "\(result)"
        }
    }
}

struct Puzzle22_Previews: PreviewProvider {
    static var previews: some View {
        Puzzle22()
    }
}
