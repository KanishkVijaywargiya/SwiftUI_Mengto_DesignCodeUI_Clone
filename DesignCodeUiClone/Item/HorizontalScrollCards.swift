//
//  HorizontalScrollCards.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 09/09/21.
//

import SwiftUI

struct HorizontalScrollCards: View {
    var width: CGFloat = 280
    var height: CGFloat = 360
    var scrollCardsData: ScrollCardsDummyData = scrollCardData[0]
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .top, spacing: 4) {
                Image(scrollCardsData.backgroundImg)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 210)
                
                VStack(spacing: 8) {
                    Image(scrollCardsData.image1)
                        .resizable().frame(width: 35, height: 35)
                    Image(scrollCardsData.image2)
                        .resizable().frame(width: 35, height: 35)
                        .clipShape(Circle())
                }
                .padding(.trailing, 16)
            }
            
            Text(scrollCardsData.title)
                .font(.system(size: 24, weight:.bold))
                .foregroundColor(.white)
                .frame(maxWidth: 200, alignment: .leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
                .padding(.top, 16)
                .padding(.bottom, 8)
                .lineLimit(2)
            
            Text(scrollCardsData.subTitle)
                .font(.subheadline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.bottom, 12)
                .lineLimit(1)
            
            Text(scrollCardsData.description)
                .font(.subheadline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                .lineLimit(2)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: width, height: height)
        .background(
            LinearGradient(grad1: scrollCardsData.gradient1, grad2: scrollCardsData.gradient2, grad3: scrollCardsData.gradient3)
        )
        .cornerRadius(30)
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

struct HorizontalScrollCards_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollCards()
    }
}
