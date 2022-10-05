import UIKit

var greeting = "Hello, playground"

class human {
    // プロパティ
    var name: String
    //プロパティの初期化
    init(name: String) {
        self.name = name
    }
    //メソッド
    func self_intoroduction() -> String {
        return "こんにちは私の名前は\(self.name)です!!"
    }
}
//インスタンス
var me = human(name: "mat")
print(me.self_intoroduction())

class calculation {
    var multiply: Int
    
    init(multiply: Int) {
        self.multiply = multiply
    }
    
    func multiplication(targetValue : Int) -> Int {
        return multiply * targetValue
    }
}
var calc = calculation(multiply: 5)
print(calc.multiplication(targetValue:  3))

var hoge = calculation(multiply: 10)
print(hoge.multiplication(targetValue: 5))

class car {
    //プロパティを定義
    var color: String
    var company: String
    var plice: Int
    
    //initをつかってプロパティを初期化
    init(color: String, company: String, plice: Int) {
        self.color = color
        self.company = company
        self.plice = plice
    }
    
    //メソッドを定義
    func show() -> String {
        return "この車は\(self.color)色で\(self.company)の\(self.plice)円の車です"
    }
    
}
//インスタンスを作成する
var car1 = car(color: "白", company: "トヨタ", plice: 20000000)
print(car1.show())
var car2 = car(color: "青", company: "日産", plice: 1000000)
print(car2.show())


//carクラスを継承する
class newcar: car {
    var shurui: String
    
    //nenryouプロパティを作成
    var nenryou: String
    
    //nenryouプロパティを初期化
    init(color: String, company: String, plice: Int, shurui: String,nenryou:String) {
        self.shurui = shurui
        self.nenryou = nenryou
        
        super.init(color: color, company: company, plice: plice)
    }
    override func show() -> String {
        return "この車は\(self.color)色の\(self.shurui)で\(self.nenryou)で動く\(self.company)の\(self.plice)円の車です"
    }
    
}
//var car3 = newcar(color: "青", company: "ホンダ", plice: 1000000, shurui: "SUV")
//print(car3.show())
//インスタンスcar4をさくせい
var car4 = newcar(color: "青", company: "ホンダ", plice: 1000000, shurui: "SUV",nenryou: "水素")
print(car4.show())

//appleクラスを作成
//nameとpliceというプロパティを作成してください
//initを使って初期化してください
//shou2()という関数(メソッド)を作成してください
//return "この商品は\(name: self.name)で\(plice: self.plice)円です"
//インスタンス nameにAirPods pliceに400000を入れてください

class Apple{
    var name :String
    var plice: Int
    init(name:String,plice:Int){
        self.name = name
        self.plice = plice
        
    }
   func show2() -> String {
        return "この商品は\(self.name)です値段は\(self.plice)円です"
        
    }
}
var airpods = Apple(name:"Airpods",plice: 40000)
print(airpods.show2())
