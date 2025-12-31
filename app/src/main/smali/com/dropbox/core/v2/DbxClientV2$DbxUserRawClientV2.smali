.class final Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;
.super Lcom/dropbox/core/v2/DbxRawClientV2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/DbxClientV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DbxUserRawClientV2"
.end annotation


# instance fields
.field private final credential:Lcom/dropbox/core/oauth/DbxCredential;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/oauth/DbxCredential;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/dropbox/core/v2/DbxRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->credential:Lcom/dropbox/core/oauth/DbxCredential;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "credential"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAuthHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->removeAuthHeader(Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->credential:Lcom/dropbox/core/oauth/DbxCredential;

    invoke-virtual {v0}, Lcom/dropbox/core/oauth/DbxCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method public canRefreshAccessToken()Z
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->credential:Lcom/dropbox/core/oauth/DbxCredential;

    invoke-virtual {v0}, Lcom/dropbox/core/oauth/DbxCredential;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needsRefreshAccessToken()Z
    .locals 1

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->canRefreshAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->credential:Lcom/dropbox/core/oauth/DbxCredential;

    invoke-virtual {v0}, Lcom/dropbox/core/oauth/DbxCredential;->aboutToExpire()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refreshAccessToken()Lcom/dropbox/core/oauth/DbxRefreshResult;
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->credential:Lcom/dropbox/core/oauth/DbxCredential;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/oauth/DbxCredential;->refresh(Lcom/dropbox/core/DbxRequestConfig;)Lcom/dropbox/core/oauth/DbxRefreshResult;

    new-instance v0, Lcom/dropbox/core/oauth/DbxRefreshResult;

    iget-object v1, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->credential:Lcom/dropbox/core/oauth/DbxCredential;

    invoke-virtual {v1}, Lcom/dropbox/core/oauth/DbxCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->credential:Lcom/dropbox/core/oauth/DbxCredential;

    invoke-virtual {v2}, Lcom/dropbox/core/oauth/DbxCredential;->getExpiresAt()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/oauth/DbxRefreshResult;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method
