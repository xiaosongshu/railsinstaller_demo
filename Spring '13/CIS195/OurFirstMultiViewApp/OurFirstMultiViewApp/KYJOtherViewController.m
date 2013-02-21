//
//  KYJOtherViewController.m
//  OurFirstMultiViewApp
//
//  Created by Kevin Jiang on 2/18/13.
//  Copyright (c) 2013 Kevin Jiang. All rights reserved.
//

#import "KYJOtherViewController.h"
#import "KYJOtherViewController.h"

@interface KYJOtherViewController ()

@end

@implementation KYJOtherViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue: (UIStoryboardSegue *)segue sender:
(id)sender{
    if ([segue.identifier isEqualToString:@"otherViewSegue"]){
        //NSString *message = self.mainTextField.text;
        KYJOtherViewController *destination = segue.destinationViewController;
    if ([destination view]) {
        //destination.otherViewLabel.text = message;
    }
    }
}

@end
