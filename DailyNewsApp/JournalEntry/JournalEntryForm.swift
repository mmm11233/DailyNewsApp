//
//  JournalEntryForm.swift
//  DailyNewsApp
//
//  Created by Mariam Joglidze on 20.12.23.
//

import SwiftUI

struct JournalEntryForm: View {
    @State private var title: String = ""
    @State private var news: String = ""
    @State private var selectedDate: Date = Date.now
    @StateObject var listViewModel = ListViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
                FormView(title: title, newNews: news)
                
                DatePickerComponent()
                
                    .navigationBarTitle("Journal Entry")
                    .navigationBarItems(trailing:
                                            Button(action: {
                        addEntry()
                    }) {
                        Text("Save")
                    }
                    )
                
                Spacer()
                
                if $listViewModel.newsList.isEmpty {
                    Text("There is no news")
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    NewsList(viewModel: listViewModel)
                }
            }
        }
    }
    
    private func addEntry() {
        listViewModel.addNews(title: title, news: news, date: selectedDate)
        title = ""
        news = ""
    }
}


#Preview {
    JournalEntryForm()
}
