#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#include <ctype.h>
#include <objc/runtime.h>

#import "Chartboost.h"

#include "cb.h"



namespace ruechartboost 
{
	
void cbInit(const char *appId, const char *appSignature)
{
		NSLog(@"AAA\n");
		NSString *appid = [[NSString alloc] initWithUTF8String:appId];
		NSString *signature = [[NSString alloc] initWithUTF8String:appSignature];
		NSLog(@"2");
	    [Chartboost sharedChartboost].appId = appid;//@"4ff50945f87659a74e000000";
	    [Chartboost sharedChartboost].appSignature = signature;//@"1e6521dafd3cba0429a7bd7f9928214fbbea288f";
		NSLog(@"3");
	    [[Chartboost sharedChartboost] startSession];
		NSLog(@"5");
	}
	
	void cbCacheInterstitial(){
		[[Chartboost sharedChartboost] cacheInterstitial];
	}
	
	void cbShowInterstitial(){
		NSLog(@"5");
		[[Chartboost sharedChartboost] showInterstitial];
		NSLog(@"6");
	}
	
	void cbCacheInterstitial(const char* location)
	{
		NSString *nslocation = [[NSString alloc] initWithUTF8String:location];
		[[Chartboost sharedChartboost] cacheInterstitial:nslocation];
	}
	void cbShowInterstitial(const char* location){
		NSString *nslocation = [[NSString alloc] initWithUTF8String:location];
		[[Chartboost sharedChartboost] showInterstitial:nslocation];
	}
	
	void cbShowMoreApps(){
		[[Chartboost sharedChartboost] showMoreApps];
	}
	
}