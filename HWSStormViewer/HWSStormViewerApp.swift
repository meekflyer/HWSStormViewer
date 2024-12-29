//
//  HWSStormViewerApp.swift
//  HWSStormViewer
//
//  Created by Jonathan on 12/28/24.
//

import SwiftUI

@main
struct HWSStormViewerApp: App {
    var body: some Scene {
        Window("Storm Viewer", id: "main") {
            ContentView()
                .onAppear {
                    NSWindow.allowsAutomaticWindowTabbing = false
                }
        }
         .commands {
            CommandGroup(replacing: .newItem) { }
            CommandGroup(replacing: .undoRedo) { }
            CommandGroup(replacing: .pasteboard) { }
        }
    }
}
