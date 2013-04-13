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

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.testemView = [[UIWebView alloc] init];
    [self.view addSubview:self.testemView];
    
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
