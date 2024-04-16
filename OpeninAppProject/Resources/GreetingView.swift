//
//  GreetingView.swift
//  OpeninAppProject
//
//  Created by Tanishk Sahni on 15/04/24.
//

import SwiftUI

struct GreetingView: View {
    @State private var greeting = ""
    @State private var userName = "Johnathan"
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH"
        return formatter
    }
    
    private var currentTime: Int {
        let timeString = dateFormatter.string(from: Date())
        return Int(timeString) ?? 0
    }
    
    private var greetingMessage: String {
        switch currentTime {
        case 0..<12:
            return "Good morning"
        case 12..<18:
            return "Good afternoon"
        default:
            return "Good evening"
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(greetingMessage)
                .font(.headline)
                .fontWeight(.regular)
                .foregroundColor(Color.gray)
            Text("\(userName) 👋")
                .font(.title)
        }
        .onAppear {
            self.greeting = greetingMessage
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView()
    }
}
