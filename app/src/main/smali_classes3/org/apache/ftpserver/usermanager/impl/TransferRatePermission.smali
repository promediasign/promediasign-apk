.class public Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Authority;


# instance fields
.field private maxDownloadRate:I

.field private maxUploadRate:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;->maxDownloadRate:I

    iput p2, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;->maxUploadRate:I

    return-void
.end method


# virtual methods
.method public authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;
    .locals 1

    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;->maxDownloadRate:I

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->setMaxDownloadRate(I)V

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;->maxUploadRate:I

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->setMaxUploadRate(I)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public canAuthorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Z
    .locals 0

    instance-of p1, p1, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    return p1
.end method
