
# FloatingBrowser (macOS)

![macOS](https://img.shields.io/badge/macOS-12%2B-blue)
![Swift](https://img.shields.io/badge/Swift-5.7-orange)
![SwiftUI](https://img.shields.io/badge/SwiftUI-Compatible-green)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

A lightweight **floating browser for macOS** built with **SwiftUI + WKWebView**.

FloatingBrowser opens an **always-on-top browser window** that can access any website, be hidden or shown instantly using keyboard shortcuts, and take **browser-only screenshots** using native Apple APIs.


JOIN OUR DISCORD TO GET THE UPDATED BROWSER : https://discord.gg/f9KbmzVd2e

---

## ✨ Features

- 🪟 Always-on-top floating window
- 🌐 Browse any website
- ⌨️ Keyboard shortcuts
  - **⌘1** → Hide / Unhide browser window
  - **⌘3** → Screenshot browser view
- 📸 Browser-only screenshots (saved to Desktop)
- 🔁 Back / Forward / Reload
- 🧭 URL bar navigation
- 🖥 Appears across all Spaces and fullscreen apps

---

## 🖼 Screenshots

> _Add screenshots here after building the app_

```
screenshots/
├── floating-browser.png
├── browsing-example.png
└── screenshot-output.png
```

---

## 📦 Project Structure

```
FloatingBrowser/
├── FloatingBrowserApp.swift
├── AppDelegate.swift
├── FloatingPanelController.swift
├── WebView.swift
└── FloatingBrowserView.swift
```

---

## 🚀 Getting Started

### Requirements
- macOS 12 or newer
- Xcode 14+
- Swift / SwiftUI

### Setup
1. Open **Xcode**
2. Create a new **macOS → App**
   - Interface: SwiftUI
   - Language: Swift
3. Delete default SwiftUI files
4. Copy project files into the Xcode project
5. Build & Run ▶️

---

## ⌨️ Keyboard Shortcuts

| Shortcut | Action |
|--------|-------|
| ⌘1 | Hide / Unhide floating window |
| ⌘3 | Take browser screenshot |

Screenshots are saved as PNG files on the **Desktop**.

---

## 🔐 Permissions

- ❌ No Screen Recording permission
- ❌ No Accessibility permission
- ❌ No hidden background behavior
- ✅ Uses WKWebView snapshot API

---

## 🛠 Customization Ideas

- Global (system-wide) hotkeys
- Opacity slider
- Click-through mode
- Mini-player mode
- Window presets
- Bookmarks & history

---

## 📄 License

MIT License

---

## 🤝 Contributions
JOIN OUR DISCORD TO GET THE UPDATED BROWSER : https://discord.gg/f9KbmzVd2e

Pull requests and improvements are welcome.
