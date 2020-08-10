#import "DisableHttpCachePlugin.h"
#import <WebKit/WebKit.h>

@implementation DisableHttpCachePlugin

- (void)pluginInitialize {
  NSLog(@"DisableHttpCachePlugin: initialize");
  NSURLCache *URLCache = [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:nil];
  [NSURLCache setSharedURLCache:URLCache];
}

#if WK_WEB_VIEW_ONLY
- (DisableHttpCachePlugin*)initWithWebView:(WKWebView*)theWebView {
  return self;
}
#else
- (DisableHttpCachePlugin*)initWithWebView:(UIWebView*)theWebView {
  return self;
}
#endif

@end
