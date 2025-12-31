.class public Lsk/mimac/slideshow/communication/strategy/IntroductionStrategy;
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


# instance fields
.field private counter:Z

.field private initial:Z


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/strategy/Strategy;-><init>(Lsk/mimac/slideshow/communication/Community;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/communication/strategy/IntroductionStrategy;->counter:Z

    iput-boolean p1, p0, Lsk/mimac/slideshow/communication/strategy/IntroductionStrategy;->initial:Z

    return-void
.end method


# virtual methods
.method public takeStep()V
    .locals 3

    iget-boolean v0, p0, Lsk/mimac/slideshow/communication/strategy/IntroductionStrategy;->counter:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/communication/strategy/IntroductionStrategy;->counter:Z

    iget-boolean v1, p0, Lsk/mimac/slideshow/communication/strategy/IntroductionStrategy;->initial:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lsk/mimac/slideshow/communication/strategy/IntroductionStrategy;->initial:Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/communication/strategy/IntroductionStrategy;->counter:Z

    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/communication/strategy/Strategy;->community:Lsk/mimac/slideshow/communication/Community;

    check-cast v0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->RANDOM:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/communication/Peer;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/strategy/Strategy;->community:Lsk/mimac/slideshow/communication/Community;

    check-cast v1, Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->sendIntroductionRequestPacket(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/communication/strategy/Strategy;->community:Lsk/mimac/slideshow/communication/Community;

    check-cast v0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->sendTrackerRequestPayload()V

    return-void
.end method
