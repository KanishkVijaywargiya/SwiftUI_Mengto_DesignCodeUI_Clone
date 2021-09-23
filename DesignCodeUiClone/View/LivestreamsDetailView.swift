//
//  LivestreamsDetail.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 21/09/21.
//

import SwiftUI
import AwesomeToast

struct LivestreamsDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var videoLink = "https://p73.f4.n0.cdn.getcloudapp.com/items/yAuyqeRn/f737c6e7-c7de-4ab2-a51d-95386b8558d3.mp4"
    var livestreamsSection: LivestreamSectionDummyData = livestreamSection[0]
    
    @State var showToast = false
    @State var showVideoModal = false
    @State var viewState = CGSize.zero
    @State var isDragging = false
    @State var rotation: Angle = .zero
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 16) {
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 0) {
                        Text("Livestream".uppercased())
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: 200, alignment: .leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 16)
                            .padding(.top, 50)
                        
                        HStack {
                            Text(livestreamsSection.title)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                                .frame(maxWidth: 200, alignment: .leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 16)
                                .padding(.top, 8)
                            
                            VStack(spacing: 8) {
                                Image("penlogo")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                
                                Image(uiImage: #imageLiteral(resourceName: "mengto"))
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .clipShape(Circle())
                            }
                            .padding(.trailing, 16)
                            .padding(.top)
                        }
                        
                        Spacer()
                        
                        BackImage2(backImg: livestreamsSection.backgroundImg)
                        FootText2(courseText: livestreamsSection.subHeadline)
                    }
                    .frame(height: 500)
                    .background( LinearGradient2(grad1: livestreamsSection.gradient1, grad2: livestreamsSection.gradient2, grad3: livestreamsSection.gradient3) )
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
                    
                    DetailResourcesContent()
                }
                .showToast(title: "video not available", isPresented: $showToast)
            }
            
            #if os(iOS)
            closedButton
                .padding(.trailing, 16)
                .padding(.top, 40)
            #else
            closedButton
                .padding()
            #endif
        }
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
    
    // custom background image
    @ViewBuilder
    func BackImage2(backImg: UIImage) -> some View {
        ZStack(alignment: .top) {
            Image(uiImage: backImg)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
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
                .padding(.horizontal, 20)
                .overlay(
                    PlayButton()
                        .fullScreenCover(isPresented: $showVideoModal) {
                            PlayerView(link: URL(string: videoLink)!)
                        }
                        .onTapGesture {
                            if (videoLink.isEmpty) {
                                showToast.toggle()
                            } else {
                                showVideoModal.toggle()
                            }
                        }
//                        .allowsHitTesting(videoLink.isEmpty ? false : true)
                        .padding(.bottom, 120)
                )
        }
    }
    
    // foot text
    @ViewBuilder
    func FootText2(courseText: String) -> some View {
        VStack {
            VStack(alignment: .center, spacing: 4) {
                Text("Taught by Meng To".uppercased())
                    .font(.headline).bold()
                    .padding(.bottom, 8)
                
                Text(livestreamsSection.subHeadline)
                    .lineLimit(4)
            }
            .padding(.vertical, 12)
            .font(.subheadline)
            .foregroundColor(.white)
            .padding(.horizontal)
            .frame(width: UIScreen.main.bounds.width - 20)
        }
        .padding(12)
        .background(BlurView(style: .light))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
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

struct LivestreamsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LivestreamsDetailView()
    }
}
