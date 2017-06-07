//
//  SchoolViewController.swift
//  StudyBuddies
//
//  Created by Gaby Ecanow on 6/6/17.
//  Copyright © 2017 Gaby Ecanow. All rights reserved.
//

import UIKit
import Foundation

class SchoolViewController: UIViewController, UITableViewDelegate {
    
    //lazy var students: Results<Student> = { self.realm.objects(Student.self) }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //=====================================================
    // Setup and update the tableview of peers
    //=====================================================
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10//students.count
    }
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")! as UITableViewCell
        //cell.textLabel?.text = students[indexPath.row].name
        return cell
    }
    
    //=====================================================
    // Handles selection of a cell in the tableview
    //=====================================================
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // selected cell
    }
    
//    func populateDefaultStudents() {
//        
//        if students.count == 0 { // 1
//            
//            try! realm.write() { // 2
//                
//                let testPeople = ["Gaby", "Liz", "Shannon", "Jothi", "Sara" ] // 3
//                
//                for people in testPeople { // 4
//                    let newPerson = Student()
//                    newPerson.name = people
//                    self.realm.add(newPerson)
//                }
//            }
//            
//            students = realm.objects(Student.self) // 5
//        }
//    }
}
