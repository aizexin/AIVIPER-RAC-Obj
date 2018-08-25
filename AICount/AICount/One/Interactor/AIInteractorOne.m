//
//  AIInteractorOne.m
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import "AIInteractorOne.h"
#import "AIPresenterOne.h"
@interface AIInteractorOne ()
@property (nonatomic, assign)   NSInteger  count;
@end

@implementation AIInteractorOne

- (instancetype)init
{
    self = [super init];
    if (self) {
        _count = 0;
        __weak typeof(self)weakSelf = self;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
//                [subscriber sendNext:@(3)];
//                return [RACDisposable disposableWithBlock:^{
//
//                }];
//            }];
            [[self.presentOne setNumberFunction:3]subscribeNext:^(id  _Nullable x) {
                
            }];
        });
    }
    return self;
}
- (NSInteger)getCountNumber {
    return 0;
}

- (RACSignal*)interacotrAddFunction {
    __weak typeof(self)weakSelf = self;
    return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        weakSelf.count++;
        [subscriber sendNext:@(weakSelf.count)];
        return [RACDisposable disposableWithBlock:^{
            
        }];
    }];
}
- (RACSignal*)interacotrLessFunction {
    __weak typeof(self)weakSelf = self;
    return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        weakSelf.count--;
        [subscriber sendNext:@(weakSelf.count)];
        return [RACDisposable disposableWithBlock:^{
            
        }];
    }];
}

- (RACSignal*)interacotrGetNumberFunction {
    __weak typeof(self)weakSelf = self;
    return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        [subscriber sendNext:@(weakSelf.count)];
        return [RACDisposable disposableWithBlock:^{
            
        }];
    }];
}

- (RACSignal*)interacotrSetNumberFunction:(NSInteger)number {
    
    return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        [subscriber sendNext:@(number)];
        return [RACDisposable disposableWithBlock:^{
            
        }];
    }];
}
@end
