//
//  LivestreamsCardRows.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 07/09/21.
//

import SwiftUI

struct LivestreamsCardRows: View {
    var item: LivestreamSectionDummyData = livestreamSection[0]
    
    var body: some View {
        HStack(alignment: .top) {
            Text(item.courseLogo)
                .font(.subheadline).bold()
                .foregroundColor(.white)
                .padding()
                .background(item.color)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 4)
                )
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 5) {
                    Text(item.title)
                        .font(.subheadline).bold()
                        .foregroundColor(.primary)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Text(item.length)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(8)
                        .background(item.color)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        .multilineTextAlignment(.leading)
                }
                
                Text(item.subHeadline)
                    .font(.footnote)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
        }
    }
}

struct LivestreamsCardRows_Previews: PreviewProvider {
    static var previews: some View {
        LivestreamsCardRows().previewLayout(.sizeThatFits)
    }
}
