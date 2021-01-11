//
//  DataFirstScreen.swift
//  JuraevApp
//
//  Created by Asadulla Juraev on 10.01.2021.
//

import SwiftUI

struct DataFirstScreen: View, BindingProtocol {
    @State var showSecond = false
    @State var data = "No data"
    
    func onRecieved(value: String) {
        data = value
    }
    var body: some View {
        
        NavigationView{
            VStack{
                Button(action: {
                    showSecond.toggle()
                }, label: {
                    Text("Send data to second screen")
                }).sheet(isPresented: $showSecond, content: {
                    DataSecondScreen(data: "PDP ONLINE",delegate: self)
                })
                Text(data).padding()
            }
            
            //Navigation Bar Item
            .navigationBarItems(
                leading:
                    Image("ic_menu"),
                trailing: HStack{
                    Image("ic_camera")
                    Image("ic_photo")
                }
            )
            .navigationBarTitle("First Screen",displayMode: .inline)
        }
    }
}

struct DataFirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        DataFirstScreen()
    }
}
