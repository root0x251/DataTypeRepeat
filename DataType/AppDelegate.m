//
//  AppDelegate.m
//  DataType
//
//  Created by Slava on 19.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    NSMutableArray *arrayBang = [NSMutableArray new];
//    NSInteger numberOfShot = 1;
//    NSInteger hitCount = 0;
//    for (int i = 0; i <= numberOfShot; i++) {
//        CGPoint shot = CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
//        CGRect ship = CGRectMake(arc4random_uniform(10) % 1, arc4random_uniform(10) % 1, 10, 10);
//        CGRect ship = CGRectMake(arc4random() % 10, arc4random() % 10, 10, 10);
//        CGRect ship = CGRectMake(3, 3, 10, 10);
//        [arrayBang addObject:[NSValue valueWithCGPoint:shot]];
//        [arrayBang addObject:[NSValue valueWithCGRect:ship]];
//    }
//    for (NSValue *value in arrayBang) {
//        CGPoint shot = [value CGPointValue];
//        CGRect ship = [value CGRectValue];
//        BOOL shootResult = CGRectContainsPoint(ship, shot);
//        if (shootResult) {
//            hitCount++;
//            NSLog(@"hit - %@", NSStringFromCGPoint(shot));
//        }
//        if (shootResult > 0) {
//            NSLog(@"Congratulation! The number of hits - %ld", hitCount);
//        }
//    }
//    NSLog(@"%@", arrayBang);
//    выдает ошибку thread 1: EXC_BAD_ACCESS (code = EXC_I386_GPFLT)
    
    
    
    
    NSMutableArray *arrayCount = [NSMutableArray new];
    NSInteger countPointRand = 100;
    NSInteger hitCount = 0;
    CGRect ship = CGRectMake(3, 3, 3, 3);
    
    for (int i = 0; i <= countPointRand; i++) {
        CGPoint shot = CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
        [arrayCount addObject:[NSValue valueWithCGPoint:shot]];
    }
        for (NSValue *value in arrayCount) {
        CGPoint shot = [value CGPointValue];
        BOOL shotResult = CGRectContainsPoint(ship, shot);
        if (shotResult) {
            hitCount++;
            NSLog(@"hit = %@", NSStringFromCGPoint(shot));
        }
        if (shotResult > 0) {
            NSLog(@"Congratulation! You hit %d times!", hitCount);
        }
    }
    
    
//    Надо попрактиковаться со структурами. Например такое небольшое задание:
//    на поле 10х10 рандомно создайте точек (разберитесь как рандомно генерировать цифры, подсказка - функция arc4random()) и проверяйте какая из точек попадает в квадрат размером 3х3 в самом центре поля. Грубо говоря надо определить какие из точек в массиве попадают в центр и вывести их на печать. Пробуйте и задавайте вопросы.
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
