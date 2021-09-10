//
//  Button.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 10/09/21.
//

import SwiftUI

struct TriggerButton: View {
    var body: some View {
        VStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]),
                startPoint: .top,
                endPoint: .bottom
            )
            .mask(
                Text("Show all".uppercased())
                    .font(.headline).bold()
                    .frame(width: 180)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.gray, lineWidth: 2)
                    )
                    .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
            )
        }
    }
}

struct TriggerButton_Previews: PreviewProvider {
    static var previews: some View {
        TriggerButton()
    }
}
