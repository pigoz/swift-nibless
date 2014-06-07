import Cocoa

let app          = NSApplication.sharedApplication()
let window_style = NSTitledWindowMask | NSClosableWindowMask | NSResizableWindowMask
let rect         = NSMakeRect(100, 100, 400, 400)
let window       = NSWindow(contentRect:rect,
                              styleMask:window_style,
                                backing:NSBackingStoreType.Buffered,
                                  defer:false)
let delegate     = AppDelegate()

delegate.window = window
window.makeKeyAndOrderFront(window)
window.title = "Nibless Swift Window!"
app.delegate = delegate
app.setActivationPolicy(NSApplicationActivationPolicy.Regular)
atexit_b {
  app.setActivationPolicy(NSApplicationActivationPolicy.Prohibited)
  return
}
app.activateIgnoringOtherApps(true)
app.run()
