//
//  Deskbar_AppDelegate.h
//  Deskweb
//
//  Created by Jon Olson on 5/28/08.
//  Copyright 2008 Georgia Institute of Technology. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface Deskbar_AppDelegate : NSObject {
	IBOutlet NSWindow *mainWindow;
	IBOutlet WebView *webView;
}

@end
