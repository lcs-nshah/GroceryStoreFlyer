//
//  DepartmentsListView.swift
//  GroceryStoreFlyer
//
//  Created by Neil Shah on 2025-02-03.
//

import SwiftUI

struct DepartmentsListView: View {
    var body: some View {
        NavigationStack {
            List(thisWeeksFlyer.departments) { currentDepartment in
                NavigationLink {
                    DepartmentDetailView()
                } label: {
                    Text(currentDepartment.name)
                }
            }
            .navigationTitle("Weekly Flyer")
        }
    }
}

#Preview {
    DepartmentsListView()
}
