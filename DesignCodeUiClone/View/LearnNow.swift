//
//  LearnNow.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct LearnNow: View {
    @State var show = false
    @State var isDisabled = false
    @State var selectedIndex = 0
    @State var selectedItem: LivestreamsDummyData? = nil
    var livestream: LivestreamsDummyData = livestreams[0]
    @Namespace var namespace
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ZStack {
            if horizontalSizeClass == .compact {
                tabBar
            }
            fullContent
                .background(BlurView(style: .systemMaterial).edgesIgnoringSafeArea(.all))
        }
    }
    
    // livestream contents
    @ViewBuilder
    var content: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                Text(Date(), style: .date)
                    .padding(.top)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 8)
                
                HStack(spacing: 0) {
                    Text("Learn Swift")
                        .font(.largeTitle).bold()
                        .padding(.horizontal, 20)
                        .padding(.bottom, 16)
                    
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
                
                horizontalScrollCards
                
                Text("Recent courses")
                    .font(.title).bold()
                    .padding(.horizontal, 20)
                
                courseCards
                
                Text("Recent tutorials")
                    .font(.title).bold()
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                
                tutorialCards
                
                Text("Recent livestreams")
                    .font(.title).bold()
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                
                livestreamCards
            }
        }
        .navigationBarHidden(true)
    }
    
    // horizontal scroll geometry reader cards
    @ViewBuilder
    var horizontalScrollCards: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(scrollCardData) { item in
                    GeometryReader { geo in
                        NavigationLink(destination: Text("Destination")) {
                            HorizontalScrollCards(scrollCardsData: item)
                                .rotation3DEffect(
                                    Angle(degrees: Double(geo.frame(in: .global).minX - 30) / -getAngleMultiplier(bounds: geo )),
                                    axis: (x: 0, y: 10, z: 0)
                                )
                        }
                    }
                    .frame(width: 280, height: 360)
                }
            }
            .padding(20)
            .padding(.bottom, 30)
        }
    }
    
    // courses cards
    @ViewBuilder
    var courseCards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 180), spacing: 16)], spacing: 16) {
            ForEach(courses) { item in
                VStack {
                    NavigationLink(destination: Text("Destination")) {
                        CoursesCard(course: item)
                            .frame(height: 250)
                    }
                }
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity)
    }
    
    // tutorials cards
    @ViewBuilder
    var tutorialCards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 180), spacing: 16)], spacing: 16) {
            ForEach(TutorialDummyData.tutorials) { item in
                VStack {
                    NavigationLink(destination: Text("Destination")) {
                        TutorialsCard(tutorial: item)
                            .frame(height: 250)
                    }
                }
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity)
    }
    
    // livestream cards
    @ViewBuilder
    var livestreamCards: some View {
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
    }
    
    // detail view
    @ViewBuilder
    var fullContent: some View {
        if selectedItem != nil {
            ZStack(alignment: .topTrailing) {
                DetailView(livestream: selectedItem!, namespace: namespace)
                
                #if os(iOS)
                closedButton
                    .padding(.trailing, 16)
                #else
                closedButton
                    .padding()
                #endif
            }
            .zIndex(2)
            .frame(maxWidth: 712)
            .frame(maxWidth: .infinity)
        }
    }
    
    // tab bar
    var tabBar: some View {
        TabView {
            NavigationView {
                content
            }
            .tabItem {
                Image(systemName: "house")
                Text("Learn Now")
            }.tag(0)
            
            NavigationView {
                Courses()
            }
            .tabItem {
                Image(systemName: "square.grid.2x2")
                Text("Courses")
            }.tag(1)
            
            NavigationView {
                Tutorials()
            }
            .tabItem {
                Image(systemName: "square.stack.3d.down.right")
                Text("Tutorials")
            }.tag(2)
            
            NavigationView {
                Livestreams()
            }
            .tabItem {
                Image(systemName: "tv")
                Text("Livestreams")
            }.tag(3)
            
            NavigationView {
                More()
            }
            .tabItem {
                Image(systemName: "ellipsis.circle")
                Text("More")
            }.tag(4)
        }
        .accentColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
    }
    
    // closed button
    @ViewBuilder
    var closedButton: some View {
        CloseButton()
            .onTapGesture {
                withAnimation(.spring()) {
                    show.toggle()
                    selectedItem = nil
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        isDisabled = false
                    }
                }
            }
    }
    
    // setting angle for horizontal card
    func getAngleMultiplier(bounds: GeometryProxy) -> Double {
        if bounds.size.width > 500 {
            return 80
        }else {
            return 20
        }
    }
}

struct LearnNow_Previews: PreviewProvider {
    static var previews: some View {
        LearnNow()
    }
}

