//
//  ContentView.swift
//  OpeninAppProject
//
//  Created by Tanishk Sahni on 15/04/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Links", systemImage: "link")
                }
                .background(Color(cgColor: UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 247.0/255.0, alpha: 1.0).cgColor))
            CoursesView()
                .tabItem {
                    Label("Courses", systemImage: "book")
                }
                .background(Color(cgColor: UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 247.0/255.0, alpha: 1.0).cgColor))
            
            CampaignsView()
                .tabItem {
                    Label("Campaigns", systemImage: "speaker.wave.3")
                }
                .background(Color(cgColor: UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 247.0/255.0, alpha: 1.0).cgColor))
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .background(Color(cgColor: UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 247.0/255.0, alpha: 1.0).cgColor))
        }
        .background(Color(cgColor: UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 247.0/255.0, alpha: 1.0).cgColor))
    }
}

#Preview {
    MainView()
}
