.class public Lcom/dropbox/core/v2/DbxClientV2;
.super Lcom/dropbox/core/v2/DbxClientV2Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/oauth/DbxCredential;)V
    .locals 6

    .line 1
    sget-object v3, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/oauth/DbxCredential;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/oauth/DbxCredential;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V
    .locals 7

    .line 2
    new-instance v6, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/oauth/DbxCredential;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V

    invoke-direct {p0, v6}, Lcom/dropbox/core/v2/DbxClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 6

    .line 4
    new-instance v2, Lcom/dropbox/core/oauth/DbxCredential;

    invoke-direct {v2, p2}, Lcom/dropbox/core/oauth/DbxCredential;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/oauth/DbxCredential;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V

    return-void
.end method
