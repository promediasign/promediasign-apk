.class public Lio/milton/http/UrlAdapterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/UrlAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/milton/http/HttpManager;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/DavWWWRoot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
