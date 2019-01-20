//
//  IntroViewController.m
//  FindersSample
//
//  Created by 박 형빈 on 20/01/2019.
//  Copyright © 2019 bean5389. All rights reserved.
//

#import "IntroViewController.h"
#import "AppDelegate.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self performSelector:@selector(goMain) withObject:self afterDelay:1.0f];
}

- (void)goMain{
    
    UIViewController *mainViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MainNavigationController"];
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    UIWindow *window = [appDelegate window];
    [window setRootViewController:mainViewController];
    
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
