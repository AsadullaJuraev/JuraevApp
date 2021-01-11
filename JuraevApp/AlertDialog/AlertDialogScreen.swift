//
//  AlertDialogScreen.swift
//  JuraevApp
//
//  Created by Asadulla Juraev on 10.01.2021.
//

import SwiftUI

struct AlertDialogScreen: View {
    @State var showingAlert = false
    @State var isSheet = false
    var actionSheet: ActionSheet{
        let title = "iOS"
        let message = "Here we go"
        return ActionSheet(title: Text(title), message: Text(message), buttons: [
            .default(Text("OK")),
            .destructive(Text("NO"))
        ])
    }
    var body: some View {
        TabView{
            //first tab
            Button(action: {
                showingAlert = true
            }, label: {
                Text("Alert Dialog").font(.title)
            }).alert(isPresented: $showingAlert, content: {
                let title = "iOS"
                let message = "Here we go"
                return Alert(title: Text(title), message: Text(message), primaryButton: .destructive(Text("NO")), secondaryButton: .default(Text("OK")))
            })
            
            
                .tabItem ({
                    Image(systemName: "circle")
                    Text("Alert")
                })
            
            //second tab
            Button(action: {
                isSheet = true
            }, label: {
                Text("Action Sheet").font(.title)
            }).actionSheet(isPresented: $isSheet, content: {
                self.actionSheet
            })
                .tabItem ({
                    Image(systemName: "circle")
                    Text("Sheet")
                })
        }
    }
}

struct AlertDialogScreen_Previews: PreviewProvider {
    static var previews: some View {
        AlertDialogScreen()
    }
}
