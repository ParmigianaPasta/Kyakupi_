//
//  CustomerCell.swift
//  Kyakupi
//
//  Created by 一条和洋 on 2021/01/19.
//

import SwiftUI

struct CustomerRowInfo: Identifiable {
    var id = UUID()
    var name = "山田"
    var lastVisit = Date()
}

struct CustomerRow: View {
    var customerRowInfo: CustomerRowInfo

    var body: some View {
        HStack(alignment: .center, spacing: 20.0) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .foregroundColor(.gray)
            VStack(alignment: .leading) {
                Text(customerRowInfo.name)
                    .font(.title)
                Spacer()
                Text("lastVisit")
            }
            Spacer()
        }
        .frame(height: 70)
    }
}

struct CustomerRow_Previews: PreviewProvider {
    static var previews: some View {
        CustomerRow(customerRowInfo: CustomerRowInfo())
            .previewLayout(.fixed(width: 400, height: 70))
    }
}
