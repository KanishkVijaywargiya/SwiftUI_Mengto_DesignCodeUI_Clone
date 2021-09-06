//
//  ContentView.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    
    var body: some View {
        MainTabView(selectedIndex: $selectedIndex)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
