//
//  Form.swift
//  DailyNewsApp
//
//  Created by Mariam Joglidze on 20.12.23.
//

import SwiftUI

struct FormView: View {
    @State var title: String
    @State var newNews: String
    @State private var selectedDate: Date = Date.now
    
    var body: some View {
        Form {
            Section(header: Text("Create News")) {
                TextField("Title", text: $title)
            }
            
            ZStack(alignment: .topLeading) {
                TextEditor(text: $newNews)
                    .frame(height: 150)
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                
                if newNews.isEmpty {
                    Text("Enter your news here")
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                }
            }
            .padding(.vertical)
            
            
        }
    }
}

#Preview {
    FormView(title: "title", newNews: "nadifncidfanvoidfnvondfvo")
}
