//
//  ListViewModel.swift
//  DailyNewsApp
//
//  Created by Mariam Joglidze on 20.12.23.
//

import Foundation
import Combine


class ListViewModel: ObservableObject {
    @Published var newsList: [String] = []
    
    func addNews(title: String, news: String, date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString = dateFormatter.string(from: date) //convert date type to string in swift    MM/DD/YYYY
        let newEntry = "\(title): \(news), \(dateString)"
        newsList.append(newEntry)
        print("newlist: ", newsList)
    }
    
    func moveNews(indexSet: IndexSet, toOffset: Int) {
        newsList.move(fromOffsets: indexSet, toOffset: toOffset)
    }
    
    func removeNews(at index: IndexSet) {
        newsList.remove(atOffsets: index)
    }
}
