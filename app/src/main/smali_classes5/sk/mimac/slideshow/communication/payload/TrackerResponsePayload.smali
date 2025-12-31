.class public Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/payload/Payload;


# instance fields
.field private final introductionMids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final lanIntroductionAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

.field private final wanIntroductionAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/communication/address/IPAddress;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            ">;",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    iput-object p2, p0, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->introductionMids:Ljava/util/List;

    iput-object p3, p0, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->lanIntroductionAddresses:Ljava/util/List;

    iput-object p4, p0, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->wanIntroductionAddresses:Ljava/util/List;

    return-void
.end method

.method public static deserialize([BI)Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;
    .locals 8

    invoke-static {p0, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeIpAddress([BI)Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v0

    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    add-int/lit8 p1, p1, 0x8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    add-int/lit8 v6, p1, 0x14

    invoke-static {p0, p1, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v6}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeIpAddress([BI)Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, p1, 0x1b

    invoke-static {p0, v6}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeIpAddress([BI)Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x22

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;

    invoke-direct {p0, v0, v2, v3, v4}, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;-><init>(Lsk/mimac/slideshow/communication/address/IPAddress;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public getIntroductionMids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->introductionMids:Ljava/util/List;

    return-object v0
.end method

.method public getLanIntroductionAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->lanIntroductionAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getWanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-object v0
.end method

.method public getWanIntroductionAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->wanIntroductionAddresses:Ljava/util/List;

    return-object v0
.end method
