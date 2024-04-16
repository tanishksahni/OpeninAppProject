//
//  LinksView.swift
//  OpeninAppProject
//
//  Created by Tanishk Sahni on 15/04/24.
//

import SwiftUI


struct LinksView: View {
    
    @State private var selectedButton: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingView()
                .padding(.vertical)
            
            OverviewGraphView()
                .frame(width: 360, height: 250)
                .background(Color.white)
                .cornerRadius(16)
            
            Spacer(minLength: 20)
            
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<4) { _ in
                        StatsCardView()
                        Spacer(minLength: 20)
                    }
                }
                Spacer(minLength: 10)
            }
            
            HStack(alignment: .center) {
                Image(systemName: "arrow.up.right")
                Text("View Analytics")
            }
            .padding()
            .frame(width: 360)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 0.25))
            
            
            Spacer(minLength: 20)
            
            //Todo: add section
            
            HStack {
                HStack{
                    Button(action: {
                        selectedButton = 0
                    }) {
                        Text("Top Links")
                            .padding()
                            .fontWeight(.medium)
                            .foregroundColor(selectedButton == 0 ? .white : .gray)
                            .background(selectedButton == 0 ? Color.blue : Color.clear)
                            .cornerRadius(25)
                    }
                    
                    Button(action: {
                        selectedButton = 1
                    }) {
                        Text("Recent Links")
                            .padding()
                            .fontWeight(.medium)
                            .foregroundColor(selectedButton == 1 ? .white : .gray)
                            .background(selectedButton == 1 ? Color.blue : Color.clear)
                            .cornerRadius(25)
                    }
                }
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 0.25))
                
                
            }
            Spacer(minLength: 20)
            
            VStack {
                ForEach(0..<4) { _ in
                    LinkCardView()
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    Spacer(minLength: 20)
                }
            }
            
            HStack(alignment: .center) {
                Image(systemName: "link")
                Text("View all Links")
            }
            .padding()
            .frame(width: 360)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 0.25))
            
            Spacer(minLength: 20)
            
            HStack {
                Image("whatsapp")
                    .foregroundStyle(Color.green)
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 5)
                Text("Talk with us")
                    .foregroundStyle(Color.black)
            }
            .padding()
            .frame(width: 360, alignment: .leading)
            .background(Color.green.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.green, lineWidth: 0.25))
            
            Spacer(minLength: 20)
            
            HStack {
                Image(systemName: "questionmark.circle")
                    .foregroundStyle(Color.blue)
                Text("Frequently Asked Questions")
                    .foregroundStyle(Color.black)
            }
            .padding()
            .frame(width: 360, alignment: .leading)
            .background(Color.blue.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 0.25))
            
            Spacer(minLength: 20)
        }
        .padding()
    }
}

#Preview {
    LinksView()
}
