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
    @State var selectedItem: LivestreamsDummyData? = nil
    
    var livestream: LivestreamsDummyData = livestreams[0]
    
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            content4
            fullContent
                .background(BlurView(style: .systemMaterial).edgesIgnoringSafeArea(.all))
                .ignoresSafeArea()
        }
        .navigationBarTitle(Text("Learn Swift"))
    }
    
    // livestream contents
    @ViewBuilder
    var content4: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                Text("Recent livestreams")
                    .font(.title).bold()
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                
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
        }
    }
    
    // detail view
    @ViewBuilder
    var fullContent: some View {
        if selectedItem != nil {
            ZStack(alignment: .topTrailing) {
                DetailView(livestream: selectedItem!, namespace: namespace)
                
                #if os(iOS)
                    CLosedButton
                        .padding(.top, 50)
                        .padding(.trailing, 16)
                #else
                CLosedButton
                    .padding()
                #endif
            }
            .zIndex(2)
            .frame(maxWidth: 712)
            .frame(maxWidth: .infinity)
        }
    }
    
    // closed button
    @ViewBuilder
    var CLosedButton: some View {
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
