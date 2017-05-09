//
//  GLXViewController.m
//  LDBusMediatorLibrary
//
//  Created by zzw19880707 on 11/02/2016.
//  Copyright (c) 2016 zzw19880707. All rights reserved.
//

#import "GLXViewController.h"
#import "GLXPopMenuView.h"
@interface GLXViewController ()

@end

@implementation GLXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[GLXPopMenuView alloc] initWithArray:@[@"123",@"444"] frame:self.view.bounds menuWidth:170];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
