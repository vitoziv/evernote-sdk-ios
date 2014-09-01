Evernote SDK 1.2.1 IOS改进版

Evernote SDK IOS的用户验证方法需要经过几个url请求，然后弹出验证界面。在网络环境差的地点将会导致用户点击验证后一段时间内无反应。

需求是：
- 用户开始验证（后台进行），弹出一个验证提示。
- 验证界面弹出，去除验证提示。

问题是：原版本Evernote SDK IOS没有方法让我们知道什么时候验证界面弹出了。

#功能
用户验证界面弹出前，可以执行回调方法。

#code
改版EvernoteSDK中添加的方法：

    /** Authenticate, calling the given handler upon completion.
     
     This should be called to kick off the authentication process with Evernote.
     
     @param viewController The view controller that should be used to present the authentication view
     @param authViewShownCompletion This block will be called once authentication view pop up
     @param completionHandler This block will be called once the authentication process is completed with sucess or failure.
     */
    - (void)authenticateWithViewController:(UIViewController *)viewController
                   authViewShownCompletion:(EvernoteAuthViewShownnCompletion)authViewShownCompletion
                         completionHandler:(EvernoteAuthCompletionHandler)completionHandler;

重点在``authViewShownCompletion``参数，它是一个代码块，在验证界面弹出前将会执行它。

-------------

这里是Evernote SDK官方说明 [evernote-sdk-ios](https://github.com/evernote/evernote-sdk-ios)
