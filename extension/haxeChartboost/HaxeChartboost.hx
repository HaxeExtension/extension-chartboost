package extension.haxeChartboost;


import flash.events.EventDispatcher;
import flash.events.Event;
import flash.net.SharedObjectFlushStatus;
import flash.net.SharedObject;
import flash.Lib;

#if android
	#if (openfl < "4.0.0")
	import openfl.utils.JNI;
	#else
	import lime.system.JNI;
	#end
#end


@:allow(extension.haxeChartboost) class HaxeChartboost 
{
	#if android
	static var ShowAdFunc;
	#end
	
	public static function OpenIntersetial():Void
	{
		#if android
		trace("ATTEMPTING TO CREATE FUNCTION FOR CHARTBOOST");
		if (ShowAdFunc == null)
		{
			ShowAdFunc = JNI.createStaticMethod("org/haxe/extension/cb/ChartboostConnect", "ShowAd", "()V");
		}
		
		#if openfl_legacy
		Lib.postUICallback(function(){
		ShowAdFunc(); } );
		#else
		JNI.postUICallback(function(){
		ShowAdFunc(); } );
		#end
		#end
		
		#if ios
		trace("ATTEMPTING TO OPEN AD FOR CHARTBOOST");
		cb_show_interstitial();
		#end
	}
	
	
	public static function init(appID:String, appSignature:String)
	{
		#if ios
		//"::ENV_ChartboostID::"
		cb_init(appID, appSignature);
		#end
		
		#if android
		
		#end
	}

	
	#if ios
	static var cb_init               = Lib.load("ruechartboost","cb_init",2);
	static var cb_show_interstitial  = Lib.load("ruechartboost","cb_show_interstitial", 0);
	#end
	
	
}
