import SwiftUI

@main
struct FloatingBrowserApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        Settings {
            EmptyView()
        }
        .commands {
            CommandMenu("Floating Browser") {
                Button("Hide/Unhide Window") {
                    appDelegate.panelController?.toggleVisibility()
                }
                .keyboardShortcut("1", modifiers: [.command])

                Button("Screenshot Browser View") {
                    appDelegate.panelController?.takeScreenshot()
                }
                .keyboardShortcut("3", modifiers: [.command])
            }
        }
    }
}