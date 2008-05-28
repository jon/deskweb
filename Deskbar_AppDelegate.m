//
//  Deskbar_AppDelegate.m
//  Deskweb
//
//  Created by Jon Olson on 5/28/08.
//  Copyright 2008 Georgia Institute of Technology. All rights reserved.
//

#import "Deskbar_AppDelegate.h"


@implementation Deskbar_AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	NSString *content = @"<html><head><style>body { color: white; background-color: transparent; }</style></head><body><h1>Hello World</h1></body></html>";
	
	[webView setDrawsBackground:NO];
	[[webView mainFrame] loadHTMLString:content baseURL:[NSURL URLWithString:@"file:///"]];
}

@end
