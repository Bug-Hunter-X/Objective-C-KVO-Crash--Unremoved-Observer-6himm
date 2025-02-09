To solve this issue, always remove the observer in the `dealloc` method of your observer class or anywhere else appropriate before the observed object is deallocated.  Here's how you would modify the code:

```objectivec
@interface MyObserver : NSObject
@property (nonatomic, weak) MyObservedObject *observedObject;
@end

@implementation MyObserver
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    // Handle KVO notification
}

- (void)dealloc {
    [self.observedObject removeObserver:self forKeyPath:@