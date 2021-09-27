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
    
    @Binding var showToast: Bool
    
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
    
    var figmaLink = "https://www.figma.com"
    var materialDesignLink = "https://material.io"
    var uiPatternsLink = "https://mobbin.design/browse/ios/apps"
    var sanFranciscoFontsLink = "https://developer.apple.com/fonts/"
    var sfSymbolsLink = "https://developer.apple.com/sf-symbols/"
    var dynamicTypeLink = "https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/typography"
    var illustrationsLink = "https://shape.so"
    var phonemockupsLink = "https://angle.sh"
    
    var uiDesignLink = "http://designcode.io/ui-design"
    var designSystemFigma = "https://designcode.io/figma"
    var figmaHandbookLink = "https://designcode.io/figma-handbook"
    var iosDesignHandbook = "https://designcode.io/ios-design-handbook"
    
    var ios13Link = "https://designcode.io/swiftui"
    var ios14Link = "https://designcode.io/swiftui-ios14"
    var swiftUiHandbookLink = "https://designcode.io/swiftui-handbook"
    
    var discordLink = "http://discord.com/invite/JGDtQcdk72"
    var twitterLink = "http://twitter.com/designcode"
    var instaLink = "http://www.instagram.com/mengto"
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                Text("In this livestream, Meng talks about his design process and the things that inspires him. He shows some tips and tricks on creating beautiful UI, and he shares some websites where you can grab inspiration and some other tools.")
                    .padding(.bottom, 30)
                
                // resources
                resources
                
                //learn ui designs
                learnUiDesigns
                
                //learn swiftui
                learnSwiftUI
                
                // design code
                designCode
            }
            .padding()
        }
    }
    
    @ViewBuilder
    var resources: some View {
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
                    if (figmaLink.isEmpty) {
                        self.figma = false
                        showToast.toggle()
                    } else {
                        self.figma = true
                    }
                }) {
                    Text("https://www.figma.com")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $figma) {
                    SafariView(url: URL(string: figmaLink)!)
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
                    if (materialDesignLink.isEmpty) {
                        self.materialdesign = false
                        showToast.toggle()
                    } else {
                        self.materialdesign = true
                    }
                }) {
                    Text("https://material.io")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $materialdesign) {
                    SafariView(url:URL(string: materialDesignLink)!)
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
                    if (uiPatternsLink.isEmpty) {
                        self.uipatterns = false
                        showToast.toggle()
                    } else {
                        self.uipatterns = true
                    }
                }) {
                    Text("https://mobbin.design/browse/ios/apps")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $uipatterns) {
                    SafariView(url:URL(string: uiPatternsLink)!)
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
                    if (sanFranciscoFontsLink.isEmpty) {
                        self.sanfranciscofonts = false
                        showToast.toggle()
                    } else {
                        self.sanfranciscofonts = true
                    }
                }) {
                    Text("https://developer.apple.com/fonts/")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $sanfranciscofonts) {
                    SafariView(url:URL(string: sanFranciscoFontsLink)!)
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
                    if (sfSymbolsLink.isEmpty) {
                        self.sfsymbols = false
                        showToast.toggle()
                    } else {
                        self.sfsymbols = true
                    }
                }) {
                    Text("https://developer.apple.com/sf-symbols/")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $sfsymbols) {
                    SafariView(url:URL(string: sfSymbolsLink)!)
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
                    if (dynamicTypeLink.isEmpty) {
                        self.dynamictype = false
                        showToast.toggle()
                    } else {
                        self.dynamictype = true
                    }
                }) {
                    Text("https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/typography")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $dynamictype) {
                    SafariView(url:URL(string: dynamicTypeLink)!)
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
                    if (illustrationsLink.isEmpty) {
                        self.illustrations = false
                        showToast.toggle()
                    } else {
                        self.illustrations = true
                    }
                }) {
                    Text("https://shape.so")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $illustrations) {
                    SafariView(url:URL(string: illustrationsLink)!)
                }
            }
            
            HStack {
                Image(systemName: "iphone")
                    .renderingMode(.template)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                
                Text("Phone Mockups:")
                
                Button(action: {
                    if (phonemockupsLink.isEmpty) {
                        self.phonemockups = false
                        showToast.toggle()
                    } else {
                        self.phonemockups = true
                    }
                }) {
                    Text("https://angle.sh")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $phonemockups) {
                    SafariView(url:URL(string: phonemockupsLink)!)
                }
            }
        }.padding(.bottom, 30)
        
        
    }
    
    @ViewBuilder
    var learnUiDesigns: some View {
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
                    if (uiDesignLink.isEmpty) {
                        self.uidesign = false
                        showToast.toggle()
                    } else {
                        self.uidesign = true
                    }
                }) {
                    Text("http://designcode.io/ui-design")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $uidesign) {
                    SafariView(url:URL(string: uiDesignLink)!)
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
                    if (designSystemFigma.isEmpty) {
                        self.designsystem = false
                        showToast.toggle()
                    } else {
                        self.designsystem = true
                    }
                }) {
                    Text("https://designcode.io/figma")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $designsystem) {
                    SafariView(url:URL(string: designSystemFigma)!)
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
                    if (figmaHandbookLink.isEmpty) {
                        self.figmahandbook = false
                        showToast.toggle()
                    } else {
                        self.figmahandbook = true
                    }
                }) {
                    Text("https://designcode.io/figma-handbook")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $figmahandbook) {
                    SafariView(url:URL(string: figmaHandbookLink)!)
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
                    if (iosDesignHandbook.isEmpty) {
                        self.iosdesignhandbook = false
                        showToast.toggle()
                    } else {
                        self.iosdesignhandbook = true
                    }
                }) {
                    Text("https://designcode.io/ios-design-handbook")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $iosdesignhandbook) {
                    SafariView(url:URL(string: iosDesignHandbook)!)
                }
            }
        }.padding(.bottom, 30)
        
    }
    
    @ViewBuilder
    var learnSwiftUI: some View {
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
                    if (ios13Link.isEmpty) {
                        self.ios13 = false
                        showToast.toggle()
                    } else {
                        self.ios13 = true
                    }
                }) {
                    Text("https://designcode.io/swiftui")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $ios13) {
                    SafariView(url:URL(string: ios13Link)!)
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
                    if (ios14Link.isEmpty) {
                        self.ios14 = false
                        showToast.toggle()
                    } else {
                        self.ios14 = true
                    }
                }) {
                    Text("https://designcode.io/swiftui-ios14")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $ios14) {
                    SafariView(url:URL(string: ios14Link)!)
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
                    if (swiftUiHandbookLink.isEmpty) {
                        self.swiftuihandbook = false
                        showToast.toggle()
                    } else {
                        self.swiftuihandbook = true
                    }
                }) {
                    Text("https://designcode.io/swiftui-handbook")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $swiftuihandbook) {
                    SafariView(url:URL(string: swiftUiHandbookLink)!)
                }
            }
        }.padding(.bottom, 30)
    }
    
    @ViewBuilder
    var designCode: some View {
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
                    if (discordLink.isEmpty) {
                        self.discord = false
                        showToast.toggle()
                    } else {
                        self.discord = true
                    }
                }) {
                    Text("http://discord.com/invite/JGDtQcdk72")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $discord) {
                    SafariView(url:URL(string: discordLink)!)
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
                    if (twitterLink.isEmpty) {
                        self.twitter = false
                        showToast.toggle()
                    } else {
                        self.twitter = true
                    }
                }) {
                    Text("http://twitter.com/designcode")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $twitter) {
                    SafariView(url:URL(string: twitterLink)!)
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
                    if (instaLink.isEmpty) {
                        self.insta = false
                        showToast.toggle()
                    } else {
                        self.insta = true
                    }
                }) {
                    Text("http://www.instagram.com/mengto")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .allowsHitTesting(false)
                }
                .fullScreenCover(isPresented: $insta) {
                    SafariView(url:URL(string: instaLink)!)
                }
            }
        }
    }
}

struct DetailResourcesContent_Previews: PreviewProvider {
    static var previews: some View {
        DetailResourcesContent(showToast: .constant(false))
    }
}
