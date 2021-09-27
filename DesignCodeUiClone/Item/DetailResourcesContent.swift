//
//  DetailResourcesContent.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 21/09/21.
//

import SwiftUI
import AwesomeToast

struct DetailResourcesContent: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.openURL) var openURL
    
    @State var showToast = false
    @State var urlString = "https://www.apple.com/in/"
    
    @State var figma = false
    @State var materialdesign = false
    @State var uipatterns = false
    @State var sanfranciscofonts = false
    @State var sfsymbols = false
    @State var dynamictype = false
    @State var illustrations = false
    @State var phonemockups = false
    
    @State var uidesign = false
    @State var designsystem = false
    @State var figmahandbook = false
    @State var iosdesignhandbook = false
    
    @State var ios13 = false
    @State var ios14 = false
    @State var swiftuihandbook = false
    
    @State var discord = false
    @State var twitter = false
    @State var insta = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                Text("In this livestream, Meng talks about his design process and the things that inspires him. He shows some tips and tricks on creating beautiful UI, and he shares some websites where you can grab inspiration and some other tools.")
                    .padding(.bottom, 30)
                
                // resources
                VStack(alignment: .leading, spacing: 16) {
                    Text("Resources")
                        .font(.title).bold()
                        .padding(.bottom, 12)
                    
                    HStack {
                        Image(systemName: "sun.min")
                            .renderingMode(.template)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                        
                        Text("Figma design tool:")
                        
                        Button(action: {
                            self.figma = true
                        }) {
                            Text("https://www.figma.com")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $figma) {
                            SafariView(url:URL(string: "https://www.figma.com")!)
                        }
                        
                        //                        Link("https://www.figma.com",
                        //                             destination: URL(string: "https://www.figma.com")!)
                        //                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        //                            .fullScreenCover(isPresented: $figma) {
                        //                                SafariView(url:URL(string: "https://www.figma.com")!)
                        //                            }
                    }
                    
                    HStack {
                        Image(systemName: "sun.min")
                            .renderingMode(.template)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                        
                        Text("Android material Design:")
                        Button(action: {
                            self.materialdesign = true
                        }) {
                            Text("https://material.io")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $materialdesign) {
                            SafariView(url:URL(string: "https://material.io")!)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image(systemName: "sun.min")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("UI Patterns:")
                        }
                        Button(action: {
                            self.uipatterns = true
                        }) {
                            Text("https://mobbin.design/browse/ios/apps")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $uipatterns) {
                            SafariView(url:URL(string: "https://mobbin.design/browse/ios/apps")!)
                        }
                    }
                    .frame(height: 70)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image(systemName: "sun.min")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("San Francisco Fonts:")
                        }
                        Button(action: {
                            self.sanfranciscofonts = true
                        }) {
                            Text("https://developer.apple.com/fonts/")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $sanfranciscofonts) {
                            SafariView(url:URL(string: "https://developer.apple.com/fonts/")!)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image(systemName: "flame")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("SF Symbols:")
                        }
                        Button(action: {
                            self.sfsymbols = true
                        }) {
                            Text("https://developer.apple.com/sf-symbols/")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $sfsymbols) {
                            SafariView(url:URL(string: "https://developer.apple.com/sf-symbols/")!)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image(systemName: "flame")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("Dynamic Type:")
                        }
                        Button(action: {
                            self.dynamictype = true
                        }) {
                            Text("https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/typography")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $dynamictype) {
                            SafariView(url:URL(string: "https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/typography")!)
                        }
                    }
                    .frame(height: 70)
                    
                    HStack {
                        Image(systemName: "wand.and.stars")
                            .renderingMode(.template)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                        
                        Text("Illustrations:")
                        
                        Button(action: {
                            self.illustrations = true
                        }) {
                            Text("https://shape.so")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $illustrations) {
                            SafariView(url:URL(string: "https://shape.so")!)
                        }
                    }
                    
                    HStack {
                        Image(systemName: "iphone")
                            .renderingMode(.template)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                        
                        Text("Phone Mockups:")
                        
                        Button(action: {
                            self.phonemockups = true
                        }) {
                            Text("https://angle.sh")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $phonemockups) {
                            SafariView(url:URL(string: "https://angle.sh")!)
                        }
                    }
                }.padding(.bottom, 30)
                
                //learn ui designs
                VStack(alignment: .leading, spacing: 16) {
                    Text("Learn UI Designs")
                        .font(.title).bold()
                        .padding(.bottom, 12)
                    
                    VStack(alignment: .leading, spacing: 0)  {
                        HStack {
                            Image(systemName: "paintbrush.pointed")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("UI Design for developers:")
                        }
                        Button(action: {
                            self.uidesign = true
                        }) {
                            Text("http://designcode.io/ui-design")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $uidesign) {
                            SafariView(url:URL(string: "http://designcode.io/ui-design")!)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0)  {
                        HStack {
                            Image(systemName: "paintpalette")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("Design system in Figma:")
                        }
                        Button(action: {
                            self.designsystem = true
                        }) {
                            Text("https://designcode.io/figma")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $designsystem) {
                            SafariView(url:URL(string: "https://designcode.io/figma")!)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0)  {
                        HStack {
                            Image(systemName: "greetingcard")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("Figma Handbook:")
                        }
                        Button(action: {
                            self.figmahandbook = true
                        }) {
                            Text("https://designcode.io/figma-handbook")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $figmahandbook) {
                            SafariView(url:URL(string: "https://designcode.io/figma-handbook")!)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image(systemName: "greetingcard")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("iOS Design Handbook:")
                        }
                        Button(action: {
                            self.iosdesignhandbook = true
                        }) {
                            Text("https://designcode.io/ios-design-handbook")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $iosdesignhandbook) {
                            SafariView(url:URL(string: "https://designcode.io/ios-design-handbook")!)
                        }
                    }
                }.padding(.bottom, 30)
                
                //learn swiftui
                VStack(alignment: .leading, spacing: 16) {
                    Text("Learn Swift UI")
                        .font(.title).bold()
                        .padding(.bottom, 12)
                    
                    VStack(alignment: .leading, spacing: 0)  {
                        HStack {
                            Image(systemName: "swift")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("Build an app for iOS 13:")
                        }
                        Button(action: {
                            self.ios13 = true
                        }) {
                            Text("https://designcode.io/swiftui")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $ios13) {
                            SafariView(url:URL(string: "https://designcode.io/swiftui")!)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0)  {
                        HStack {
                            Image(systemName: "swift")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("Build an app for iOS 14:")
                        }
                        Button(action: {
                            self.ios14 = true
                        }) {
                            Text("https://designcode.io/swiftui-ios14")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $ios14) {
                            SafariView(url:URL(string: "https://designcode.io/swiftui-ios14")!)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0)  {
                        HStack {
                            Image(systemName: "greetingcard")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("SwiftUI Handbook:")
                        }
                        Button(action: {
                            self.swiftuihandbook = true
                        }) {
                            Text("https://designcode.io/swiftui-handbook")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $swiftuihandbook) {
                            SafariView(url:URL(string: "https://designcode.io/swiftui-handbook")!)
                        }
                    }
                }.padding(.bottom, 30)
                
                // design code
                VStack(alignment: .leading, spacing: 16) {
                    Text("DesignCode")
                        .font(.title).bold()
                        .padding(.bottom, 12)
                    
                    VStack(alignment: .leading, spacing: 0)  {
                        HStack {
                            Image(systemName: "ellipsis.bubble")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("Discord:")
                        }
                        Button(action: {
                            self.discord = true
                        }) {
                            Text("http://discord.com/invite/JGDtQcdk72")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $discord) {
                            SafariView(url:URL(string: "http://discord.com/invite/JGDtQcdk72")!)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0)  {
                        HStack {
                            Image(systemName: "paperplane")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("Twitter:")
                        }
                        Button(action: {
                            self.twitter = true
                        }) {
                            Text("http://twitter.com/designcode")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $twitter) {
                            SafariView(url:URL(string: "http://twitter.com/designcode")!)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0)  {
                        HStack {
                            Image(systemName: "circle.square")
                                .renderingMode(.template)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            
                            Text("Instagram:")
                        }
                        Button(action: {
                            self.insta = true
                        }) {
                            Text("http://www.instagram.com/mengto")
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .allowsHitTesting(false)
                        }
                        .fullScreenCover(isPresented: $insta) {
                            SafariView(url:URL(string: "http://www.instagram.com/mengto")!)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct DetailResourcesContent_Previews: PreviewProvider {
    static var previews: some View {
        DetailResourcesContent()
    }
}
