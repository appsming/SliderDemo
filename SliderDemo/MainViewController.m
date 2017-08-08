//
//  MainViewController.m
//  SliderDemo
//
//  Created by tao song on 17/8/7.
//  Copyright © 2017年 com.wxkj. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController() {
    NSArray *mainContents;
}
@end

@implementation MainViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    mainContents = @[@"data1", @"data2", @"data3", @"data4", @"data5", @"data6", @"data7", @"data8", @"data9", @"data10", @"data11", @"data12", @"data13", @"data14", @"data15"];
   
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self setNavigationBarItem];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return mainContents.count;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Hello"];
   
    
    cell.textLabel.text = @"Hello";
    
    return cell;
}

@end
