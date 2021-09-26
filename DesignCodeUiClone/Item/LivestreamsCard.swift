//
//  LivestreamCards.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct LivestreamsCard: View {
    @Namespace var namespace
    var livestream: LivestreamsDummyData = livestreams[0]
    
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                HStack {
                    Text(livestream.title)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .frame(maxWidth: 200, alignment: .leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 16)
                        .padding(.top, 16)
                        .padding(.bottom, 8)
                        .multilineTextAlignment(.leading)
                    
                    VStack(spacing: 8) {
                        Image(livestream.courseLogo)
                            .resizable().frame(width: 35, height: 35)
                        Image(uiImage: #imageLiteral(resourceName: "mengto"))
                            .resizable()
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                    }
                    .padding(.trailing, 16)
                }
                
                Text(livestream.subHeadline)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                
                Spacer()
                
                BackImage(backImg: livestream.backgroundImg)
                FootText(courseText: livestream.footerText)
            }
            .frame(height: 335)
            .background( LinearGradient(grad1: livestream.gradient1, grad2: livestream.gradient2, grad3: livestream.gradient3) )
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
            .padding(20)
            
            Spacer()
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
            .matchedGeometryEffect(id: "backimg", in: namespace)
    }
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
                .multilineTextAlignment(.leading)
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
        LivestreamsCard()
    }
}
