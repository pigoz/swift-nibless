import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var controller: NSWindowController = NiblessWindowController()
    let app: NSApplication

    init(app: NSApplication) {
        self.app = app
    }

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        println("application started!")
        controller.showWindow(nil)
        app.activateIgnoringOtherApps(true)
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        println("application terminated!")
    }
}
