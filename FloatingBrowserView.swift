import SwiftUI

struct FloatingBrowserView: View {
    @StateObject private var store = WebViewStore()

    func screenshotRequested() {
        store.snapshotToDesktop()
    }

    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 8) {
                Button("◀") { store.goBack() }
                Button("▶") { store.goForward() }
                Button("⟳") { store.reload() }

                TextField("Enter URL (https://...)", text: $store.urlString)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onSubmit { store.load() }

                Button("Go") { store.load() }
            }
            .padding(10)

            WebViewRepresentable(store: store)
                .frame(minWidth: 520, minHeight: 680)
        }
        .onAppear { store.load() }
    }
}