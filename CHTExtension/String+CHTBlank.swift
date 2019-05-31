//
//  String+CHTBlank.swift
//  SwiftDemo
//
//  Created by Roy on 2019/5/31.
//  Copyright © 2019 Roy. All rights reserved.
//

// reference: https://useyourloaf.com/blog/empty-strings-in-swift/

/*
 " "        // space
 "\t\r\n"   // tab, return, newline
 "\u{00a0}" // Unicode non-breaking space
 "\u{2002}" // Unicode en space
 "\u{2003}" // Unicode em space
 */

import Foundation

/*
 "Hello".isBlank        // false
 "   Hello   ".isBlank  // false
 "".isBlank             // true
 " ".isBlank            // true
 "\t\r\n".isBlank       // true
 "\u{00a0}".isBlank     // true
 "\u{2002}".isBlank     // true
 "\u{2003}".isBlank     // true
 */
extension String {
    var isBlank: Bool {
        return allSatisfy({ $0.isWhitespace })
    }
}

// optional strings
/*
 var title: String? = nil
 title.isBlank            // true
 title = ""
 title.isBlank            // true
 title = "  \t  "
 title.isBlank            // true
 title = "Hello"
 title.isBlank            // false
 */
extension Optional where Wrapped == String {
    var isBlank: Bool {
        return self?.isBlank ?? true
    }
}
