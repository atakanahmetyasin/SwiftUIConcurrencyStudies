//
//  DoTryCatchThrows.swift
//  SwiftUIConcurrencyStudy
//
//  Created by Ahmet Yasin Atakan on 25.04.2024.
//

import SwiftUI

enum NetworkError: Error {
    case parsingError
    case dataError
}

class DoTryCatchThrowsManager {
    let isDataFetched: Bool = true
//    func getName() -> (success: String?, error: String?) {
//        if isDataFetched {
//            return ("Mehmet", nil)
//        }
//        else {
//            return (nil, "Data couldn't fetched")
//        }
//    }
    
    func getName2() throws -> String {
        if isDataFetched {
            return "Mehmet2"
        }
        else {
            throw NetworkError.parsingError
        }
    }
}

class DoTryCatchThrowsViewModel: ObservableObject {
    @Published var name: String = "Ahmet"
    let manager = DoTryCatchThrowsManager()
    
    func fetchName() {
//        let data = manager.getName()
//        if let newName = data.success {
//            self.name = newName
//        }
//        else if let error = data.error {
//            self.name = error
//        }
        do{
            let data = try manager.getName2()
            self.name = data
        }
        catch let error {
            self.name = error.localizedDescription
        }
    }
    
}

struct DoTryCatchThrows: View {
    @StateObject private var viewModel = DoTryCatchThrowsViewModel()
    var body: some View {
        Text(viewModel.name)
            .frame(width: 300, height: 200, alignment: .center)
            .foregroundStyle(.black)
            .background(.mint)
            .onTapGesture {
                viewModel.fetchName()
            }
    }
}

#Preview {
    DoTryCatchThrows()
}
