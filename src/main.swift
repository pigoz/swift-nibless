import Cocoa

let app      = NSApplication.sharedApplication()
let delegate = AppDelegate(app: app)
app.delegate = delegate
let menu = Menu(app: app)
app.setActivationPolicy(.Regular)
atexit_b { app.setActivationPolicy(.Prohibited); return }
app.run()
