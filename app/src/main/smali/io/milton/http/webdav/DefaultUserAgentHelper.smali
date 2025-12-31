.class public Lio/milton/http/webdav/DefaultUserAgentHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/UserAgentHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMacFinder(Lio/milton/http/Request;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/milton/http/Request;->getUserAgentHeader()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "WebDAVFS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Darwin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNautilus(Lio/milton/http/Request;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/milton/http/Request;->getUserAgentHeader()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "gvfs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
