//
// Created by Yumenosuke Koukata on 6/10/16.
// Copyright (c) 2016 ZYXW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DMActivityInstagram.h"

#ifdef __cplusplus
extern "C" {
#endif

void shareMessage(const char *message) {
	UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
	NSString *messageStr = [[NSString alloc] initWithUTF8String:message];
	UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[messageStr] applicationActivities:nil];
	[rootViewController presentViewController:activityViewController animated:YES completion:^{}];
}
void shareImage(const char *imagePath, const char *message) {
	UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
	NSString *messageStr = [[NSString alloc] initWithUTF8String:message];
	NSString *imagePathStr = [[NSString alloc] initWithUTF8String:imagePath];
	UIImage *image = [UIImage imageWithContentsOfFile:imagePathStr];
	DMActivityInstagram *instagram = [DMActivityInstagram new];
	NSArray *activities = @[instagram];
	UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[messageStr, image] applicationActivities:activities];
	[rootViewController presentViewController:activityViewController animated:YES completion:^{}];
}

#ifdef __cplusplus
}
#endif

