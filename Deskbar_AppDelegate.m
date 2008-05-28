//
//  Deskbar_AppDelegate.m
//  Deskweb
//
//  Created by Jon Olson on 5/28/08.
//  Copyright 2008 Georgia Institute of Technology. All rights reserved.
//

#import "Deskbar_AppDelegate.h"

extern char **environ;

@implementation Deskbar_AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	[webView setDrawsBackground:NO];
	
	NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
	NSString *deskWebHome = [infoDictionary objectForKey:@"DWHomePage"];
	if (!deskWebHome) {
		NSLog(@"DWHomePage not set in Info.plist. Please set this to a string and try again");
		exit(1);
	}
		
	[[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:deskWebHome]]];
}

@end
