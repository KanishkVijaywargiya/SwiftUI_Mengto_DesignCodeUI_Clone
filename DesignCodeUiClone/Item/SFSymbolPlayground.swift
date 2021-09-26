//
//  SFSymbolPlayground.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 26/09/21.
//

import SwiftUI

struct SFSymbolPlayground: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red, .purple], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            Image(systemName: "flame")
                .font(.system(size: 100, weight: .regular))
                .imageScale(.large)
                .symbolVariant(.circle.fill)
                .symbolRenderingMode(.palette)
                .foregroundStyle(
                    Color.white.opacity(0.8),
                    Color.orange,
                    LinearGradient(colors: [.orange, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 40))
            .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 0)
            
        }
    }
}

struct SFSymbolPlayground_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolPlayground()
    }
}
