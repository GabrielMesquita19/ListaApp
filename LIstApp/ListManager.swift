//
//  ListManager.swift
//  LIstApp
//
//  Created by User on 28/06/22.
//

import Foundation

class Lists: Codable{
    
    var product: String = ""
    var quantity: String = ""
    
    init(product: String, quantity: String) {
        self.product = product
        self.quantity = quantity
    }
}

class ListManager {
    static let shared = ListManager()
    let ud = UserDefaults.standard
    var list: [Lists] = []
    
    private init() {
        if let data = ud.data(forKey: "list"), let lists = try? JSONDecoder().decode([Lists].self, from: data){
        self.list = lists
        }
    }
    func saveList() {
        if let data = try? JSONEncoder().encode(list){
            ud.setValue(data, forKey: "list")
        }
    }
    func addItem(lista: Lists) {
        list.append(lista)
        saveList()
    }
    func removeList(at index: Int) {
        list.remove(at: index)
        saveList()
    }
}
