//
//  DetailView.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 07/09/21.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var showModal = false
    @State var viewState = CGSize.zero
    @State var isDragging = false
    @State var rotation: Angle = .zero
    
    var livestream: LivestreamsDummyData = livestreams[0]
    var namespace: Namespace.ID
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading, spacing: 0) {
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
                        
                        HStack {
                            Text(livestream.subHeadline)
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .matchedGeometryEffect(id: "subHeadline", in: namespace)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 20)
                                .padding(.bottom, 10)
                            
                            VStack(spacing: 8) {
                                Image(livestream.courseLogo)
                                    .resizable().frame(width: 35, height: 35)
                                    .matchedGeometryEffect(id: "courseLogo", in: namespace)
                                    .contextMenu {
                                        Button {
                                            print("checked in tapped")
                                        } label: {
                                            Label("Check In", systemImage: "person.fill.checkmark")
                                        }
                                        
                                        Button {
                                            print("checked in tapped2")
                                        } label: {
                                            Label("Call Location", systemImage: "phone.fill")
                                        }
                                        
                                        Button {
                                            print("checked in tapped3")
                                        } label: {
                                            Label("Get Directions", systemImage: "location.fill")
                                        }
                                    }
                                
                                Image(uiImage: #imageLiteral(resourceName: "mengto"))
                                    .resizable()
                                    .matchedGeometryEffect(id: "uiImage", in: namespace)
                                    .frame(width: 35, height: 35)
                                    .clipShape(Circle())
                            }
                            .padding(.trailing, 16)
                        }
                        
                        BackImage2(backImg: livestream.backgroundImg)
                        FootText2(courseText: livestream.footerText)
                    }
                    .padding(.top, 50)
                    .background( LinearGradient2(grad1: livestream.gradient1, grad2: livestream.gradient2, grad3: livestream.gradient3) )
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
                    .matchedGeometryEffect(id: "livestream", in: namespace)
                    
                    livestreamRow
                }
            }
            .matchedGeometryEffect(id: "container\(livestream.id)", in: namespace)
            .navigationBarHidden(true)
            .ignoresSafeArea()
            
            #if os(iOS)
            closedButton
                .padding(.trailing, 16)
            #else
            closedButton
                .padding()
            #endif
        }
    }
    
    // livestream section row
    @ViewBuilder
    var livestreamRow: some View {
        VStack {
            ForEach(livestreamSection) { item in
                LivestreamsCardRows(item: item)
                    .fullScreenCover(isPresented: $showModal) {
                        LivestreamsDetailView()
                    }
                    .onTapGesture {
                        showModal = true
                    }
                Divider()
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 8)
        }
        .padding(.bottom, 32)
    }
    
    // custom background image
    @ViewBuilder
    func BackImage2(backImg: UIImage) -> some View {
        Image(uiImage: backImg)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 250)
            .scaleEffect(isDragging ? 0.9 : 1)
            .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
            .rotation3DEffect(Angle(degrees: 5), axis: (x: viewState.width, y: viewState.height, z: 0))
            .gesture(
                DragGesture().onChanged{value in
                    self.viewState = value.translation
                    self.isDragging = true
                }
                .onEnded{value in
                    self.viewState = .zero
                    self.isDragging = false
                }
            )
//            .padding(.horizontal, 20)
            .matchedGeometryEffect(id: "backimg", in: namespace)
    }
    
    // foot text
    @ViewBuilder
    func FootText2(courseText: String) -> some View {
        HStack {
            VStack(alignment: .center, spacing: 4) {
                Text("Taught by Meng To".uppercased())
                    .font(.headline).bold()
                    .padding(.bottom, 8)
                
                Text("This is a compilation of the \(courseText) live streams hosted by Meng. Over there he talks and teaches how to use design systems, typography, navigation, iOS 14 Designs.")
                    .lineLimit(4)
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
    
    // closed button
    @ViewBuilder
    var closedButton: some View {
        CloseButton()
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
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
