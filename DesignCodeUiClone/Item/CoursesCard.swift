//
//  CoursesCard.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct CoursesCard: View {
    var course: Course = courses[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Spacer()
            
            HStack {
                Spacer()
                Image(course.backgroundImg)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        VStack(spacing: 8) {
                            Image(course.image1)
                                .resizable().frame(width: 35, height: 35)
                            Image(course.image2)
                                .resizable()
                                .frame(width: 35, height: 35)
                                .clipShape(Circle())
                        }
                        .position(x: 120)
                    )
                Spacer()
            }
            Text(course.title)
                .bold()
                .foregroundColor(.white)
                .lineLimit(2)
            
            Text(course.subTitle)
                .font(.footnote)
                .foregroundColor(.white)
                .lineLimit(1)
        }
        .padding(.all)
        .background(
            LinearGradient(grad1: course.gradient1, grad2: course.gradient2, grad3: course.gradient3)
        )
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct CoursesCard_Previews: PreviewProvider {
    static var previews: some View {
        CoursesCard()
    }
}
