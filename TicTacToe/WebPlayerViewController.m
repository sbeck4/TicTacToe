//
//  WebPlayerViewController.m
//  TicTacToe
//
//  Created by Shannon Beck on 1/9/15.
//  Copyright (c) 2015 Shannon Beck. All rights reserved.
//

#import "WebPlayerViewController.h"

@interface WebPlayerViewController () <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadNewWebPage:@"http://en.wikipedia.org/wiki/Tic-tac-toe"];
    self.webView.delegate = self;
    // Do any additional setup after loading the view.
}

-(void)loadNewWebPage:(NSString *)string
{
    NSString *addressString = string;
    NSURL *addressURL = [NSURL URLWithString:addressString];
    NSURLRequest *addressRequest = [NSURLRequest requestWithURL:addressURL];
    [self.webView loadRequest:addressRequest];
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
