//
//  Puzzle5-1.swift
//  AdventOfCode2022
//

import Foundation
import SwiftUI

struct Puzzle51: View {
    
    var body: some View {
        PuzzleView(code: """
            var words = data5Words
            data5Commands.split(separator: "\\n").forEach {
                line in
                let components = line.split(separator: " ")
                let howmany = Int(String(components[1]))!
                let from = Int(String(components[3]))!-1
                let to = Int(String(components[5]))!-1
                words[to] = words[from].substring(to: howmany).reversed() + words[to]
                words[from] = words[from].substring(from: howmany)
            }
            let result = words.reduce(into: "") { tmp, word in
                tmp = tmp + word.substring(to: 1)
            }
            return "\\(result)"
    """) {
            var words = data5Words
            data5Commands.split(separator: "\n").forEach {
                line in
                let components = line.split(separator: " ")
                let howmany = Int(String(components[1]))!
                let from = Int(String(components[3]))!-1
                let to = Int(String(components[5]))!-1
                words[to] = words[from].substring(to: howmany).reversed() + words[to]
                words[from] = words[from].substring(from: howmany)
            }
            let result = words.reduce(into: "") { tmp, word in
                tmp = tmp + word.substring(to: 1)
            }
            return "\(result)"
        }
    }
}

struct Puzzle51_Previews: PreviewProvider {
    static var previews: some View {
        Puzzle51()
    }
}
