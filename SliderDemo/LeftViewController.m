//
//  LeftViewController.m
//  SliderDemo
//
//  Created by tao song on 17/8/7.
//  Copyright © 2017年 com.wxkj. All rights reserved.
//

#import "LeftViewController.h"
#import "SwiftViewController.h"
#import "JavaViewController.h"
#import "GoViewController.h"

@interface LeftViewController ()
@property (retain, nonatomic) NSArray *menus;
@end

@implementation LeftViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    _menus = @[@"Main", @"Swift", @"Java", @"Go", @"NonMenu"];
    self.tableView.separatorColor = [UIColor colorWithRed:224/255.0 green:224/255.0 blue:224/255.0 alpha:1];
    // Do any additional setup after loading the view.



    SwiftViewController *swiftViewController = [[SwiftViewController alloc] init];
   
    self.swiftViewController = [[UINavigationController alloc] initWithRootViewController: swiftViewController];
    
    JavaViewController *javaViewController = [[JavaViewController alloc] init];
    self.javaViewController = [[UINavigationController alloc] initWithRootViewController: javaViewController];
    
    GoViewController *goViewController = [[GoViewController alloc] init];
    self.goViewController = [[UINavigationController alloc] initWithRootViewController: goViewController];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeViewController:(LeftMenu) menu {
    switch (menu) {
        case LeftMenuMain:
         
            
            [self.slideMenuController changeMainViewController:self.mainViewControler close:YES];
            break;
        case LeftMenuSwift:{
            [self.swiftViewController.childViewControllers[0] setTitle:@"HelloWorld"];
            [self.slideMenuController changeMainViewController:self.swiftViewController close:YES];
           
            break;
        }
        case LeftMenuJava:
            
            [self.slideMenuController changeMainViewController:self.javaViewController close:YES];
            break;
        case LeftMenuGo:
             
            [self.slideMenuController changeMainViewController:self.goViewController close:YES];
            break;
    }
    
}





-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return  44.0f;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _menus.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"UITableViewCell"];
    
    
    cell.textLabel.text = @"HelloWorld";
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self changeViewController:indexPath.row];
    
    
}

@end
