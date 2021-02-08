//
//  AppDelegate.m
//  SSLErrorSample
//
//  Created by Ignacio Delgado on 8/2/21.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.;
    self.window = [UIWindow new];
    self.window.rootViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
