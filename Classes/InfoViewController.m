//
//  FileMakerFakeViewController.m
//  FileMakerFake
//
//  Created by Yosuke Suzuki on 10/11/27.
//  Copyright 2010 バスケ. All rights reserved.
//

#import "InfoViewController.h"

@implementation InfoViewController

@synthesize info;

- (void)dealloc {
	[sendButton release];
	[urlField release];
	
	[infoLabel release];
	
	[clipboardText release];
	[clipboardImage release];
	
	self.info = nil;
	
	[super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	infoLabel.text = self.info;
	
	[self refresh];
}

- (void)refresh {
	UIPasteboard* pasteBoard = [UIPasteboard generalPasteboard];
	
	clipboardImage.image = pasteBoard.image;
	clipboardText.text = pasteBoard.string;
}

- (IBAction)send {
	if ([[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlField.text]]) {
		infoLabel.text = @"OK";
	} else {
		infoLabel.text = @"Cannot open url.";
	}
}

- (void)setInfo:(NSString *)newInfo {
	[info release];
	info = [newInfo copy];
	
	if (infoLabel) {
		infoLabel.text = info;
	}
}

@end
