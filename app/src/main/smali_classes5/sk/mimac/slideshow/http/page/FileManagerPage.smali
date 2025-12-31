.class public Lsk/mimac/slideshow/http/page/FileManagerPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "file_manager"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 0

    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    const-string v0, "<script data-main=\'/web/elfinder/main.js?t="

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->BUILD_DATE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "\' src=\'/web/require.min.js?t=1\'></script>"

    .line 9
    .line 10
    const-string v2, "<div id=\'elfinder\'>Loading...</div>"

    .line 11
    .line 12
    invoke-static {p1, v0, v1, v2}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
