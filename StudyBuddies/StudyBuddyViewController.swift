//
//  StudyBuddyViewController.swift
//  StudyBuddies
//
//  Created by Gaby Ecanow on 4/29/17.
//  Copyright © 2017 Gaby Ecanow. All rights reserved.
//

import UIKit

class StudyBuddyViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var newQView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    var threadQs = [UILabel]()
    
    //let realm = try! Realm()
    //lazy var questions: Results<Question> = { self.realm.objects(Question.self) }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = newQView.frame.size
    }
    
    @IBAction func onTappedAddQuestion(_ sender: Any) {
        UIView.animate(withDuration: 0.2, animations: {
            self.newQView.frame = CGRect(x: 0, y: 0, width: self.scrollView.frame.width, height: self.newQView.frame.height + 55)
            self.scrollView.contentSize = self.newQView.frame.size
            
            for q in self.threadQs {
                q.frame = CGRect(x: q.frame.minX, y: q.frame.maxY + 5, width: q.frame.width, height: q.frame.height)
            }
        }) { (Void) in
            // create new view
            let lab = UILabel(frame: CGRect(x: 5, y: 5, width: self.newQView.frame.width - 10, height: 50))
            lab.text = "Sample Q #\(self.threadQs.count)"
            lab.font = UIFont(name: "Avenir Next Condensed", size: CGFloat(30))
            lab.textAlignment = .center
            lab.backgroundColor = UIColor.white
            
            self.newQView.addSubview(lab)
            
            // insert new question
            self.threadQs.insert(lab, at: 0)
        }
    }
    
}
