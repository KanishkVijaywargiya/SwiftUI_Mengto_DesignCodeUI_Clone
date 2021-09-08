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
                Text("Learn Design")
                    .font(.largeTitle).bold()
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                
                Text("Recent courses")
                    .font(.title).bold()
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                
                courseCards
                
                Text("Recent tutorials")
                    .font(.title).bold()
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                
                Text("Recent livestreams")
                    .font(.title).bold()
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                
                livestreamCards
            }
        }
        .navigationBarHidden(true)
        //        .navigationTitle("Learn Swift")
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
        .accentColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
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
}

struct LearnNow_Previews: PreviewProvider {
    static var previews: some View {
        LearnNow()
    }
}

