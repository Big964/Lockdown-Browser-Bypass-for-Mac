import Cocoa

final class AppDelegate: NSObject, NSApplicationDelegate {
    var panelController: FloatingPanelController?

    func applicationDidFinishLaunching(_ notification: Notification) {
        panelController = FloatingPanelController()
        panelController?.show()
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        true
    }
}