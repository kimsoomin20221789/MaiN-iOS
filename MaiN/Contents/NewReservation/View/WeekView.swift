//
//  WeekView.swift
//  MaiN
//
//  Created by 김수민 on 1/9/24.
//

import SwiftUI

struct WeekView: View {
    @Binding var selectedDate: Date
    private func updateSelectedDate(to newDate: Date) {
        self.selectedDate = newDate
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 0) {
                    ForEach(0..<7, id: \.self) { offset in
                        let day = Calendar.current.date(byAdding: .day, value: offset, to: selectedDate.startOfWeek!)!
                        let dayString = changeToKorean(englishDate: dayOfWeekFormatter.string(from: day))
                        
                        let dateString = dateOfWeekFormatter.string(from: day)
                        Button(action: {self.updateSelectedDate(to: day)}){
                            VStack() {
                                Text(dayString)
                                    .foregroundColor(.gray01)
                                    .font(.normal(size: 14))
                                
                                Text(dateString)
                                    .foregroundColor(.black)
                                    .font(.normal(size: 21))
                            }
                            .frame( width: geometry.size.width/7, height: 61)
                            .background(isSameDay(day1: day, day2: selectedDate) ? .blue01 : Color.white)
                            .cornerRadius(10)
                        }
                    }
                }
            }
        }
    }

    private func isSameDay(day1: Date, day2: Date) -> Bool {
        let calendar = Calendar.current
        return calendar.isDate(day1, inSameDayAs: day2)
    }
}

func changeToKorean(englishDate: String) -> String {
    switch englishDate {
    case "Mon":
        return "월"
    case "Tue":
        return "화"
    case "Wed":
        return "수"
    case "Thu":
        return "목"
    case "Fri":
        return "금"
    case "Sat":
        return "토"
    case "Sun":
        return "일"
    default:
        return "알 수 없음"
    }
}

let dayOfWeekFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "E"
    return formatter
}()

let dateOfWeekFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "d"
    return formatter
}()

extension Date {
    var startOfWeek: Date? {
        Calendar.current.date(from: Calendar.current.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self))
    }
}

let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter
}()

struct WeekView_Previews: PreviewProvider {
    @State static var previewDate = Date()

    static var previews: some View {
        WeekView(selectedDate: $previewDate)
    }
}
