//
//  Checklist.swift
//  CheckList
//
//  Created by Sai Charan Thummalapudi on 6/5/24.
//

import Foundation
import UIKit
struct checkList{
    var image: UIImage?
    var item: String
    var notification: String
}

let listObj = [checkList(image: UIImage(systemName: "gift.fill"), item: "Birthdays", notification: "2 remaining"),
               checkList(image: UIImage(systemName: "folder"), item: "Business Stuff", notification: "5 remaining"),
               checkList(image: UIImage(systemName: "scissors"), item: "Chores", notification: "All done"),
               checkList(image: UIImage(systemName: "fork.knife"), item: "Groceries", notification: "(No items)"),
               checkList(image: UIImage(systemName: "envelope"), item: "To do", notification: "3 remaining"),
               checkList(image: UIImage(systemName: "airplane"), item: "Trips", notification: "(No items)")]

struct iconList{
    var image1: UIImage?
    var icon: String
}

let iconListObj = [ iconList(image1: UIImage(systemName: "square.fill"), icon: "No Icon"), iconList(image1: UIImage(systemName: "alarm.fill"), icon: "Appointments"), iconList(image1: UIImage(systemName: "gift.fill"), icon: "Birthdays"), iconList(image1: UIImage(systemName: "scissors"), icon: "Chores"), iconList(image1: UIImage(systemName: "cup.and.saucer.fill"), icon: "Drinks"), iconList(image1: UIImage(systemName: "folder"), icon: "Folder"), iconList(image1: UIImage(systemName: "fork.knife"), icon: "Groceries"), iconList(image1: UIImage(systemName: "envelope.fill"), icon: "Inbox"), iconList(image1: UIImage(systemName: "camera"), icon: "Photos"), iconList(image1: UIImage(systemName: "airplane"), icon: "Trips")]

let listItems = ["Walk the dog", "Brush teeth", "Lead iOS Development", "Soccer Practise", "Eat ice-cream", "Dance in the rain"]

struct Calculator {
    func sum(a:Float, b:Float) -> Float {
        let c = a+b
        return c
    }
    func sub(a:Float, b:Float) -> Float {
        let c = a-b
        return c
    }
    func mul(a:Float, b:Float) -> Float {
        let c = a*b
        return c
    }
    func div(a:Float, b:Float) -> Float {
        let c = a/b
        return c
    }
    func power(a:Float) -> Float {
        let c = a*a
        return c
    }
}


