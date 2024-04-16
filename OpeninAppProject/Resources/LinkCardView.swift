//
//  LinkCardView.swift
//  OpeninAppProject
//
//  Created by Tanishk Sahni on 15/04/24.
//

import SwiftUI

struct LinkCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person")
                    .frame(width: 30, height: 30)
                    .padding()
                    .border(Color.gray, width: 0.25)
                VStack(alignment: .leading) {
                    Text("Sample Link Name")
                        .font(.headline)
                        .fontWeight(.medium)
                    Spacer()
                    Text("22 Aug 2022")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("2232")
                        .font(.headline)
                        .fontWeight(.regular)
                    Spacer()
                    Text("Clicks")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                
            }
            .padding(12)
            ZStack {
                HStack(alignment: .center) {
                    Text("https://samplelink.oia.bio/ashd...")
                    Spacer()
                    Image(systemName: "doc.on.doc")
                        .foregroundColor(.blue)
                }
                .padding(12)
                .background(Color.blue.opacity(0.3))
                .border(Color.blue, width: 0.25)
                
                Rectangle()
                    .fill(.clear)
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 0.75, lineCap: .square, dash: [4,3]))
                
            }
        }
    }
}

struct LinkCard_Previews: PreviewProvider {
    static var previews: some View {
        LinkCardView()
            .background(Color.white)
            .cornerRadius(16)
            .previewLayout(.fixed(width: 400, height: 140))
    }
}
