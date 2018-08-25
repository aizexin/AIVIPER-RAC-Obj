//
//  AIPresenterOne.m
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import "AIPresenterOne.h"

@implementation AIPresenterOne


- (RACSignal*)addFunction {
    __weak typeof(self)weakSelf = self;
    return [[self.interctor interacotrAddFunction]filter:^BOOL(NSNumber *value) {
        if (value.integerValue > 10) {
            [weakSelf.route presentTwoViewControllerfrom:weakSelf.view];
            return NO;
        } else {
            return YES;
        }
    }];;
}
- (RACSignal*)lessFunction {
    return [self.interctor interacotrLessFunction];
}

- (RACCommand*)setNumberFunction {
    return [self.view setLabelNumber];
}
@end
