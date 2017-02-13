//
//  ViewModel.swift
//  Todoapp
//
//  Created by KingCQ on 2017/2/13.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import RxSwift

class ViewModel {
    
    func fetch() -> Observable<[Model]> {
        return Observable.create({ observer -> Disposable in
            var models: [Model] = []
            ["1", "2", "3"].forEach({
                models.append(Model(title: $0))
            })
            observer.onNext(models)
            observer.onCompleted()
            return Disposables.create()
        })
    }
}
