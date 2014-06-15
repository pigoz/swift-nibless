import Cocoa

class Menu {
    var app: NSApplication
    init(app: NSApplication) {
        self.app = app
        setup()
    }

    func setup () {
        let mainMenu = NSMenu(title: "AMainMenu")
        for (title, items) in tree() {
            let item = mainMenu.addItemWithTitle(title, action: nil, keyEquivalent:"")
            let menu = NSMenu(title: title)
            mainMenu.setSubmenu(menu, forItem: item)
            for item in items { menu.addItem(item) }
        }
        self.app.menu = mainMenu
    }

    func tree() -> Dictionary<String, NSMenuItem[]>{
        return [
            "Edit": [
                NSMenuItem(title: "Copy", action: nil, keyEquivalent:"c"),
                NSMenuItem(title: "Paste", action: nil, keyEquivalent:"p")
            ],
            "Apple": [
                NSMenuItem(title: "About", action: "orderFrontStandardAboutPanel:", keyEquivalent:""),
                NSMenuItem.separatorItem(),
                NSMenuItem(title: "Hide",  action: "hide:", keyEquivalent:"h"),
                // NSMenuItem(title: "Hide Others",  action: "hideOtherApplications:", keyEquivalent:"h"),
                NSMenuItem(title: "Quit",  action: "terminate:", keyEquivalent:"q"),
            ],
        ]
    }
}
