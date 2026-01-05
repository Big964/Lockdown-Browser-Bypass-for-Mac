import SwiftUI
import WebKit

final class WebViewStore: ObservableObject {
    let webView: WKWebView = WKWebView(frame: .zero)

    @Published var urlString: String = "https://www.google.com"

    func load() {
        guard let url = URL(string: urlString.trimmingCharacters(in: .whitespacesAndNewlines)) else { return }
        webView.load(URLRequest(url: url))
    }

    func goBack() { if webView.canGoBack { webView.goBack() } }
    func goForward() { if webView.canGoForward { webView.goForward() } }
    func reload() { webView.reload() }

    func snapshotToDesktop() {
        let config = WKSnapshotConfiguration()
        config.afterScreenUpdates = true

        webView.takeSnapshot(with: config) { image, error in
            guard error == nil, let image = image else { return }
            guard let tiff = image.tiffRepresentation,
                  let rep = NSBitmapImageRep(data: tiff),
                  let png = rep.representation(using: .png, properties: [:]) else { return }

            let desktop = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first!
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd_HH-mm-ss"
            let name = "FloatingBrowser_\(formatter.string(from: Date())).png"
            let fileURL = desktop.appendingPathComponent(name)

            try? png.write(to: fileURL)
            NSSound(named: "Glass")?.play()
        }
    }
}

struct WebViewRepresentable: NSViewRepresentable {
    @ObservedObject var store: WebViewStore

    func makeNSView(context: Context) -> WKWebView {
        store.webView
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {}
}