//
//  Question.swift
//  StudyBuddies
//
//  Created by Gaby Ecanow on 4/29/17.
//  Copyright © 2017 Gaby Ecanow. All rights reserved.
//

import UIKit

class Question: NSObject {
    var q = ""
    var comments = [String]()
    var createdBy = ""
    
    convenience init(_ question: String, by: String) {
        self.init()
        q = question
        createdBy = by
    }
    
    func addComment(_ c: String) {
        comments.append(c)
    }
}
