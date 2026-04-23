import AppKit
import SwiftUI

@main
struct TSAPIApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
                .onAppear {
                    DispatchQueue.main.async {
                        NSApp.setActivationPolicy(.regular)
                        NSApp.activate(ignoringOtherApps: true)
                    }
                }
        }
        .windowStyle(.titleBar)
        .defaultSize(width: 1200, height: 800)
    }
}
