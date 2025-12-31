.class public Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/AuthorizationRequest;


# instance fields
.field private maxDownloadRate:I

.field private maxUploadRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->maxDownloadRate:I

    iput v0, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->maxUploadRate:I

    return-void
.end method


# virtual methods
.method public getMaxDownloadRate()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->maxDownloadRate:I

    return v0
.end method

.method public getMaxUploadRate()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->maxUploadRate:I

    return v0
.end method

.method public setMaxDownloadRate(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->maxDownloadRate:I

    return-void
.end method

.method public setMaxUploadRate(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->maxUploadRate:I

    return-void
.end method
