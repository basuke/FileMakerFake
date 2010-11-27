//
//  FileMakerFakeAppDelegate.m
//  FileMakerFake
//
//  Created by Yosuke Suzuki on 10/11/27.
//  Copyright 2010 バスケ. All rights reserved.
//

#import "FileMakerFakeAppDelegate.h"
#import "InfoViewController.h"

@implementation FileMakerFakeAppDelegate

@synthesize window;
@synthesize viewController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [self.window addSubview:viewController.view];
    [self.window makeKeyAndVisible];

	return YES;
}


- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
	if ([url.scheme isEqualToString:@"fmp7script"]) {
		NSLog(@"%@", url);
		
		viewController.info = [url absoluteString];
		return YES;
	}
	return NO;
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
	[viewController refresh];
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
