//
//  KYJMainViewController.m
//  OurFirstNonStoryBoardApp
//
//  Created by Kevin Jiang on 2/18/13.
//  Copyright (c) 2013 Kevin Jiang. All rights reserved.
//

#import "KYJMainViewController.h"

@interface KYJMainViewController ()

@end

@implementation KYJMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UILabel *greetingLabel = [[UILabel alloc] initWithFrame: CGRectMake(10,10,300,100)];
    greetingLabel.text = @"Hello World";
    greetingLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:greetingLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
