//
//  ViewController.m
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import "ViewController.h"
#import "AIPresenterOne.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UIButton *less;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onClickLessButton:(id)sender {
    __weak typeof(self)weakSelf = self;
    [[self.presentOne lessFunction] subscribeNext:^(NSNumber* x) {
        NSLog(@"%@",x);
        weakSelf.label.text  = [NSString stringWithFormat:@"%ld",[x integerValue] ];
    }];
}
- (IBAction)onClickAddButton:(id)sender {
    __weak typeof(self)weakSelf = self;
    [[self.presentOne addFunction] subscribeNext:^(NSNumber* x) {
        NSLog(@"%@",x);
        weakSelf.label.text  = [NSString stringWithFormat:@"%ld",[x integerValue] ];
    }];
}

- (RACSignal *)setLabelNumber:(NSInteger)number {
    
    __weak typeof(self)weakSelf = self;
    return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        weakSelf.inputTextField.text = [NSString stringWithFormat:@"%ld",number];
        [subscriber sendNext:weakSelf.label.text];
        return [RACDisposable disposableWithBlock:^{

        }];
    }];
}


@end
