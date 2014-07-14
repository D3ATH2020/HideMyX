int main(int argc, char **argv) {
    setuid(0);
	NSAutoreleasePool *p = [[NSAutoreleasePool alloc] init];
	int ret = UIApplicationMain(argc, argv, @"HideMyXApplication", @"HideMyXApplication");
	[p drain];
	return ret;
}

// vim:ft=objc
