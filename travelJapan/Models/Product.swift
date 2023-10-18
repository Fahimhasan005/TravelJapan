//
//  Product.swift
//  travelJapan
//
//  Created by Fahim Hasan on 2023/07/31.
//

import Foundation
struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image : String
    var price : Int
    
}

var productList = [Product(name: "SummerFuji scenery", image: "scenery1", price: 100),
                   //Product(name: "WinterFuji scenery", image: "scenery2", price: 100),
                   Product(name: "Okinawa3 ", image: "scenery3", price: 200),
                   Product(name: "Okinawa4 ", image: "scenery4", price: 200),
                   Product(name: "Okinawa5 ", image: "scenery5", price: 200),
                   Product(name: "Okinawa6 ", image: "scenery6", price: 200),
                   Product(name: "Okinawa7 ", image: "scenery7", price: 200),
                   Product(name: "Okinawa8 ", image: "scenery8", price: 200),
                   Product(name: "Okinawa9 ", image: "scenery9", price: 200),
                   Product(name: "Okinawa10", image: "scenery10", price: 200),
                   Product(name: "Okinawa11 ", image: "scenery11", price: 200),
                   Product(name: "Okinawa12 ", image: "scenery12", price: 200),
                   Product(name: "Okinawa13 ", image: "scenery13", price: 200),
                   Product(name: "Okinawa14 ", image: "scenery14", price: 200),
                   Product(name: "Okinawa15 ", image: "scenery15", price: 200)]
