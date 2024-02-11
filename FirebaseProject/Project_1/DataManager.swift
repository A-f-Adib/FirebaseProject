//
//  DataManager.swift
//  FirebaseProject
//
//  Created by A.f. Adib on 2/11/24.
//

import SwiftUI
import Firebase

class DataManager : ObservableObject {
    @Published var cars: [Car] = []
    
    init() {
        fetchCars()
    }
    
    func fetchCars() {
        cars.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Cars")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let brand = data["brand"] as? String ?? ""
                    
                    let car = Car(id: id, brand: brand)
                    self.cars.append(car)
                }
            }
        }
    }
}
