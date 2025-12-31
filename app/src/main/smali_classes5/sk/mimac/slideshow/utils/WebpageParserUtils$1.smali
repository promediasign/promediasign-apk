.class Lsk/mimac/slideshow/utils/WebpageParserUtils$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/utils/WebpageParserUtils;->setupWebView(Ljava/lang/String;Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$disableWebSecurity:Z

.field final synthetic val$resultHolder:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Z)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$resultHolder:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    iput-boolean p2, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$disableWebSecurity:Z

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->lambda$onPageFinished$0(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onPageFinished$0(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$202(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Ljava/lang/String;)Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$resultHolder:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    new-instance v0, Lsk/mimac/slideshow/utils/d;

    invoke-direct {v0, p2}, Lsk/mimac/slideshow/utils/d;-><init>(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V

    const-string p2, "(function() { var elements = document.querySelectorAll(\'form input, form button\'); var result = {};result.buttons = [];result.inputs = [];for (var i = 0; i < elements.length; i++) {   var element = elements[i];   var type = element.getAttribute(\'type\');   var name = element.getAttribute(\'name\');   var placeholder = element.getAttribute(\'placeholder\');   var text = element.textContent;   var value = element.value;   var id = element.id;   if (type === \'button\' || type === \'submit\' || element.tagName.toLowerCase() === \'button\') {      text = (text && text !== \'\') ? text : value;      result.buttons.push({\'id\': id, \'name\': name, \'content\': text, \'className\': element.className});   } else if (type !== \'hidden\' && type !== \'checkbox\' && ((name && name !== \'\') || (placeholder && placeholder !== \'\'))) {      result.inputs.push({\'id\': id, \'name\': name, \'content\': text, \'placeholder\': placeholder});   }}return JSON.stringify(result); })();"

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$resultHolder:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    const-string p2, "error: "

    .line 1
    invoke-static {p2, p3}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p1, p2}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$102(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$resultHolder:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$resultHolder:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p1

    iget-object p2, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$resultHolder:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    const-string p3, "error: "

    const-string v0, " "

    .line 1
    invoke-static {p1, p3, v0}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 2
    sget-object v0, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lorg/apache/http/impl/EnglishReasonPhraseCatalog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->access$102(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$resultHolder:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$resultHolder:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    iget-boolean p1, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$disableWebSecurity:Z

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

    iget-boolean p1, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->val$disableWebSecurity:Z

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
