.class public Lsk/mimac/slideshow/gui/ClearingWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;,
        Lsk/mimac/slideshow/gui/ClearingWebView$MyWebChromeClient;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static cacheCleared:Z


# instance fields
.field private volatile allowedDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile javascriptCode:Ljava/lang/String;

.field private playId:I

.field private processKeys:Z

.field private final progressBar:Landroid/widget/ProgressBar;

.field private showProgressBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/ClearingWebView;->LOG:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lsk/mimac/slideshow/gui/ClearingWebView;->cacheCleared:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsk/mimac/slideshow/gui/PlaylistPanel;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->processKeys:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-boolean v1, Lsk/mimac/slideshow/gui/ClearingWebView;->cacheCleared:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->WEBVIEW_CLEAR_CACHE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    sget-object v3, Lsk/mimac/slideshow/gui/ClearingWebView;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "Initializing WebView: {}, clearCache={}"

    invoke-interface {v3, v6, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebStorage;->deleteAllData()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    :cond_0
    sput-boolean p1, Lsk/mimac/slideshow/gui/ClearingWebView;->cacheCleared:Z

    :cond_1
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->REQUEST_USER_AGENT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lsk/mimac/slideshow/BuildInfo;->USER_AGENT_SUFFIX:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_2
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->progressBar:Landroid/widget/ProgressBar;

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->WEB_VIEW_DISABLE_SECURITY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_4
    new-instance p1, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;

    invoke-direct {p1, p0, p2, v1}, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;-><init>(Lsk/mimac/slideshow/gui/ClearingWebView;Lsk/mimac/slideshow/gui/PlaylistPanel;Z)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebChromeClient;

    invoke-direct {p1, v2}, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebChromeClient;-><init>(Lsk/mimac/slideshow/gui/ClearingWebView$1;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->WEB_VIEW_ALLOW_LOCAL_API:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lsk/mimac/slideshow/JavaScriptApi;

    invoke-direct {p1}, Lsk/mimac/slideshow/JavaScriptApi;-><init>()V

    const-string p2, "SlideshowAPI"

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/ClearingWebView;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/gui/ClearingWebView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->allowedDomains:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/gui/ClearingWebView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$400(Lsk/mimac/slideshow/gui/ClearingWebView;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->playId:I

    return p0
.end method

.method public static synthetic access$500(Lsk/mimac/slideshow/gui/ClearingWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->showProgressBar:Z

    return p0
.end method

.method public static synthetic access$600(Lsk/mimac/slideshow/gui/ClearingWebView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->javascriptCode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$602(Lsk/mimac/slideshow/gui/ClearingWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->javascriptCode:Ljava/lang/String;

    return-object p1
.end method

.method public static getOptionsResponse()Landroid/webkit/WebResourceResponse;
    .locals 12

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "E, dd MMM yyyy kk:mm:ss"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "Connection"

    .line 11
    .line 12
    const-string v2, "close"

    .line 13
    .line 14
    const-string v3, "Content-Type"

    .line 15
    .line 16
    const-string v4, "text/plain"

    .line 17
    .line 18
    invoke-static {v1, v2, v3, v4}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/util/Date;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " GMT"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "Date"

    .line 49
    .line 50
    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string v0, "Access-Control-Allow-Origin"

    .line 54
    .line 55
    const-string v1, "*"

    .line 56
    .line 57
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string v0, "Access-Control-Allow-Methods"

    .line 61
    .line 62
    const-string v1, "GET, POST, DELETE, PUT, OPTIONS"

    .line 63
    .line 64
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-string v0, "Access-Control-Max-Age"

    .line 68
    .line 69
    const-string v1, "600"

    .line 70
    .line 71
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v0, "Access-Control-Allow-Credentials"

    .line 75
    .line 76
    const-string v1, "true"

    .line 77
    .line 78
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string v0, "Access-Control-Allow-Headers"

    .line 82
    .line 83
    const-string v1, "accept, authorization, Content-Type"

    .line 84
    .line 85
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroid/webkit/WebResourceResponse;

    .line 89
    .line 90
    const-string v9, "OK"

    .line 91
    .line 92
    const/4 v11, 0x0

    .line 93
    const-string v6, "text/plain"

    .line 94
    .line 95
    const-string v7, "UTF-8"

    .line 96
    .line 97
    const/16 v8, 0xc8

    .line 98
    .line 99
    move-object v5, v0

    .line 100
    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 101
    .line 102
    .line 103
    return-object v0
.end method

.method public static requestClearCache()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lsk/mimac/slideshow/gui/ClearingWebView;->cacheCleared:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->processKeys:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public init()V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    iput p5, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->playId:I

    iput-boolean p6, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->processKeys:Z

    const/4 p5, 0x0

    iput-object p5, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->javascriptCode:Ljava/lang/String;

    iput-object p5, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->allowedDomains:Ljava/util/List;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->showProgressBar:Z

    sget-object p5, Lsk/mimac/slideshow/settings/UserSettings;->WEB_VIEW_ZOOM:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p5}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object p5, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->progressBar:Landroid/widget/ProgressBar;

    const/16 p6, 0x8

    invoke-virtual {p5, p6}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    iput p2, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->playId:I

    iput-boolean p3, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->processKeys:Z

    iput-object p4, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->javascriptCode:Ljava/lang/String;

    iput-object p5, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->allowedDomains:Ljava/util/List;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_1

    :cond_0
    sget-object p2, Lsk/mimac/slideshow/settings/UserSettings;->WEB_VIEW_ZOOM:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p2}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :goto_1
    iput-boolean p7, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->showProgressBar:Z

    if-nez p7, :cond_1

    iget-object p2, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->progressBar:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->processKeys:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "about:blank"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
