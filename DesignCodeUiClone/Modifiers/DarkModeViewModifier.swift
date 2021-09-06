//
//  DarkModeViewModifier.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 07/09/21.
//

import SwiftUI
public struct DarkModeViewModifier: ViewModifier {
  @AppStorage("isDarkMode") var isDarkMode: Bool = false
  public func body(content: Content) -> some View {
    content
      .environment(\.colorScheme, isDarkMode ? .dark : .light)
      .preferredColorScheme(isDarkMode ? .dark : .light)
  }
}
