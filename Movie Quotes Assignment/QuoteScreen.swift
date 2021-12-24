//
//  QuoteScreen.swift
//  Movie Quotes Assignment
//
//  Created by admin on 24/12/2021.
//

import UIKit

class QuoteScreen: UIViewController {
    
    
    
    struct qoutesStruct{


    let qoutesOfmovi = [
    ("I see dead people.","The six seance"),
    ("Why so serious?","Joker"),
    ("To infinity … and beyond!","Toy Store"),
    ("Nothing's more important than family.","Coco"),
    ("This is what life looks like. A home, people who love each other, safe place. You should take a moment and feel it","Logan"),
    ("with great power comes great responsibility","Spider-Man"),
    ("Success is not final, failure is not fatal. It is the courage to continue that counts.","Darkesr Hour "),
    ("I never look back, darling! It distracts from the now","Moana")

    ]

    }
    
    var movinames : String?
    let qoutesdisplay = qoutesStruct()
    
    @IBOutlet weak var qouteslbl: UILabel!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        for quote in qoutesdisplay.qoutesOfmovi{
                      if quote.1 == movinames{
                          qouteslbl.text = quote.0
                        }
    }
    
    }
    
}



  
