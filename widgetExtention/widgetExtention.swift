//
//  widgetExtention.swift
//  widgetExtention
//
//  Created by Youssif Hany on 22/02/2024.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    
    let data = DataService()
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), progressAppStorage: data.progress())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), progressAppStorage: data.progress())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, progressAppStorage: data.progress())
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let progressAppStorage: String
}

struct widgetExtentionEntryView : View {
    var entry: Provider.Entry
        
    let data = DataService()
    
    var body: some View {
        ZStack {
//            VStack(spacing:10) {
//                HStack {
//                    Text("Remainig Kcal:🍕🍖")
//                        .font(.system(size: 12))
//                        .foregroundStyle(.red)
//                        .padding(.top)
//                    Spacer()
//                }
//                Spacer()
//                Text(data.progress())
//                    .font(.headline)
//                    .fontDesign(.serif)
//                
//                Spacer()
//                Text("Tap ME ☺️")
//                    .foregroundStyle(.white)
//                    .font(.system(size: 12))
//                    .fontWeight(.light)
//                    .frame(height: 55)
//                    .frame(maxWidth: .infinity)
//                    .background(Color.blue)
//                    .clipShape(.capsule)
//                    .padding(.bottom)
//            }
            VStack{
                HStack{
                    Text("⚖️")
                        .font(.headline)
                    Text("Remaining")
                        .font(.headline)
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.6)
                        .foregroundStyle(Color.gray.opacity(0.9))
                    Spacer()
                }
                HStack {
                    Text(data.progress())
                        .font(.system(size: 20,weight: .heavy))
                    Text("kcal")
                }
                .foregroundStyle(Color.white)
                .padding()
                
                Text("Tap ME ☺️")
                    .minimumScaleFactor(0.6)
                    .foregroundStyle(Color.gray.opacity(0.9))
            }
        }
    }
}

struct widgetExtention: Widget {
    let kind: String = "widgetExtention"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                widgetExtentionEntryView(entry: entry)
                    .containerBackground(.brown.opacity(0.6), for: .widget)
            } else {
                widgetExtentionEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall])
    }
}

#Preview(as: .systemSmall) {
    widgetExtention()
} timeline: {
    SimpleEntry(date: .now, progressAppStorage: "")
    SimpleEntry(date: .now, progressAppStorage: "")
}
