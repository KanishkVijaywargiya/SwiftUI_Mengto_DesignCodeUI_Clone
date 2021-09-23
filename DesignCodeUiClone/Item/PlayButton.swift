//
//  PlayButton.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 23/09/21.
//

import SwiftUI

struct PlayButton: View {
    var body: some View {
        VStack {
            Image(systemName: "play")
                .font(.system(size: 60))
                .foregroundColor(.init(UIColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))))
//                .rotationEffect(.degrees(90))
                .padding(40)
                .background(BlurView(style: .systemMaterialDark))
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]),
                            startPoint: .top,
                            endPoint: .bottom
                        ), lineWidth: 1)
                )
                .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
            
            videoText
        }
    }
    
    // watch video text ui
    @ViewBuilder
    var videoText: some View {
        VStack(alignment: .center, spacing: 8) {
            Text("Watch video")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.white)
            Text("1:13:32")
                .font(.system(size: 16))
                .foregroundColor(.white)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 8)
        .background(BlurView(style: .systemMaterialDark))
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(LinearGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]),
                    startPoint: .top,
                    endPoint: .bottom
                ), lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}
