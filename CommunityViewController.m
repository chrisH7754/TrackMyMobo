//
//  CommunityViewController.m
//  MoBoApp
//
//  Created by Christian Heinrich on 15.09.14.
//  Copyright (c) 2014 Christian Heinrich. All rights reserved.
//

#import "CommunityViewController.h"

@interface CommunityViewController ()

@end

@implementation CommunityViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Community", @"Comunity");
        self.tabBarItem.image = [UIImage imageNamed:@"world"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //[scroller setScrollEnabled: YES];
    //[scroller setContentSize: CGSizeMake(320, 1700)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
