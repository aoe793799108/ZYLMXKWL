//
//  homePageViewController.m
//  影靡
//
//  Created by zhouyong on 16/1/15.
//  Copyright © 2016年 zy. All rights reserved.
//

#import "homePageViewController.h"

@interface homePageViewController ()

@end

@implementation homePageViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        UIImage * image = [UIImage new];
        self.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:image selectedImage:nil];
        //self.navigationController.title = @"首页";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor yellowColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
