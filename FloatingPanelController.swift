import Cocoa
import SwiftUI

final class FloatingPanelController {
    private let panel: NSPanel
    private let contentView: FloatingBrowserView

    init() {
        self.contentView = FloatingBrowserView()

        let hosting = NSHostingView(rootView: contentView)
        hosting.frame = NSRect(x: 0, y: 0, width: 520, height: 720)

        panel = NSPanel(
            contentRect: hosting.frame,
            styleMask: [.titled, .closable, .resizable],
            backing: .buffered,
            defer: false
        )

        panel.title = "Floating Browser"
        panel.isFloatingPanel = true
        panel.level = .floating
        panel.collectionBehavior = [.canJoinAllSpaces, .fullScreenAuxiliary]
        panel.center()
        panel.contentView = hosting
        panel.makeKeyAndOrderFront(nil)
    }

    func show() {
        panel.orderFrontRegardless()
        panel.makeKey()
    }

    func toggleVisibility() {
        if panel.isVisible {
            panel.orderOut(nil)
        } else {
            show()
        }
    }

    func takeScreenshot() {
        contentView.screenshotRequested()
    }
}