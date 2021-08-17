//
//  ContentView.swift
//  lightController
//
//  Created by 羅珮珊 on 2021/8/17.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    var body: some View {
        VStack{
            Text("GYM")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//struct HeaderView: View {
//    var body: some View{
//        VStack(alignment: .leading, spacing: 2){
//            Text("GYM")
//                .font(.system(.largeTitle, design: .rounded))
//                .fontWeight(.black)
//
//            Text("Light Controller")
//                .font(.system(.largeTitle, design: .rounded))
//                .fontWeight(.black)
//        }
//    }
//}
//            HStack{
//                SceneView(scene: SCNScene(named: models[index].modelName), options: [.autoenablesDefaultLighting, .allowsCameraControl])
//                //setting custom frame
//                    .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 3, alignment: .topLeading)
//                    .border(Color.blue)
//                Spacer(minLength: 0)
//            }

//Data Model...
struct Model: Identifiable {
    
    var id: Int
    var name: String
    var modelName: String
    var details: String
}

