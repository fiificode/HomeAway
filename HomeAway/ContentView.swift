//
//  ContentView.swift
//  HomeAway
//
//  Created by fiififranklin on 24/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showSplashScreen: Bool = true
    var body: some View {
        ZStack {
            if showSplashScreen {
                SplashScreen()
                    .transition(CustomTransition(isHome: false))
            } else {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                .transition(CustomTransition(isHome: true))
                .padding()
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
//        .background(.appBlack)
        .ignoresSafeArea()
        .task {
            guard showSplashScreen else { return }
            try? await Task.sleep(for: .seconds(0.5))
            withAnimation(.smooth(duration: (0.55))) {
                showSplashScreen = false
            }
        }
    }
}


struct CustomTransition: Transition {
    var isHome: Bool
    func body(content: Content, phase: TransitionPhase) -> some View {
        content.offset(y:phase.isIdentity ? 0 : isHome ? screenSize.height: -screenSize.height)
    }
    
    var screenSize: CGSize {
        if let screnSize = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.screen.bounds.size {
            return screnSize
        }
        
        return .zero
    }
}


struct SplashScreen: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.appBlack)
            Image("AppLogo3")
        }.ignoresSafeArea()
    }
}



#Preview {
    ContentView()
}
