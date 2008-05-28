//
//  DesktopWebView.m
//  Deskweb
//
//  Created by Jon Olson on 5/28/08.
//  Copyright 2008 Georgia Institute of Technology. All rights reserved.
//

#import "DesktopWebView.h"


@implementation DesktopWebView

- (id)initWithFrame:(NSRect)frameRect frameName:(NSString *)frameName groupName:(NSString *)groupName {
	WebView *result = [super initWithFrame:frameRect frameName:frameName groupName:groupName];
	
	[result setDrawsBackground:NO];
	
	return result;
}

- (NSDragOperation)draggingEntered:(id <NSDraggingInfo>)sender {
	return NSDragOperationNone;
}

- (BOOL)prepareForDragOperation:(id < NSDraggingInfo >)sender {
	return NO;
}

@end
