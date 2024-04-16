//
//  OverviewGraphView.swift
//  OpeninAppProject
//
//  Created by Tanishk Sahni on 15/04/24.
//
import SwiftUI
import Charts

struct ChartData: Identifiable{
    var id = UUID()
    
    var month: String
    var data: Int
    
    init(month: String, data: Int) {
        self.month = month
        self.data = data
    }
}

let seriesdata: [ChartData] = [
    ChartData(month: "Jan", data: 0),
    ChartData(month: "Feb", data: 30),
    ChartData(month: "Mar", data: 50),
    ChartData(month: "Apr", data: 60),
    ChartData(month: "May", data: 80)
]


struct OverviewGraphView: View {
    
    private var areaBackground: LinearGradient {
        return LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.clear]), startPoint: .topLeading , endPoint: .bottom)
    }
    
    var body: some View {
        VStack {
            HStack{
                Text("Overview")
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                Spacer()
                HStack {
                    Text("22 Aug - 23 Sept")
                        .font(.caption)
                    Image(systemName: "clock")
                        .foregroundColor(.gray)
                }
                .padding(8)
                .cornerRadius(15)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 0.25))
                
            }
            
            GeometryReader { geometry in
                Chart(seriesdata) { data in
                    LineMark(
                        x: .value("Month", data.month),
                        y: .value("Data", Double(data.data))
                    )
                    AreaMark(
                        x: .value("Month", data.month),
                        y: .value("Data", Double(data.data))
                    )
                    .foregroundStyle(areaBackground)
                }
                .chartYAxis {
                    AxisMarks(position: .leading)
                }
            }
        }
        .padding()
    }
}

struct OverviewGraphView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewGraphView()
            .background(Color.white)
            .cornerRadius(16)
            .previewLayout(.fixed(width: 360, height: 250))
    }
}
