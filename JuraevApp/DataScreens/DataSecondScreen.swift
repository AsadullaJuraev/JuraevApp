//
//  DataSecondScreen.swift
//  JuraevApp
//
//  Created by Asadulla Juraev on 10.01.2021.
//

import SwiftUI

struct DataSecondScreen: View {
    @Environment(\.presentationMode) var presentation
    var data = "No data"
    var delegate: BindingProtocol?
    var body: some View {
        
        NavigationView{
            VStack{
                Button(action: {
                    delegate?.onRecieved(value: "ACADEMY")
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Text("Send data to first screen")
                })
                Text(data).padding()
            }
            
            //Navigation Bar Item
            .navigationBarItems(
                leading: Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.backward")
                }),
                trailing: HStack{
                    Image("ic_camera")
                    Image("ic_photo")
                }
            )
            .navigationBarTitle("Second Screen",displayMode: .inline)
        }
        
    }
}

struct DataSecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        DataSecondScreen()
    }
}
