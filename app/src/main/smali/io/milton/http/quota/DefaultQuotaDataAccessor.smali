.class public Lio/milton/http/quota/DefaultQuotaDataAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/quota/QuotaDataAccessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuotaAvailable(Lio/milton/resource/Resource;)Ljava/lang/Long;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getQuotaUsed(Lio/milton/resource/Resource;)Ljava/lang/Long;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
