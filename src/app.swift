import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet var window: NSWindow

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        println("application started!")
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        println("application terminated!")
    }
}
