//
//  File.swift
//  birdForag
//
//  Created by itct07 on 2016. 9. 27..
//  Copyright © 2016년 itct07. All rights reserved.
//

import Foundation





//enum

enum ForagingType {
    case herbivore
    case omnivore
    case carnivore
}

enum ForageCategory{
    case behavioral
    case histological
}



//Class

class Bird {
    let name:String
    var speciesName:String?
    var size:Double?
    var imageLink:String?
    var habitat:[String]
    var foragingType:ForagingType?
    var distributionMap:String?
    
    init(_ name:String) {
        self.name = name
        self.habitat = []
    }
    
}




class Text {
    var title:String
    var species:Bird
    var text:String
    var category:ForageCategory
    
    init(_ title:String, species:Bird, text:String = "", category:ForageCategory){
        self.title = title
        self.species = species
        self.text = text
        self.category = category
        
    }
}



//function

func createDummy() -> Dictionary<ForageCategory,[Text]> {
    
    var body:Dictionary<ForageCategory,[Text]> = [:]
    
    
    
    let butcherbird = Bird("때까치")
    
    butcherbird.speciesName = "Lanius bucephalus"
    butcherbird.size = 18
    butcherbird.imageLink = "http://images.mudfooted.com/Shrike-impaling-dunnock.jpg"
    butcherbird.habitat.append("낮은 산지")
    butcherbird.foragingType = .omnivore
    butcherbird.distributionMap = "http://www.hbw.com/sites/default/files/styles/medium/public/maps/bull-headed-shrike-lanius-bucephalus-distribution-map.jpg?itok=n8aDJsKh"
    
    let Text1 = Text("때까치의 먹이꼬지", species: butcherbird, category: .behavioral)
    Text1.text = ""
    
    body[Text1.category] = [Text1]
    
    let coopershawk = Bird("쿠퍼스호크")
    
    
    return body
    
    
}




//title, species, text, image,
//species, size, image, habitat, foragingtype

//behavioral, histological



//bird instance


//text instance






