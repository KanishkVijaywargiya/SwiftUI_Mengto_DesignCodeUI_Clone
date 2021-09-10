//
//  More.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct More: View {
    @AppStorage("isDarkMode") var  isDarkMode: Bool = false
    
    var body: some View {
        Form {
            Section {
                HStack(spacing: 0) {
                    Text("Updates")
                        .font(.subheadline).bold()
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                }
            }
            
            Section {
                Toggle(isOn: $isDarkMode) {
                    Text("Dark Mode")
                        .font(.subheadline).bold()
                }
                
                Toggle(isOn: .constant(false)) {
                    HStack(spacing: 0) {
                        Image(systemName: "bell.fill")
                            .renderingMode(.template)
                            .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .font(.system(size: 18, weight: .bold))
                            .padding(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                            )
                            .padding(.trailing, 20)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Notify me of new content")
                                .font(.subheadline).bold()
                            Text("Max once a day. Please log in to change your notification settings")
                                .font(.footnote)
                                .frame(maxWidth: 200, alignment: .leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                
                Toggle(isOn: .constant(false)) {
                    HStack(spacing: 0) {
                        Image(systemName: "speedometer")
                            .renderingMode(.template)
                            .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .font(.system(size: 18, weight: .bold))
                            .padding(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                            )
                            .padding(.trailing, 20)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Lite Mode")
                                .font(.subheadline).bold()
                            Text("Better performance. Recommended for iPhone X and older.")
                                .font(.footnote)
                                .frame(maxWidth: 200, alignment: .leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
            }
            
            Section {
                HStack(spacing: 0) {
                    Image(systemName: "speedometer")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                        )
                        .padding(.trailing, 20)
                    
                    Text("Sign in")
                        .font(.subheadline).bold()
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                }
            }
            
            Section {
                HStack(spacing: 0) {
                    Image(systemName: "eyes.inverse")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                        )
                        .padding(.trailing, 20)
                    
                    Text("Show Intro")
                        .font(.subheadline).bold()
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                }
                
                HStack(spacing: 0) {
                    Image(systemName: "questionmark")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 20, weight: .bold))
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                        )
                        .padding(.trailing, 20)
                    
                    Text("FAQ / Contact")
                        .font(.subheadline).bold()
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                }
                
                HStack(spacing: 0) {
                    Image(systemName: "square.stack.3d.up.fill")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                        )
                        .padding(.trailing, 20)
                    
                    Text("SwiftUI Packages")
                        .font(.subheadline).bold()
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                }
                
                HStack(spacing: 0) {
                    Image(systemName: "ellipsis.bubble.fill")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                        )
                        .padding(.trailing, 20)
                    
                    Text("Discord Community")
                        .font(.subheadline).bold()
                    
                    Spacer()
                    
                    Image(systemName: "link")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                }
                
                HStack(spacing: 0) {
                    Image(systemName: "play.rectangle.fill")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                        )
                        .padding(.trailing, 20)
                    
                    Text("Youtube Channel")
                        .font(.subheadline).bold()
                    
                    Spacer()
                    
                    Image(systemName: "link")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                }
            }
            
            Section {
                HStack(spacing: 0) {
                    Image(systemName: "doc.fill")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                        )
                        .padding(.trailing, 20)
                    
                    Text("Privacy Policy")
                        .font(.subheadline).bold()
                    
                    Spacer()
                    
                    Image(systemName: "link")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                }
                
                HStack(spacing: 0) {
                    Image(systemName: "doc.fill")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                        )
                        .padding(.trailing, 20)
                    
                    Text("Terms of Service")
                        .font(.subheadline).bold()
                    
                    Spacer()
                    
                    Image(systemName: "link")
                        .renderingMode(.template)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .padding(5)
                }
            }
            
            HStack(spacing: 0) {
                Spacer()
                
                VStack(alignment: .center, spacing: 0) {
                    Text("BlaceNova © 2021")
                        .font(.footnote).bold()
                    Text("Version 1.0.0")
                        .font(.footnote).bold()
                }
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct More_Previews: PreviewProvider {
    static var previews: some View {
        More()
    }
}

