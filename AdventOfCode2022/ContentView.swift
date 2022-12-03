//
//  ContentView.swift
//  AdventOfCode2022
//
//  Created by John Goering on 01.12.22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    NavigationLink {
                        Puzzle11()
                            .frame(maxWidth: .infinity)
                    } label: {
                        Label("Puzzle 1-1", systemImage: "folder")
                    }
                    NavigationLink {
                        Puzzle12()
                            .frame(maxWidth: .infinity)
                    } label: {
                        Label("Puzzle 1-2", systemImage: "folder")
                    }
                    NavigationLink {
                        Puzzle21()
                            .frame(maxWidth: .infinity)
                    } label: {
                        Label("Puzzle 2-1", systemImage: "folder")
                    }
                    NavigationLink {
                        Puzzle22()
                            .frame(maxWidth: .infinity)
                    } label: {
                        Label("Puzzle 2-2", systemImage: "folder")
                    }
                    NavigationLink {
                        Puzzle31()
                            .frame(maxWidth: .infinity)
                    } label: {
                        Label("Puzzle 3-1", systemImage: "folder")
                    }
                    NavigationLink {
                        Puzzle32()
                            .frame(maxWidth: .infinity)
                    } label: {
                        Label("Puzzle 3-2", systemImage: "folder")
                    }
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
