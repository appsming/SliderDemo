//
//  MainViewController.h
//  SliderDemo
//
//  Created by tao song on 17/8/7.
//  Copyright © 2017年 com.wxkj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideMenuController.h"

@interface MainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, SlideMenuControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
