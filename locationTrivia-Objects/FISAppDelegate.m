//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISLocation.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)allLocationNames{
    NSArray *locationNames = [self.locations valueForKey:@"name"];
    return locationNames;
}

-(FISLocation *)locationNamed:(NSString *)name{
    for (FISLocation *location in self.locations) {
        if ([location.name isEqualToString:name]) {
            return location;
        }
    }
    return nil;
}

-(NSArray *)locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat) margin{
    NSMutableArray *matchingLocations = [[NSMutableArray alloc]init];
    for (FISLocation *location in self.locations) {
        NSLog(@"hi");
        if (location.latitude >= (latitude-margin) && location.latitude <= (latitude+margin)) {
            if (location.longitude >= (longitude-margin) && location.longitude <= (longitude+margin)) {
                [matchingLocations addObject:location];
            }
        }
    }
    return matchingLocations;
}


@end
