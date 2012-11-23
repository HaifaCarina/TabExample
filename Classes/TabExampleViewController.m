    //
//  TabExampleViewController.m
//  TabExample
//
//  Created by Macbook on 7/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TabExampleViewController.h"


@implementation TabExampleViewController

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	[super loadView];
	
	UIImage *spongebob = [UIImage imageNamed:@"spongebob.png"];
	UIImage *patrick = [UIImage imageNamed:@"patrickstar.png"];
	
	FirstViewController *firstViewController = [[FirstViewController alloc]init];
    firstViewController.title = @"Spongebob";
    //firstViewController.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemSearch tag:0];
    firstViewController.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Spongebob" image:spongebob tag:1];
    UINavigationController *firstNavController = [[UINavigationController alloc]initWithRootViewController:firstViewController];
	
    SecondViewController *secondViewController = [[SecondViewController alloc]init];
    secondViewController.title = @"Patrick";
    secondViewController.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Patrick" image:patrick tag:1];
	UINavigationController *secondNavController = [[UINavigationController alloc]initWithRootViewController:secondViewController];
	
    ThirdViewController *thirdViewController = [[ThirdViewController alloc]init];
    thirdViewController.title = @"Third View";
    thirdViewController.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem: UITabBarSystemItemMostRecent tag:2];
    UINavigationController *thirdNavController = [[UINavigationController alloc]initWithRootViewController:thirdViewController];
	
    UITabBarController *atabBarController = [[UITabBarController alloc] initWithNibName:nil bundle:nil];
    atabBarController.viewControllers = [[NSArray alloc] initWithObjects:firstNavController, secondNavController, thirdNavController, nil];
    atabBarController.view.frame = CGRectMake(0, 0, 320, 460); // SOLUTION TO MY LONG HOUR PROBLEM!
	atabBarController.delegate = self;        
	[self.view addSubview: [atabBarController view]];
}




- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
