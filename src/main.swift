import Cocoa

let app      = NSApplication.sharedApplication()
let delegate = AppDelegate()
app.delegate = delegate
app.setActivationPolicy(.Regular)
atexit_b { app.setActivationPolicy(.Prohibited); return }
app.activateIgnoringOtherApps(true)
app.run()
