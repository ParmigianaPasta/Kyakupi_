//
//  CustomerView.swift
//  Kyakupi
//
//  Created by 一条和洋 on 2021/01/18.
//

import SwiftUI

struct CustomerView: View {
    var customers: [CustomerRowInfo] = [
        CustomerRowInfo(),
        CustomerRowInfo(),
        CustomerRowInfo()
    ]
    
    var body: some View {
        NavigationView {
            List(customers) { customer in
                CustomerRow(customerRowInfo: customer)
            }
            .listStyle(PlainListStyle()) // PlainListStyleにしないと枠みたいのがつく
            .navigationBarTitle("顧客一覧", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: {
                    print("Close tapped!")
                }) {
                    Image(systemName: "xmark")
                },
                trailing: Button(action: {
                    print("Customer pluss tapped!")
                }) {
                    Image(systemName: "person.badge.plus")
                })
            .environment(\.defaultMinListRowHeight, 10)
        }
    }
}

struct CustomerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerView()
    }
}
