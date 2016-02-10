//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISLocation.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)allLocationNames{
    return [self.locations valueForKey:@"name"];
}

- (FISLocation *)locationNamed:(NSString *)name{
    NSPredicate *namePredicate = [NSPredicate predicateWithFormat:@"name == %@", name];
    NSArray *matchingLocations = [self.locations filteredArrayUsingPredicate:namePredicate];
    if (matchingLocations.count) {
        return matchingLocations[0];
    }
    return nil;
}

- (NSArray *)locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin{
    NSPredicate *latLongPredicate = [NSPredicate predicateWithFormat:@"latitude BETWEEN { %lf, %lf } AND longitude BETWEEN { %lf, %lf }", latitude - margin, latitude + margin, longitude - margin, longitude + margin];
    return [self.locations filteredArrayUsingPredicate:latLongPredicate];
}


@end
