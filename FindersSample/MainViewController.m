//
//  MainViewController.m
//  FindersSample
//
//  Created by 박 형빈 on 20/01/2019.
//  Copyright © 2019 bean5389. All rights reserved.
//

#import "MainViewController.h"
#import <WebKit/WebKit.h>

@interface MainViewController ()
@property (strong, nonatomic) WKWebView *webView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://52.78.113.251:8080/finders/hello"]]];
}

- (void)loadView{
    [super loadView];
    self.webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    
    [self.view addSubview:self.webView];
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
