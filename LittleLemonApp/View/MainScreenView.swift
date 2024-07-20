//
//  MainScreenView.swift
//  LittleLemonApp
//
//  Created by Kate Kashko on 20.07.2024.
//

import SwiftUI

struct MainScreenView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                MenuView()
            }
        }
    }
}

#Preview {
    MainScreenView()
}
