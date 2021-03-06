//
//  Tutorials.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct Tutorials: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Tutorials")
                            .font(.largeTitle).bold()
                        
                        Text("7 handbooks".uppercased())
                    }
                    .padding(.horizontal, 20)
                    
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
                
                tutorialContent
                
                trigger.frame(height: 50)
                
                recentTutorialSection.padding(.top, 18)
            }
            .padding(.top)
        }
        .navigationBarHidden(true)
    }
    
    // content
    @ViewBuilder
    var tutorialContent: some View {
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
    
    // button to trigger more no. of content
    @ViewBuilder
    var trigger: some View {
        VStack(alignment: .center, spacing: 0) {
            TriggerButton()
        }
    }
    
    // recent tutorial content
    @ViewBuilder
    var recentTutorialSection: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Recent tutorials")
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

struct Tutorials_Previews: PreviewProvider {
    static var previews: some View {
        Tutorials()
    }
}
