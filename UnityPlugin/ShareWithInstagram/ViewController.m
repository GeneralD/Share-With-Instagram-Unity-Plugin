//
//  ViewController.m
//  ShareWithInstagram
//
//  Created by Yumenosuke Koukata on 6/9/16.
//  Copyright (c) 2016 ZYXW. All rights reserved.
//


#import "ViewController.h"
#import "DMActivityInstagram.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
	UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
	NSString *messageStr = @"Test Message #test";
	UIImage *image = [UIImage imageNamed:@"mona_lisa.jpg"];
	DMActivityInstagram *instagram = [DMActivityInstagram new];
	NSArray *activities = @[instagram];
	NSArray *items = @[messageStr, image];
	UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:activities];
	[rootViewController presentViewController:activityViewController animated:YES completion:^{}];
}

@end
