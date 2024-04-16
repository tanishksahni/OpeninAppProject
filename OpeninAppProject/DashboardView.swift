//
//  DashboardView.swift
//  OpeninAppProject
//
//  Created by Tanishk Sahni on 15/04/24.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ScrollView {
            ZStack(alignment: .top) {
                Color(cgColor: UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 247.0/255.0, alpha: 1.0).cgColor)
                    .ignoresSafeArea()
                
                VStack{
                    HStack{
                        Text("Dashboard")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        
                        Spacer()
                        ZStack {
                            Rectangle()
                                .cornerRadius(8)
                                .frame(width: 35,height: 35)
                                .foregroundColor(.white.opacity(0.3))
                            Image(systemName: "gear")
                                .foregroundColor(.white)
                            
                        }
                    }
                    .frame(height: 150)
                    .padding()
                }
                .background(Color.blue)
                VStack {
                    Spacer(minLength: 130 )
                    LinksView()
                        .background(Color(cgColor: UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 247.0/255.0, alpha: 1.0).cgColor))
                    
                        .cornerRadius(20)
                        .clipShape(CardShape())
                }
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    DashboardView()
}

struct CardShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 20, height: 20))
        return Path(path.cgPath)
    }
}
