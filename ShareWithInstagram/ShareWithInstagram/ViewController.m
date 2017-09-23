//
//  ViewController.m
//  ShareWithInstagram
//
//  Created by Yumenosuke Koukata on 6/9/16.
//  Copyright (c) 2016 ZYXW. All rights reserved.
//


#import "ViewController.h"
#import "MGInstagram.h"
#import "PKImagePickerViewController.h"

@interface ViewController () <PKImagePickerViewControllerDelegate>

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

- (void)imageSelected:(UIImage *)image {
	MGInstagram *instagram = [MGInstagram new];
	instagram.photoFileName = @"posted photo";
	[instagram postImage:image withCaption:@"Sharing with instagram. This is a caption." inView:self.view];
	NSArray *activities = @[instagram];
	UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[@"shared text", @"https://google.com", @"google.png"] applicationActivities:activities];
	[self presentViewController:activityViewController animated:YES completion:^{
		NSLog(@"finish sharing");
	}];
}

- (IBAction) shareButtonTapped:(id)sender {
	PKImagePickerViewController *imagePickerViewController = [PKImagePickerViewController new];
	imagePickerViewController.delegate = self;
	[self presentViewController:imagePickerViewController animated:YES completion:^{
	}];
}

@end
