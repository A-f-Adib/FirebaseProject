//
//  ContentView.swift
//  FirebaseProject
//
//  Created by A.f. Adib on 2/2/24.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State private var email = ""
    
    @State private var password = ""
    
    @State private var userIsLoggedIn = false
    
    
    var body: some View {
        
        if userIsLoggedIn{
            
        } else {
            content
        }
       
    }
    
    var content: some View {
        ZStack {
            
            Color.black
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.orange, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1200, height: 500)
                .rotationEffect(.degrees(135))
                .offset(y: -350)
            
            
            VStack(spacing: 20) {
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                    .offset(x: -100, y: -100)
                
                
                
                TextField("Email" , text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                
                
                
                
                SecureField("Password", text: $password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty) {
                        Text("Password")
                            .foregroundColor(.white)
                            .bold()
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                
                
                Button {
                    register()
                } label: {
                    Text("Sign Up")
                        .bold()
                        .frame(width: 200, height: 40)
                        
                        .background(.linearGradient(colors: [.orange, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .cornerRadius(10)
                        .offset(y: 80)
                        .foregroundColor(.white)
                    
                }
                
                Button{
                    login()
                } label: {
                    Text("Alrady have an account? Login")
                        .bold()
                        .foregroundColor(.white)
                        .offset(y: 80)
                }
               
            }
            .frame(width: 350)
            .onAppear {
                Auth.auth().addStateDidChangeListener { auth, user in
                    if user != nil {
                        userIsLoggedIn.toggle()
                    }
                }
            }
            
        }.ignoresSafeArea()
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    func login(){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func placeholder<Content: View> (
        when show: Bool,
        alg: Alignment = .leading,
        @ViewBuilder placeholder : () -> Content) -> some View {
        
            ZStack(alignment: alg) {
                placeholder().opacity(show ? 1 : 0)
              self
        }
    }
}
