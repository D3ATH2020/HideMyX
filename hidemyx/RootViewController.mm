#import "RootViewController.h"
#import <UIKit/UIKit.h>

@implementation RootViewController
- (void)viewDidLoad {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]];
    
    UIButton *hideButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    hideButton.frame = CGRectMake(20, 50, 100, 35);
    [hideButton setTitle:@"Hide Icon" forState:UIControlStateNormal];
    [hideButton setBackgroundImage:[UIImage imageNamed:@"hide.png"]
     forState:UIControlStateNormal];
    [self.view addSubview:hideButton];
    [hideButton addTarget:self action:@selector(hideButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *showButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    showButton.frame = CGRectMake(160, 50, 100, 35);
    [showButton setTitle:@"Show Icon" forState:UIControlStateNormal];
     [showButton setBackgroundImage:[UIImage imageNamed:@"show.png"]
      forState:UIControlStateNormal];
    [self.view addSubview:showButton];
    [showButton addTarget:self action:@selector(showButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *uninstallButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    uninstallButton.frame = CGRectMake(20, 100, 200, 35);
    [uninstallButton setTitle:@"Uninstall This App" forState:UIControlStateNormal];
    [uninstallButton setBackgroundImage:[UIImage imageNamed:@"uninstall.png"]
                          forState:UIControlStateNormal];
    [self.view addSubview:uninstallButton];
    [uninstallButton addTarget:self action:@selector(uninstallButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *supportLabel = [[UILabel alloc] initWithFrame:CGRectMake(21, 200, self.view.frame.size.width - 20, 44)];
    supportLabel.text = @"Visit deathscreations.22web.org for support make sure to create your topic in the right area!";
    supportLabel.backgroundColor = [UIColor clearColor];
    supportLabel.textColor = [UIColor greenColor];
    supportLabel.textAlignment = UITextAlignmentLeft;
    supportLabel.lineBreakMode = NSLineBreakByWordWrapping;
    supportLabel.numberOfLines = 30;
    [self.view addSubview:supportLabel];
    [supportLabel release];
    
    UILabel *respringLabel = [[UILabel alloc] initWithFrame:CGRectMake(21, 300, self.view.frame.size.width - 20, 44)];
    respringLabel.text = @"Device will Respring when finished";
    respringLabel.backgroundColor = [UIColor clearColor];
    respringLabel.textColor = [UIColor greenColor];
    respringLabel.textAlignment = UITextAlignmentLeft;
    [self.view addSubview:respringLabel];
    [respringLabel release];

}

-(void)hideButtonPressed
{
    system("/usr/bin/hidemyx");
}

-(void)showButtonPressed
{
    system("/usr/bin/showmyx");
}

-(void)uninstallButtonPressed
{
    system("/usr/bin/hidemyxopen");
}
@end
