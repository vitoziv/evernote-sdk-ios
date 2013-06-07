Evernote SDK 改进版
=========================================
Evernote SDK的用户验证方法需要经过几个url请求，然后弹出验证界面。在网络环境差的地点将会导致用户点击验证后一段时间内无反应。

现在的需求是：
- 用户开始验证（后台进行），弹出一个验证提示。
- 验证界面弹出，去除验证提示。

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



For more Evernote SDK information check [here](https://github.com/evernote/evernote-sdk-ios)
