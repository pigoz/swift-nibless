import Cocoa

class NiblessWindowController: NSWindowController {
    init() {
        super.init(window: nil)
        let rect   = NSMakeRect(100, 100, 400, 400)
        let window = NSWindow(contentRect:rect,
                                styleMask:self.windowStyleMask(),
                                  backing:.Buffered,
                                    defer:false)
        window.title = "Nibless Swift Window!"
        self.window = window
    }

    func windowStyleMask() -> Int {
        return NSTitledWindowMask | NSClosableWindowMask | NSResizableWindowMask
    }
}
