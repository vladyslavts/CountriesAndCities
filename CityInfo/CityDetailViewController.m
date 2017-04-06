//
//  CityDetailViewController.m
//  CityInfo
//
//  Created by Vlad on 06.04.17.
//  Copyright © 2017 Vlad. All rights reserved.
//

#import "CityDetailViewController.h"

@interface CityDetailViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation CityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.currentCity;
    [self loadDetailCityInfo:self.currentCity];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)loadDetailCityInfo:(NSString *)city {
    
    dispatch_queue_t qqq = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async(qqq, ^{
        
        NSString *urlString = [NSString stringWithFormat:@"https://en.m.wikipedia.org/wiki/%@", self.currentCity];
        NSURL *URL = [NSURL URLWithString:urlString];
        NSURLRequest *request = [NSURLRequest requestWithURL:URL];
        [self.webView loadRequest:request];
        
    });

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
