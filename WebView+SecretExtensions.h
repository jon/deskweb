//
//  WebView+SecretExtensions.h
//  Deskweb
//
//  Created by Jon Olson on 5/28/08.
//  Copyright 2008 Jon Olson. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface WebView (SecretExtensions)

- (BOOL)drawsBackground;
- (void)setDrawsBackground:(BOOL)drawsBackground;

@end
