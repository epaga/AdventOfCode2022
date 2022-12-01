//
//  PuzzleView.swift
//  AdventOfCode2022
//
//  Created by John Goering on 01.12.22.
//

import Foundation
import SwiftUI

struct PuzzleView: View {
    var code:String
    var compute:() -> String
    @State
    var answer = "Computing..."
    
    var body: some View {
        VStack {
            ScrollView {
                CodeView(code:code)
            }
            .frame(maxWidth: .infinity)

            Text("Answer: \(answer)")
                .font(Font.system(size: 20, weight: .heavy, design: .monospaced))
        }
        .padding()
        .onAppear {
            DispatchQueue.global().async {
                let answer = self.compute()
                DispatchQueue.main.async {
                    self.answer = answer
                }
            }
        }
    }
}
