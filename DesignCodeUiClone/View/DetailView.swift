//
//  DetailView.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 07/09/21.
//

import SwiftUI

struct DetailView: View {
    var livestream: LivestreamsDummyData = livestreams[0]
    var namespace: Namespace.ID
    
    var body: some View {
        VStack(spacing: 16) {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    Text(livestream.title)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: 200, alignment: .leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 16)
                        .padding(.top, 40)
                        .padding(.bottom, 8)
                    
                    HStack {
                        Text(livestream.subHeadline)
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .matchedGeometryEffect(id: "subHeadline", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 20)
                        
                        VStack(spacing: 8) {
                            Image(livestream.courseLogo)
                                .resizable().frame(width: 35, height: 35)
                                .matchedGeometryEffect(id: "courseLogo", in: namespace)
                            Image(uiImage: #imageLiteral(resourceName: "mengto"))
                                .resizable()
                                .matchedGeometryEffect(id: "uiImage", in: namespace)
                                .frame(width: 35, height: 35)
                                .clipShape(Circle())
                        }
                        .padding(.trailing, 16)
                    }
                    
                    Spacer()
                    
                    BackImage2(backImg: livestream.backgroundImg)
                    
                    FootText2(courseText: livestream.footerText)
                }
                .frame(height: 500)
                .background( LinearGradient2(grad1: livestream.gradient1, grad2: livestream.gradient2, grad3: livestream.gradient3) )
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
                .matchedGeometryEffect(id: "livestream", in: namespace)
                
                livestreamRow
                
                Spacer()
            }
            .matchedGeometryEffect(id: "container\(livestream.id)", in: namespace)
        }
        .ignoresSafeArea()
    }
    
    // livestream section row
    @ViewBuilder
    var livestreamRow: some View {
        ForEach(livestreamSection) { item in
            NavigationLink(destination: Text("Destination")) {
                LivestreamsCardRows(item: item)
            }
            Divider()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 8)
    }
    
    // custom background image
    @ViewBuilder
    func BackImage2(backImg: UIImage) -> some View {
        Image(uiImage: backImg)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 80)
            .padding(.horizontal, 20)
            .matchedGeometryEffect(id: "backimg", in: namespace)
    }
    
    // foot text
    @ViewBuilder
    func FootText2(courseText: String) -> some View {
        HStack {
            VStack(alignment: .center, spacing: 4) {
                Text("Taught by Meng To".uppercased())
                    .font(.headline).bold()
                    .padding(.vertical, 12)
                
                Text("This is a compilation of the \(courseText) live streams hosted by Meng. Over there he talks and teaches how to use design systems, typography, navigation, iOS 14 Designs.")
            }
            .font(.subheadline)
            .foregroundColor(.white)
            .padding(.horizontal)
        }
        .padding(12)
        .background(BlurView(style: .light))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .matchedGeometryEffect(id: "footerText", in: namespace)
    }
}

// custom linear gradient
@ViewBuilder
func LinearGradient2(grad1: Color, grad2: Color, grad3: Color) -> some View {
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

struct DetailView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        DetailView(namespace: namespace)
    }
}
