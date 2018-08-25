//
//  AIInteractorOne.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AIInteractorProtocol.h"
@class AIPresenterOne;
@interface AIInteractorOne : NSObject <AIInteractorOneProtocol>
@property (nonatomic,strong)AIPresenterOne *presentOne;
@end

