//
//  ListView.swift
//  FirebaseProject
//
//  Created by A.f. Adib on 2/6/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List {
                Text("User 1")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
