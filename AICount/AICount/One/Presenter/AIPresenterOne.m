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
    return [self.interctor interacotrAddFunction];
}
- (RACSignal*)lessFunction {
    return [self.interctor interacotrLessFunction];
}

- (RACSignal*)setNumberFunction:(NSInteger)number {
    return [self.view setLabelNumber:number];
}
@end
