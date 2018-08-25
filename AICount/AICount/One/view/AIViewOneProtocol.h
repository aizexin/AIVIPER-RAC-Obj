//
//  AIViewOneProtocol.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#ifndef AIViewOneProtocol_h
#define AIViewOneProtocol_h

@class RACSignal;
@protocol AIViewOneProtocol <NSObject>

- (RACSignal*)setLabelNumber:(NSInteger)number;

@end
#endif /* AIViewOneProtocol_h */
