//
//  ContentView.swift
//  HWSStormViewer
//
//  Created by Jonathan on 12/28/24.
//

import SwiftUI



struct ContentView: View {
    
    @State private var selectedImage: Int?
    
    let names = ["Amy", "Charles", "Jake", "Rosa"]
    
    var body: some View {
        NavigationSplitView {
            List(0..<10, selection: $selectedImage) { number in
                Text("Storm \(number + 1)")
            }
            .frame(width: 150)
            
        } detail: {
            if let selectedImage = selectedImage {
                Image(String(selectedImage))
                    .resizable()
                    .scaledToFit()
            } else {
                Text("Please select an image")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
        }
        .frame(minWidth: 480, minHeight: 320)
    }
}

#Preview {
    ContentView()
}
