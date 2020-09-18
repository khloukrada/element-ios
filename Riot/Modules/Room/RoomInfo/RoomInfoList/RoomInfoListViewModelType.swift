// File created from ScreenTemplate
// $ createScreen.sh Room2/RoomInfo RoomInfoList
/*
 Copyright 2020 New Vector Ltd
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import Foundation

protocol RoomInfoListViewModelViewDelegate: class {
    func roomInfoListViewModel(_ viewModel: RoomInfoListViewModelType, didUpdateViewState viewSate: RoomInfoListViewState)
}

protocol RoomInfoListViewModelCoordinatorDelegate: class {
    func roomInfoListViewModelDidCancel(_ viewModel: RoomInfoListViewModelType)
    func roomInfoListViewModel(_ viewModel: RoomInfoListViewModelType, wantsToNavigate viewController: UIViewController)
}

/// Protocol describing the view model used by `RoomInfoListViewController`
protocol RoomInfoListViewModelType {        
        
    var viewDelegate: RoomInfoListViewModelViewDelegate? { get set }
    var coordinatorDelegate: RoomInfoListViewModelCoordinatorDelegate? { get set }
    
    func process(viewAction: RoomInfoListViewAction)
    var numberOfMembers: Int { get }
    var isEncrypted: Bool { get }
    var basicInfoViewModel: RoomInfoBasicTableViewCellVM { get }
}
