//
//  MainTabView.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct MainTabView: View {
    @Binding var selectedIndex: Int
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                LearnNow()
                    .onTapGesture {
                        selectedIndex = 0
                    }
                    .tabItem {
                        Image(systemName: "house")
                        Text("Learn Now")
                    }.tag(0)
                
                Courses()
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Courses")
                    }.tag(1)
                
                Tutorials()
                    .onTapGesture {
                        selectedIndex = 2
                    }
                    .tabItem {
                        Image(systemName: "square.stack.3d.down.right")
                        Text("Tutorials")
                    }.tag(2)
                
                Livestreams()
                    .onTapGesture {
                        selectedIndex = 3
                    }
                    .tabItem {
                        Image(systemName: "tv")
                        Text("Livestreams")
                    }.tag(3)
                
                More()
                    .onTapGesture {
                        selectedIndex = 4
                    }
                    .tabItem {
                        Image(systemName: "ellipsis.circle")
                        Text("More")
                    }.tag(4)
            }
            .accentColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
            .navigationBarTitle(tabTitle)
        }
    }
    
    var tabTitle: String {
        switch selectedIndex {
        case 0: return "Learn Swift"
        case 1: return "Courses"
        case 2: return "Tutorials"
        case 3: return "Livestreams"
        case 4: return "More"
        default: return ""
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(selectedIndex: .constant(0))
    }
}
