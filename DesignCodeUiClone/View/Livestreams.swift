//
//  Livestreams.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct Livestreams: View {
    @State var show = false
    @State var isDisabled = false
    @State var selectedIndex = 0
    @State var selectedItem: LivestreamsDummyData? = nil
    @Namespace var namespace
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Livestreams")
                            .font(.largeTitle).bold()
                        
                        Text("4 topics".uppercased())
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom)
                    
                    Spacer()
                    
                    Image(systemName: "magnifyingglass")
                        .renderingMode(.template)
                        .font(.system(size: 16))
                        .foregroundColor(.primary)
                        .padding(8)
                        .background(
                            BlurView(style: .light)
                        )
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 0.2)
                        )
                    
                    ZStack {
                        Circle()
                            .frame(width: 45, height: 45)
                            .foregroundColor(.black.opacity(0.1))
                            .background(
                                LinearGradient(grad1: Color(#colorLiteral(red: 1, green: 0, blue: 0.5176470588, alpha: 1)), grad2: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), grad3: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                            )
                            .clipShape(Circle())
                            .offset(x: 10, y: -20)
                        
                        Image(systemName: "person.crop.circle")
                            .renderingMode(.template)
                            .font(.system(size: 20))
                            .foregroundColor(.primary)
                            .padding(12)
                            .padding(.horizontal, 20)
                            .background(
                                BlurView(style: .light)
                            )
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 0.2)
                            )
                    }
                }
                
                livestreamContent
                
                recentLivestreamSection
            }
            .padding(.top)
        }
        .navigationBarHidden(true)
    }
    
    // content
    @ViewBuilder
    var livestreamContent: some View {
        LazyVStack {
            ForEach(livestreams) { item in
                VStack(alignment: .leading) {
                    LivestreamsCard(livestream: item)
                        .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                        .frame(height: 350)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0)) {
                                show.toggle()
                                selectedItem = item
                                isDisabled = true
                            }
                        }
                        .disabled(isDisabled)
                }
                .matchedGeometryEffect(id: "container\(item.id)", in: namespace, isSource: !show)
            }
        }
        .padding(.bottom)
    }
    
    // recent livestream content
    @ViewBuilder
    var recentLivestreamSection: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Recent livestreams")
                .font(.title).bold()
                .padding(.horizontal, 20)
            
            ForEach(livestreamSection) { item in
                LivestreamsCardRows(item: item)
                Divider()
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 8)
        }
    }
}

struct Livestreams_Previews: PreviewProvider {
    static var previews: some View {
        Livestreams()
    }
}
