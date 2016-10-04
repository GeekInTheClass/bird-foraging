//
//  File.swift
//  dummy
//
//  Created by JKim on 2016. 10. 4..
//  Copyright © 2016년 JKim. All rights reserved.
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

/*func assignToBody(text: Text, body: Dictionary<ForageCategory,[Text]>) -> Dictionary<ForageCategory, [Text]> {
    var bunch = body
    if var a = bunch[text.category] {
        bunch[text.category] += [text]
        return bunch
    }
    bunch[text.category] = [text]
    return bunch
}
 */



//func createDummy() -> Dictionary<ForageCategory,[Text]> {
func createDummy() -> [Text] {
    
    
    var body:Dictionary<ForageCategory,[Text]> = [:]
    
    
    
    
    
    
    
    let butcherbird = Bird("때까치")
    
    
    
    butcherbird.speciesName = "Lanius bucephalus"
    
    butcherbird.size = 18
    
    butcherbird.imageLink = "http://images.mudfooted.com/Shrike-impaling-dunnock.jpg"
    
    butcherbird.habitat.append("낮은 산지")
    
    butcherbird.foragingType = .omnivore
    
    butcherbird.distributionMap = "http://www.hbw.com/sites/default/files/styles/medium/public/maps/bull-headed-shrike-lanius-bucephalus-distribution-map.jpg?itok=n8aDJsKh"
    
    
    
    let Text1 = Text("때까치의 먹이꼬지", species: butcherbird, category: .behavioral)
    
    Text1.text = "때까치는 그 귀여운 외양과는 달리 잔인한 습성을 보이는 것으로 유명하다. 바로 먹이꼬지(impaling prey)라는 습성이다. 때까치는 곤충과 소형 동물들을 주로 잡아먹는데, 이를 잡고나서 뾰족한 물체 위에서 떨어트려 꽂아놓는다. 때까치에서 먹이꼬지가 나타나는 이유에 대해서 다양한 가설이 제기되어 있다: (1)맹금류처럼 발톱이 발달하지 못한 때까치가 먹이를 뜯어먹기 위해 먹이를 꽂아놓는다.(2)자신의 영역을 표시하기 위해 영역 가장자리의 나뭇가지에 먹이를 꽂아놓는다. (3)겨울철을 대비하여 먹이를 저장하는 방식이다. 이외에도 많은 가설이 제기되었지만 아직 확실하게 밝혀진 것은 없다."
    
    
    
    //body = assignToBody(text: Text1, body: body)
    
    body[.behavioral] = [Text1]
    
    let coopershawk = Bird("쿠퍼매")
    
    coopershawk.speciesName = "Accipiter cooperii"
    coopershawk.size = 42
    coopershawk.imageLink = "http://dfwurbanwildlife.com/wp-content/uploads/2013/09/coopershawk-drowningvictim-006.jpg"
    coopershawk.habitat += ["산림", "강가"]
    coopershawk.foragingType = .carnivore
    coopershawk.distributionMap = "http://www.oiseaux.net/maps/images/epervier.de.cooper.png"
    
    let Text2 = Text("먹이를 익사시키는 쿠퍼매", species: coopershawk, category: .behavioral)
    
    Text2.text = "매과 새들은 자신과 비슷한 몸 크기의 먹이를 잡았을 때, 근처의 물에 담궈서 익사시켜 먹는 행동을 보이곤 한다. 먹이감의 숨을 끊어놓고 포식을 하는 다른 맹수들과 달리, 맹금들은 뼈를 부수는 경우가 아니고서는 주로 단단한 발톱으로 먹이를 쥐고 산채로 뜯어먹는다. 이때, 살아있는 먹이감들은 어떻게든 포식자의 발톱에서 벗어나려고 발버둥을 친다. 먹이감의 크기가 작다면 숨이 멎을 때까지 발톱에 쥐고 기다리거나 먹이감이 벗어나려고 해도 아랑곳하지 않고 뜯어먹을 수 있다. 하지만 먹이감의 크기가 맹금과 비슷하거나 맹금보다 클 때는 다르다. 먹이감의 힘이 맹금과 비슷하기 때문에 도망갈 확률이 높다. 따라서 일부 매과는 물가에 있을 때 자신의 먹이감을 물에 넣어 수장시키고 편안한 식사를 즐긴다."
    
    //body = assignToBody(text: Text2, body: body)
    
    body[.behavioral]! += [Text2]
    
    
    
    let mexicanJay = Bird("멕시칸제이")
    
    mexicanJay.speciesName = "Aphelocoma wollweberi"
    mexicanJay.size = 29
    mexicanJay.imageLink = "http://i.imgur.com/2wE6K9Z.jpg"
    mexicanJay.habitat += ["고산지대", "산림"]
    mexicanJay.foragingType = .omnivore
    mexicanJay.distributionMap = "http://www.oiseaux.net/maps/images/geai.de.wollweber.png"
    
    
    let Text3 = Text("견과류의 무게를 재는 멕시칸어치", species: mexicanJay, category: .behavioral)
    
    Text3.text = "견과류를 먹는 어떤 새들은 견과류의 무게를 재는 행동을 보인다. 멕시코 어치도 그 일종인데, 최근 연구에 따르면 이들은 견과류를 흔들어서 나는 소리로 무게를 판단한다고 한다. 멕시코 어치는 우선 부리에 견과류를 물고, 부리를 열었다 닫았다를 반복하여 견과류가 흔들리면서 그 안에서 나는 소리를 듣는다. 이러한 행동은 멕시코 어치가 제일 품질이 좋은 견과류를 선택하도록 해 생존에 이점을 준다."
    
    //body = assignToBody(text: Text3, body: body)
    
    body[.behavioral]! += [Text3]
    
    
    let barnOwl = Bird("원숭이올빼미")
    
    barnOwl.speciesName = "Tyto alba"
    barnOwl.size = 36
    barnOwl.imageLink = "http://s.hswstatic.com/gif/owls-silent-flight.jpg"
    barnOwl.habitat = ["숲", "사바나"]
    barnOwl.foragingType = .carnivore
    barnOwl.distributionMap = "https://wildlifepark.novascotia.ca/images/barn-owl-map.jpg"
    
    let Text4 = Text("원숭이올빼미의 소리 없는 비행", species: barnOwl, category: .histological)
    
    Text4.text = "올빼미류 새들은 소리 없는 비행을 하기로 유명하다. 다른 새들이 날개짓을 할 때 퍼덕이는 소리가 나는 것과는 다르게 올빼류의 비행은 아무런 소리도 나지 않는다. 이는 올빼미류 새들이 먹이감이 눈치채지 못하게 빠르게 습격하는 데 유용하다. 올빼미류의 소리 없는 비행은 그 깃털과 털에 비밀이 숨어있다. 우선 올빼미류의 날개깃은 그 가장자리가 다른 새들과 다르게 유연한 술처럼 되어있어서 공기의 흐름을 아주 미세한 소용돌이로 쪼갠다. 그리고 이러한 미세한 소용돌이는 올빼미류의 다른 깃털들을 지나며 더 쪼개져서 소리가 거의 나지 않도록 한다. 또한 남아있는 소리는 올빼미류의 다리와 날개 안쪽의 부드러운 솜털에 의해 흡수된다."
    
    //body = assignToBody(text: Text4, body: body)
    
    body[.histological] = [Text4]
    
    
    
    let rockDove = Bird("집비둘기")
    
    rockDove.speciesName = "Columba livia ver. Domestica"
    rockDove.size = 32
    rockDove.imageLink = "http://blogs.egu.eu/network/palaeoblog/files/2013/01/pigeon.jpg"
    rockDove.habitat += ["도심"]
    rockDove.foragingType = .omnivore
    rockDove.distributionMap = "http://zoo.sibiu.ro/images/maps/map_porumbel.png"
    
    
    
    
    let Text5 = Text("새끼에게 우유를 먹이는 집비둘기",species: rockDove, category: .histological)
    
    Text5.text = "포유류와 같이, 몇몇 새들은 새끼에게 부모의 분비물을 먹인다. 하지만, 포유류와는 다르게 암컷뿐만 아니라 수컷역시 이를 만들수 있다. 비둘기의 경우 이 분비물을 crop milk라 부른다. crop은 식도의 밑에 존재하는데, 새들이 일시적으로 음식물을 저장해두는 용도의 기관이다. crop milk는 이 crop이라는 기관의 벽에 있는 세포들로 이루어진다. 알이 부화하기 며칠 전이 되면, crop의 벽에 붙은 세포들이 왕성하게 분열하고, 벽에서 떨어져서 고단백질, 고지방의 혼합물을 만든다. crop milk에는 이뿐만 아니라 면역력 증진 물질과 항체(IgA), 항산화제 등이 포함되어 있다. 한편 crop milk가 생성되기 시작하면 부모 새들은 새끼 새들이 소화시키지 못할 이물질이 들어가는 것을 방지하기 위해 먹이 섭취를 중단한다. 이러한 crop milk의 생성과 금식은 호르몬의 분비와 관련되어 있다고 알려져있다. 외형에 있어서는, crop milk는 그 이름과 다르게 반 고체의 치즈와 같은 모양이다. 비둘기 외에도 플라밍고의 소화관, 펭귄의 식도에서도 새끼에게 먹이기 위한 분비물이 생성된다."
    
    //body = assignToBody(text: Text5, body: body)
    
    
    body[.histological]! += [Text5]
    
    
    
    
    
    let result = body[.behavioral]! + body[.histological]!
    
    
    return result
    
    
    
    
    
}









//title, species, text, image,

//species, size, image, habitat, foragingtype



//behavioral, histological







//bird instance





//text instance

