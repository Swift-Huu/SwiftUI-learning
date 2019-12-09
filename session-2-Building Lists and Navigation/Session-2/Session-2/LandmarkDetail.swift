//
//  LandmarkDetail.swift
//  Session-2
//
//  Created by 全宇宙最帅的人 on 2019/12/9.
//  Copyright © 2019 胡智林. All rights reserved.
//

import SwiftUI
struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
//                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            //            print(landmark.image)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack(alignment: .top) {
                    Text(landmark.park).font(.subheadline)
                    Spacer()
                    Text(landmark.state).font(.subheadline)
                }
                
            }
            .padding()
            Spacer()
            
        }.navigationBarTitle(Text("Detail"), displayMode: .inline)
        
    }
}
struct LandmarkDetail_Preview: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
