//
//  DataManegar.swift
//  fitness
//
//  Created by Yasr Alajmi on 07/09/2022.
//

import SwiftUI
import Firebase

class DateManegar: ObservableObject {
    @Published var Dogs: [Dog] = []
    
    
    init() {
        fetchDogs()
        
    }
    
    func fetchDogs(){
        Dogs.removeAll()
        let db = Firestore.firestore()
        let ref  = db.collection("Dogs")
        ref.getDocuments { snapshot, erroe in
            guard erroe == nil else {
                print(erroe!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let breed = data["breed"] as? String ?? ""
                    
                    let dog = Dog(id: id, breed: breed)
                    self.Dogs.append(dog)
                }
            }
        }
    }
}
