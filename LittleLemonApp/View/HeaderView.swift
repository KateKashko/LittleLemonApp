//
//  HeaderView.swift
//  LittleLemonApp
//
//  Created by Kate Kashko on 20.07.2024.
//

import SwiftUI

struct HeaderView: View {
    @State var isLoggedIn = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("logo")
                    HStack {
                        Spacer()
                        if isLoggedIn {
                            NavigationLink(destination: UserProfile()) {
                                Image("profile-image-placeholder")
                                    .resizable()
                                    .aspectRatio( contentMode: .fit)
                                    .frame(maxHeight: 50)
                                    .clipShape(Circle())
                                    .padding(.trailing)
                            }
                        }
                    }
                }
            }
        }
        .frame(maxHeight: 60)
        .padding(.bottom)
        .onAppear() {
            if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                isLoggedIn = true
            } else {
                isLoggedIn = false
            }
        }
    }
}

#Preview {
    HeaderView()
}
