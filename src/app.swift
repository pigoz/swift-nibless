import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var controller: NSWindowController = NiblessWindowController()

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        println("application started!")
        controller.showWindow(nil)
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        println("application terminated!")
    }
}
