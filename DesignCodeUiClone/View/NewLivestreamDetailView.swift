//
//  NewLivestreamDetailView.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 21/09/21.
//

import SwiftUI

struct NewLivestreamDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var showModal = false
    @State var viewState = CGSize.zero
    @State var isDragging = false
    @State var rotation: Angle = .zero
    
    var livestream: LivestreamsDummyData = livestreams[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    HStack(spacing: 16) {
                        Image(systemName: "arrow.backward")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .background(BlurView(style: .systemMaterialDark))
                            .mask(Circle())
                            .onTapGesture {
                                presentationMode.wrappedValue.dismiss()
                            }
                        
                        Spacer()
                        Image(uiImage: #imageLiteral(resourceName: "mengto"))
                            .resizable()
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                        Image(livestream.courseLogo)
                            .resizable().frame(width: 35, height: 35)
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
                                
                    }.padding(.horizontal, 20)
                    
                    Text(livestream.title)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .frame(maxWidth: 200, alignment: .leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .padding(.top, 40)
                        .padding(.bottom, 8)
                    
                    Text(livestream.subHeadline)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 10)
                    
                    BackImage2(backImg: livestream.backgroundImg)
                    FootText2(courseText: livestream.footerText)
                }
                .padding(.top, 50)
                .background( LinearGradient2(grad1: livestream.gradient1, grad2: livestream.gradient2, grad3: livestream.gradient3) )
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                livestreamRow
            }
        }
        .navigationBarHidden(true)
        .ignoresSafeArea()
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
    }
}

struct NewLivestreamDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewLivestreamDetailView()
    }
}
