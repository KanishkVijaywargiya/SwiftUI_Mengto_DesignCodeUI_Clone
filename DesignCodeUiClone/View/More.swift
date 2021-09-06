//
//  More.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct More: View {
    @AppStorage("isDarkMode") var  isDarkMode: Bool = false
    
    var body: some View {
        Form {
            Toggle(isOn: $isDarkMode) {
                Text("Dark Mode")
            }
        }
    }
}

struct More_Previews: PreviewProvider {
    static var previews: some View {
        More()
    }
}
