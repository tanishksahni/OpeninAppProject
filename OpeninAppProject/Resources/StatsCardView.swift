//
//  StatsCardView.swift
//  OpeninAppProject
//
//  Created by Tanishk Sahni on 15/04/24.
//

import SwiftUI

struct StatsCardView: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            ZStack{
                Circle()
                    .frame(height: 45)
                    .foregroundColor(.indigo.opacity(0.2))
                Image(systemName: "circle.circle.fill")
                    .foregroundColor(.purple)
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("132")
                    .font(.headline)
                    .fontWeight(.regular)
                Text("Today's Clicks")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
            
        }
        .padding()
        .frame(width: 140, height: 140)
        .background(Color.white)
        .cornerRadius(12)
    }
}

struct StatsCardView_Previews: PreviewProvider {
    static var previews: some View {
        StatsCardView()
            .background(Color.white)
            .cornerRadius(16)
            .previewLayout(.fixed(width: 140, height: 140))
    }
}
