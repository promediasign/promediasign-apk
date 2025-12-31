.class public abstract Lsk/mimac/slideshow/utils/WebpageParserUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;
    }
.end annotation


# direct methods
.method public static synthetic a(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/utils/WebpageParserUtils;->lambda$waitForResult$1(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V

    return-void
.end method

.method public static synthetic b(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsk/mimac/slideshow/utils/WebpageParserUtils;->lambda$setupWebView$0(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;ZLjava/lang/String;)V

    return-void
.end method

.method public static getPageElements(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;-><init>(Lsk/mimac/slideshow/utils/WebpageParserUtils$1;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/WebpageParserUtils;->setupWebView(Ljava/lang/String;Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lsk/mimac/slideshow/utils/WebpageParserUtils;->waitForResult(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$100(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "{\"errorMessage\": \""

    .line 22
    .line 23
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$100(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "\"}"

    .line 31
    .line 32
    invoke-static {v0, v1, p0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    invoke-static {v0}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$200(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-static {v0}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$200(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_1
    const-string p0, "{\"errorMessage\": \"Loading webpage timed out\"}"

    .line 49
    .line 50
    return-object p0
.end method

.method private static synthetic lambda$setupWebView$0(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$302(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, p1}, Lsk/mimac/slideshow/utils/WebpageParserUtils;->setWebViewSettings(Landroid/webkit/WebSettings;Z)V

    new-instance v1, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;

    invoke-direct {v1, p0, p1}, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;-><init>(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getScreenResolution()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p0, p1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$waitForResult$1(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V
    .locals 1

    invoke-static {p0}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$300(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$300(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method private static setWebViewSettings(Landroid/webkit/WebSettings;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lsk/mimac/slideshow/BuildInfo;->USER_AGENT_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    return-void
.end method

.method private static setupWebView(Ljava/lang/String;Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WEB_VIEW_DISABLE_SECURITY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    new-instance v1, Lsk/mimac/slideshow/utils/c;

    invoke-direct {v1, p1, v0, p0}, Lsk/mimac/slideshow/utils/c;-><init>(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;ZLjava/lang/String;)V

    invoke-static {v1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static waitForResult(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "Processing was interrupted"

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$102(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lsk/mimac/slideshow/utils/b;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/utils/b;-><init>(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
