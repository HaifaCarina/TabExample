//
//  TabExampleAppDelegate.h
//  TabExample
//
//  Created by Macbook on 7/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabExampleViewController.h"

@interface TabExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	TabExampleViewController *viewController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) TabExampleViewController *viewController;

@end

