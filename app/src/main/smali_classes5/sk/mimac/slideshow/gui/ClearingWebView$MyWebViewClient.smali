.class Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/ClearingWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebViewClient"
.end annotation


# instance fields
.field private final disableWebSecurity:Z

.field private final playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

.field final synthetic this$0:Lsk/mimac/slideshow/gui/ClearingWebView;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/ClearingWebView;Lsk/mimac/slideshow/gui/PlaylistPanel;Z)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    iput-boolean p3, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->disableWebSecurity:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$600(Lsk/mimac/slideshow/gui/ClearingWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Executing JavaScript code on \'{}\'"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "javascript: { "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$600(Lsk/mimac/slideshow/gui/ClearingWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$602(Lsk/mimac/slideshow/gui/ClearingWebView;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$300(Lsk/mimac/slideshow/gui/ClearingWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$500(Lsk/mimac/slideshow/gui/ClearingWebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$300(Lsk/mimac/slideshow/gui/ClearingWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$100()Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Can\'t load webpage \'{}\', error: {}"

    invoke-interface {p1, p2, p4, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$300(Lsk/mimac/slideshow/gui/ClearingWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p1

    iget-object p2, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {p2}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$400(Lsk/mimac/slideshow/gui/ClearingWebView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p1

    invoke-static {}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$100()Lorg/slf4j/Logger;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lorg/apache/http/impl/EnglishReasonPhraseCatalog;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "Can\'t load webpage \'{}\', error: {} {}"

    invoke-interface {p3, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$300(Lsk/mimac/slideshow/gui/ClearingWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p1

    iget-object p2, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {p2}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$400(Lsk/mimac/slideshow/gui/ClearingWebView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    iget-boolean p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->disableWebSecurity:Z

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :goto_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    iget-boolean p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->disableWebSecurity:Z

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPTIONS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/gui/ClearingWebView;->getOptionsResponse()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/UserActivityHolder;->markLastActivity()V

    invoke-static {}, Lsk/mimac/slideshow/screensaver/ScreenSaverService;->onActivity()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "file://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "about:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$200(Lsk/mimac/slideshow/gui/ClearingWebView;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$200(Lsk/mimac/slideshow/gui/ClearingWebView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    return v0

    :cond_4
    invoke-static {}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$100()Lorg/slf4j/Logger;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$200(Lsk/mimac/slideshow/gui/ClearingWebView;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Blocking redirect to {}, because it isn\'t on the allowed domains list: {}"

    invoke-interface {p1, v1, p2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 2
    iget-object p1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$200(Lsk/mimac/slideshow/gui/ClearingWebView;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$200(Lsk/mimac/slideshow/gui/ClearingWebView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    return v0

    :cond_4
    invoke-static {}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$100()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v1, "Blocking redirect to {}, because it isn\'t on the allowed domains list: {}"

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ClearingWebView$MyWebViewClient;->this$0:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-static {v2}, Lsk/mimac/slideshow/gui/ClearingWebView;->access$200(Lsk/mimac/slideshow/gui/ClearingWebView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v1, p2, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method
