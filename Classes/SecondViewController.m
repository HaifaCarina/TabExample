//
//  SecondViewController.m
//  TabBar
//
//  Created by Macbook on 7/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController
- (void) loadView {
	[super loadView];
	UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bigpatrickstar.png"]];
	[self.view addSubview:image];
	
}

- (void) dealloc {
	[super dealloc];
}

@end
