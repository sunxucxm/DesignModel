//
//  PrototypeViewController.m
//  DesignModel
//
//  Created by 孙旭 on 2019/6/3.
//  Copyright © 2019 sunxu. All rights reserved.
//

#import "PrototypeViewController.h"

@interface PrototypeDemo: NSObject<NSCopying>

@property (nonatomic , copy)NSString *name;

@end

@implementation PrototypeDemo

- (id)copyWithZone:(NSZone *)zone {
    
    PrototypeDemo *single = [[PrototypeDemo allocWithZone:zone] init];
    single.name = _name;
    return single;
}

@end


@interface PrototypeViewController ()

@end

@implementation PrototypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    PrototypeDemo * pro1 = [[PrototypeDemo alloc]init];
    pro1.name = @"hello";
    
    PrototypeDemo * pro2 = [pro1 copy];
    
    NSLog(@"pro1=%@-----pro2%@------pro2.name=%@",pro1,pro2,pro2.name);
}



@end
