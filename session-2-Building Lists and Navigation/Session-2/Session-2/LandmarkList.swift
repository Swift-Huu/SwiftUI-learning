//
//  ContentView.swift
//  Session-2
//
//  Created by 胡智林 on 2019/12/2.
//  Copyright © 2019 胡智林. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//       NavigationView {
//            List(landmarkData) { landmark in
//                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
//                    LandmarkRow(landmark: landmark)
//                }
//            }
//            .navigationBarTitle(Text("Landmarks"))
//
//        }
//        List(landmarkData, id: \.id) { (landmark) in
//            LandmarkRow(landmark: landmark)
//        }
        NavigationView {
            List(landmarkData) { (landmark) in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("session-2"), displayMode: .automatic)
            .navigationBarBackButtonHidden(true)
        }
    
       
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        let idd = \.self
      let each =  ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        return each
    }
}


