//
//  ContentView.swift
//  AdventOfCode2022
//
//  Created by John Goering on 01.12.22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        let count = nametoPuzzle.count
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(0..<count) {
                        i in
                        SinglePuzzleView(puzzle: nametoPuzzle.keys.sorted()[i])
                    }
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity)
    }
}

var nametoPuzzle:[String:AnyView] = [
    "Puzzle 1-1" : AnyView(Puzzle11()),
    "Puzzle 1-2" : AnyView(Puzzle12()),
    "Puzzle 2-1" : AnyView(Puzzle21()),
    "Puzzle 2-2" : AnyView(Puzzle22()),
    "Puzzle 3-1" : AnyView(Puzzle31()),
    "Puzzle 3-2" : AnyView(Puzzle32()),
    "Puzzle 4-1" : AnyView(Puzzle41()),
    "Puzzle 4-2" : AnyView(Puzzle42()),
    "Puzzle 5-1" : AnyView(Puzzle51()),
    "Puzzle 5-2" : AnyView(Puzzle52()),
]

struct SinglePuzzleView: View {
    var puzzle:String
    var body: some View {
        return AnyView(NavigationLink {
            nametoPuzzle[puzzle]!
                .frame(maxWidth: .infinity)
        } label: {
            Label(puzzle, systemImage: "folder")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
