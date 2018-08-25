//
//  ViewController.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AIViewOneProtocol.h"
@class AIPresenterOne;

@interface ViewController : UIViewController <AIViewOneProtocol>

@property (nonatomic,strong)AIPresenterOne *presentOne;
@end

