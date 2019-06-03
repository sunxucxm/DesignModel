//
//  ViewController.m
//  DesignModel
//
//  Created by 孙旭 on 2019/6/3.
//  Copyright © 2019 sunxu. All rights reserved.
//

#import "ViewController.h"
#import "PrototypeViewController.h"

@interface ViewController ()

@property (nonatomic , strong)NSArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"23种设计模式";
    self.dataArray = @[@"原型模式",@"工厂模式",@"抽象工厂",@"建造者模式",@"单例模式",@"适配器模式",@"桥接模式",@"外观模式",@"中介者模式",@"观察者模式",@"组合模式",@"迭代器模式",@"访问者模式",@"装饰模式",@"责任链模式",@"模板方法模式",@"策略模式",@"命令模式",@"享元模式",@"代理模式",@"备忘录模式",@"解释器模式",@"状态模式"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.row) {
        case 0:
            //原型模式
            [self.navigationController pushViewController:[[PrototypeViewController alloc]init] animated:YES];
            break;
            
        default:
            break;
    }
}


@end

