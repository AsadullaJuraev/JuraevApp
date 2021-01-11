//
//  LottieAnimation.swift
//  JuraevApp
//
//  Created by Asadulla Juraev on 11.01.2021.
//

import SwiftUI

struct LottieAnimation: View {
    @State var play = 0
    
    var body: some View {
        
        VStack{
            LottieView(name: "43260-facebook-tab", play: $play)
                .frame(width: 400, height: 400, alignment: .center)
            Button("Play"){ self.play += 1 }
        }
        
    }
}

struct LottieAnimation_Previews: PreviewProvider {
    static var previews: some View {
        LottieAnimation()
    }
}
