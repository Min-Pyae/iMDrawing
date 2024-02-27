//
//  ContentView.swift
//  iMDrawing
//
//  Created by Chris Min on 25/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedColor: Color = .black
    @State private var selectedLineWidth: CGFloat = 1
    
    var body: some View {
        
        VStack {
            
            HStack {
                // COLOR PICKER
                ColorPicker("Color Picker", selection: $selectedColor)
                    .labelsHidden()
                
                // LINE WIDTH
                Slider(value: $selectedLineWidth, in: 1...20) {
                    Text("Line Width")
                }
                .frame(maxWidth: 140)
                
                Text(String(format: "%.0f", selectedLineWidth))
                
                
                Spacer()
                
                
                // UNDO BUTTON
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.uturn.backward.circle")
                })
                
                
                // REDO BUTTON
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.uturn.forward.circle")
                })
                
                
                // CLEAR ALL BUTTON
                Button(action: {
                    
                }, label: {
                    Text("Clear All")
                })
            }
            
            // CANVAS
            Canvas { context, size in
                
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
