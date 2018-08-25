//
//  AIInteractor.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#ifndef AIInteractor_hs
#define AIInteractor_h

#import <ReactiveObjC.h>
@class RACSignal;
@protocol AIInteractorOneProtocol <NSObject>

- (RACSignal*)interacotrAddFunction;
- (RACSignal*)interacotrLessFunction;
- (RACSignal*)interacotrGetNumberFunction;
- (RACSignal*)interacotrSetNumberFunction:(NSInteger)number;
@end
#endif /* AIInteractor_h */
