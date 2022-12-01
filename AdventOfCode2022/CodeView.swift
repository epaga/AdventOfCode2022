//
//  CodeView.swift
//  AdventOfCode2022
//
//  Created by John Goering on 01.12.22.
//

import Foundation
import SwiftUI
struct CodeView: View {
    var code:String
    func applyRegexes(_ prettyCode:NSMutableAttributedString, _ regexes:[String], _ color:NSColor) {
        regexes.forEach {
            keyword in
            let regex = try! NSRegularExpression(pattern: "\(keyword)")
            let matches = regex.matches(in: prettyCode.string,
                          range: NSRange(location:0, length: prettyCode.string.utf16.count))
            matches.forEach {
                match in
                prettyCode.addAttribute(NSAttributedString.Key.foregroundColor,
                                        value: color,
                                        range: NSRange(location:match.range.location, length:match.range.length))
            }
        }
    }
    var prettyCode:NSMutableAttributedString {
        get {
            let prettyCode = NSMutableAttributedString(string:code)
            applyRegexes(prettyCode, syntaxregex.keywords.map{"\\b\($0)\\b"}, syntaxcolor.keywordColor)
            applyRegexes(prettyCode, syntaxregex.funcCalls, syntaxcolor.funcColor)
            applyRegexes(prettyCode, syntaxregex.strings, syntaxcolor.stringColor)
            applyRegexes(prettyCode, syntaxregex.comments, syntaxcolor.commentColor)
            return prettyCode
        }
    }
    var body: some View {
        Text(AttributedString(prettyCode))
        .fontDesign(Font.Design.monospaced)
        .padding()
    }
}

struct syntaxregex {
    static let keywords = ["associatedtype","class","deinit","enum","extension","fileprivate","func","import",
                           "init","inout","internal","let","open","operator","private","precedencegroup","protocol",
                           "public","rethrows","static","struct","subscript","typealias","var","break","case",
                           "catch","continue","default","defer","do","else","fallthrough","for","guard","if","in",
                           "repeat","return","throw","switch","where","while","Any","as","catch","false","is","nil",
                           "rethrows","self","Self","super","throw","throws","true","try","associativity",
                           "convenience","didSet","dynamic","final","get","indirect","infix","lazy","left","mutating",
                           "none","nonmutating","optional","override","postfix","precedence","prefix","Protocol",
                           "required","right","set","some","Type","unowned","weak","willSet","#available",
                           "#colorLiteral","#column","#dsohandle","#elseif","#else","#endif","#error","#fileID",
                           "#fileLiteral","#filePath","#file","#function","#if","#imageLiteral","#keyPath","#line",
                           "#selector","#sourceLocation","#warning"]
    static let funcCalls = ["(?<=\\.)\\w+"]
    static let strings = ["\\\"[^\\\"]*\\\""]
    static let comments = ["//[^\n]+"]
}
struct syntaxcolor {
    static let keywordColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    static let funcColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    static let stringColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
    static let commentColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
}
