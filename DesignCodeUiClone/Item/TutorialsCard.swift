//
//  TutorialCards.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct TutorialsCard: View {
    var width: CGFloat = 140
    var height: CGFloat = 260
    var scrollCardsData: ScrollCardsDummyData = scrollCardData[0]
    
    var tutorial: TutorialDummyData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Spacer()
            
            HStack {
                Spacer()
                Image(tutorial.backgroundImg)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        VStack(spacing: 8) {
                            Image(tutorial.image1)
                                .resizable().frame(width: 25, height: 25)
                            Image(tutorial.image2)
                                .resizable()
                                .frame(width: 25, height: 25)
                                .clipShape(Circle())
                        }
                        .position(x: 120, y: 30)
                    )
                Spacer()
            }
            Text(tutorial.title)
                .bold()
                .foregroundColor(.white)
                .lineLimit(2)
            
            Text(tutorial.subTitle)
                .font(.footnote)
                .foregroundColor(.white)
                .lineLimit(1)
            
            Text(tutorial.description)
                .font(.subheadline)
                .foregroundColor(.white)
                .padding(.top, 4)
                .padding(.bottom, 20)
                .lineLimit(3)
        }
        .padding(.all)
        .background(
            LinearGradient(grad1: tutorial.gradient1, grad2: tutorial.gradient2, grad3: tutorial.gradient3)
        )
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct TutorialsCard_Previews: PreviewProvider {
    static var tutorial = TutorialDummyData.tutorials[0]
    static var previews: some View {
        TutorialsCard(tutorial: tutorial)
    }
}





//Group {
//    VStack {
//        
//    }
//    .frame(width: 100, height: 60)
//    .background(
//        Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
//    )
//    .cornerRadius(20)
//    .position(x: 220, y: 516)
//    .rotationEffect(.degrees(10))
//    .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 20)
//    .overlay(
//        VStack(spacing: 0) {
//        }
//        .padding(.top, 20)
//        .padding(.horizontal, 20)
//        .frame(width: width, height: height)
//        .rotationEffect(.degrees(30))
//        .background(
//            LinearGradient(grad1: scrollCardsData.gradient1, grad2: scrollCardsData.gradient2, grad3: scrollCardsData.gradient3)
//        )
//        .cornerRadius(30)
//        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 20)
//    )
//}
