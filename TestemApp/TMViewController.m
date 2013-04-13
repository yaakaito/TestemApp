//
//  TMViewController.m
//  TestemApp
//
//  Created by yaakaito on 2013/04/13.
//  Copyright (c) 2013年 yaakaito.org. All rights reserved.
//

#import "TMViewController.h"

@interface TMViewController ()
@property (nonatomic, strong) UIWebView *testemView;
@end

@implementation TMViewController

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.testemView = [[UIWebView alloc] init];

    return self;
}

// override setter
- (void)setTestemUrl:(NSURL *)testemUrl
{
    if (_testemUrl != testemUrl) {
        _testemUrl = testemUrl;
        if (self.testemView) {
            [self reloadTestem];
        }
    }
}

- (void)reloadTestem
{
    [self.testemView loadRequest:[NSURLRequest requestWithURL:self.testemUrl]];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self.view addSubview:self.testemView];
    [self reloadTestem];

    
    UILabel *testemChip = [[UILabel alloc] init];
    [testemChip setText:@"Testem App"];
    [testemChip setTextColor:[UIColor whiteColor]];
    [testemChip setTextAlignment:NSTextAlignmentCenter];
    [testemChip setBackgroundColor:[UIColor colorWithWhite:0.2 alpha:0.5]];
    [testemChip setFrame:CGRectMake(0, 0, 320, 44)];
    [self.view addSubview:testemChip];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.testemView.frame = self.view.bounds;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
