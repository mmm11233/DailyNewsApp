//
//  NewsList.swift
//  DailyNewsApp
//
//  Created by Mariam Joglidze on 20.12.23.
//

import SwiftUI

struct NewsList: View {
    @StateObject var viewModel: ListViewModel
    
   
    
    @State var isNewsExpanded = true
    
    var body: some View {
        
        NavigationStack{
            List {
                Section(isExpanded: $isNewsExpanded) {
                    ForEach(viewModel.newsList, id: \.self) { news in
                        Text(news)
                    }
                    .onDelete(perform: viewModel.removeNews)
                    .onMove(perform: viewModel.moveNews)
                }
            header: {
                Text("News List")
            }
                
            }
            
            .listStyle(.sidebar)
            .toolbar(content: {
                EditButton()
                Text("")
            })
        }
    }
}

#Preview {
    NewsList(viewModel: .init())
}
