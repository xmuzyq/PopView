PopView
=======

Demo Screenshot:
<p align="center"><img src="http://openassets.oss.aliyuncs.com/popView.gif"/></p>


##Usage


Your viewController:
```objc
- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(presentView)];
    [self.view addGestureRecognizer:tapGestureRecognizer];
    tapGestureRecognizer.delegate=self;

    _popViewController = [[PopViewController alloc] initWithPopViewClass:NSStringFromClass(PopDemoView.class)];
    [_popViewController setup:self delegate:self];
}

- (void)presentView {
    [_popViewController presentInView:self.view animation:YES];
}
```
