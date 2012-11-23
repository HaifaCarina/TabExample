//
//  FirstViewController.m
//  TabBar
//
//  Created by Macbook on 7/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController

- (void) loadView {
	[super loadView];
	UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bigspongebob.png"]];
	[self.view addSubview:image];
	
}

- (void) dealloc {
	[super dealloc];
}
@end
