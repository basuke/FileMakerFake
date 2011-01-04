//
//  FileMakerFakeViewController.h
//  FileMakerFake
//
//  Created by Yosuke Suzuki on 10/11/27.
//  Copyright 2010 バスケ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController {
	IBOutlet UIButton *sendButton;
	IBOutlet UITextView *urlEntry;
	
	IBOutlet UILabel *infoLabel;
	
	IBOutlet UITextView *clipboardText;
	IBOutlet UIImageView *clipboardImage;
}

@property(nonatomic, retain) NSString *info;

- (IBAction)send;

- (void)refresh;

@end

