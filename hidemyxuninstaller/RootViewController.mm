#import "RootViewController.h"

@implementation RootViewController
- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor redColor];
    
    system("/usr/bin/hidemyxuninstaller");
    system("/usr/bin/respring");
}
@end
