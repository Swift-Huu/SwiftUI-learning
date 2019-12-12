//
//  UserData.swift
//  Session-2
//
//  Created by 全宇宙最帅的人 on 2019/12/10.
//  Copyright © 2019 胡智林. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    
}
