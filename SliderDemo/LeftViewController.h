//
//  LeftViewController.h
//  SliderDemo
//
//  Created by tao song on 17/8/7.
//  Copyright © 2017年 com.wxkj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideMenuController.h"

typedef enum : NSInteger{
    LeftMenuMain = 0,
    LeftMenuSwift,
    LeftMenuJava,
    LeftMenuGo
} LeftMenu;

@protocol LeftMenuProtocol <NSObject>

@required
-(void)changeViewController:(LeftMenu) menu;

@end


@interface LeftViewController :  UIViewController<LeftMenuProtocol,UITableViewDelegate, UITableViewDataSource>

@property (retain, nonatomic) UIViewController *mainViewControler;

@property (retain, nonatomic) UIViewController *swiftViewController;
@property (retain, nonatomic) UIViewController *javaViewController;
@property (retain, nonatomic) UIViewController *goViewController;


@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end
