//
//  LivestreamCards.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct LivestreamsCard: View {
    var title: String
    var courseLogo: String
    var subHeadline: String
    var gradient1: Color
    var gradient2: Color
    var gradient3: Color
    var backgroundImg: UIImage
    var footerText: String
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text(title)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: 200, alignment: .leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    .padding(.bottom, 8)

                VStack(spacing: 8) {
                    Image(courseLogo)
                        .resizable().frame(width: 35, height: 35)
                    Image(uiImage: #imageLiteral(resourceName: "mengto"))
                        .resizable()
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                }
                .padding(.trailing, 16)
            }
            
            Text(subHeadline)
                .font(.subheadline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            
            Spacer()
            
            BackImage(backImg: backgroundImg)
            FootText(courseText: footerText)
        }
        .frame(height: 335)
        .background( LinearGradient(grad1: gradient1, grad2: gradient2, grad3: gradient3) )
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
        .padding(20)
    }
}

// custom background image
@ViewBuilder
func BackImage(backImg: UIImage) -> some View {
    Image(uiImage: backImg)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(height: 20)
        .padding(.horizontal, 20)
}

// custom linear gradient
@ViewBuilder
func LinearGradient(grad1: Color, grad2: Color, grad3: Color) -> some View {
    LinearGradient(
        gradient: Gradient(stops: [
            .init(color: grad1, location: 0),
            .init(color: grad2, location: 0.62),
            .init(color: grad3, location: 1)
        ]),
        startPoint: .bottomTrailing,
        endPoint: .topLeading
    )
}

// foot text
@ViewBuilder
func FootText(courseText: String) -> some View {
    HStack {
        VStack(alignment: .leading, spacing: 4) {
            Text("This is a compilation of the \(courseText) live streams hosted by Meng. Over there he talks and teaches how to use design systems, typography, navigation, iOS 14 Designs.")
        }
        .lineLimit(2)
        .font(.subheadline)
        .foregroundColor(.white)
        .padding(.horizontal)
        
        Image(systemName: "chevron.right.circle")
            .frame(width: 36, height: 36)
            .font(.system(size: 35, weight: .thin))
            .foregroundColor(.white)
            .padding(12)
    }
    .padding(12)
    .background(BlurView(style: .light))
    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
}

struct LivestreamsCard_Previews: PreviewProvider {
    static var previews: some View {
        LivestreamsCard(title: "SwiftUI Livestreams", courseLogo: "swiftuiLogo", subHeadline: "13 section - 17 hours", gradient1: Color(#colorLiteral(red: 0.776, green: 0.266, blue: 0.988, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.356, green: 0.348, blue: 0.870, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.357, green: 0.349, blue: 0.870, alpha: 1)), backgroundImg: #imageLiteral(resourceName: "livestreams1"), footerText: "abc")
    }
}
