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
		NSString *appid = [[NSString alloc] initWithUTF8String:appId];
		NSString *signature = [[NSString alloc] initWithUTF8String:appSignature];
	    [Chartboost sharedChartboost].appId = appid;
	    [Chartboost sharedChartboost].appSignature = signature;
	    [[Chartboost sharedChartboost] startSession];
	}
	
	void cbCacheInterstitial(){
		[[Chartboost sharedChartboost] cacheInterstitial];
	}
	
	void cbShowInterstitial(){
		[[Chartboost sharedChartboost] showInterstitial];
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