.class Lcom/dropbox/core/oauth/DbxCredential$1;
.super Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/oauth/DbxCredential;->refresh(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/util/Collection;)Lcom/dropbox/core/oauth/DbxRefreshResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler<",
        "Lcom/dropbox/core/oauth/DbxRefreshResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/oauth/DbxCredential;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/oauth/DbxCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/oauth/DbxCredential$1;->this$0:Lcom/dropbox/core/oauth/DbxCredential;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/oauth/DbxRefreshResult;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/dropbox/core/oauth/DbxRefreshResult;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/oauth/DbxRefreshResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dropbox/core/oauth/DbxOAuthError;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v1, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/oauth/DbxOAuthError;

    new-instance v1, Lcom/dropbox/core/oauth/DbxOAuthException;

    invoke-direct {v1, v0, p1}, Lcom/dropbox/core/oauth/DbxOAuthException;-><init>(Ljava/lang/String;Lcom/dropbox/core/oauth/DbxOAuthError;)V

    throw v1
.end method

.method public bridge synthetic handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/dropbox/core/oauth/DbxCredential$1;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/oauth/DbxRefreshResult;

    move-result-object p1

    return-object p1
.end method
