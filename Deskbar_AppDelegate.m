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
	
	NSRect screenFrame = [[NSScreen mainScreen] frame];
	NSRect appFrame = [mainWindow frame];
	
	NSString *sizeString = [infoDictionary objectForKey:@"DWSize"];
	NSArray *sizeComponents = [sizeString componentsSeparatedByString:@"x"];
	if ([sizeComponents count] == 2) {
		appFrame.size.width = [[sizeComponents objectAtIndex:0] intValue];
		appFrame.size.height = [[sizeComponents objectAtIndex:1] intValue];
	}

	NSString *positionString = [infoDictionary objectForKey:@"DWPosition"];
	NSArray *positionComponents = [positionString componentsSeparatedByString:@","];
	if ([positionComponents count] == 2) {
		appFrame.origin.x = [[positionComponents objectAtIndex:0] intValue];
		appFrame.origin.y = screenFrame.size.height - [[positionComponents objectAtIndex:1] intValue] - appFrame.size.height;
	}
	
	[mainWindow setFrame:appFrame display:YES];
	
	[[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:deskWebHome]]];
}

@end
