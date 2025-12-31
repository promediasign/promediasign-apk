.class public Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;
.super Lsk/mimac/slideshow/communication/strategy/Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsk/mimac/slideshow/communication/strategy/Strategy<",
        "Lsk/mimac/slideshow/communication/DiscoveryCommunity;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/strategy/Strategy;-><init>(Lsk/mimac/slideshow/communication/Community;)V

    return-void
.end method


# virtual methods
.method public registerDevice(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    new-instance v0, Lsk/mimac/slideshow/communication/address/IPv4Address;

    invoke-direct {v0, p1, p2}, Lsk/mimac/slideshow/communication/address/IPv4Address;-><init>(Ljava/lang/String;I)V

    iget-object p2, p0, Lsk/mimac/slideshow/communication/strategy/Strategy;->community:Lsk/mimac/slideshow/communication/Community;

    check-cast p2, Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->sendIntroductionRequestPacket(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t register device {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public takeStep()V
    .locals 0

    return-void
.end method
