.class Lsk/mimac/slideshow/communication/Ipv8CommunicationServer$UPnPCheckStrategy;
.super Lsk/mimac/slideshow/communication/strategy/Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UPnPCheckStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsk/mimac/slideshow/communication/strategy/Strategy<",
        "Lsk/mimac/slideshow/communication/DiscoveryCommunity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/strategy/Strategy;-><init>(Lsk/mimac/slideshow/communication/Community;)V

    return-void
.end method


# virtual methods
.method public takeStep()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/strategy/Strategy;->community:Lsk/mimac/slideshow/communication/Community;

    check-cast v0, Lsk/mimac/slideshow/communication/SlideshowCommunity;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->checkUPnP()V

    return-void
.end method
