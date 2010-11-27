//
//  FileMakerFakeAppDelegate.h
//  FileMakerFake
//
//  Created by Yosuke Suzuki on 10/11/27.
//  Copyright 2010 バスケ. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InfoViewController;

@interface FileMakerFakeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    InfoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet InfoViewController *viewController;

@end

