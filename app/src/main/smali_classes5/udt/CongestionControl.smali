.class public interface abstract Ludt/CongestionControl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAckInterval()J
.end method

.method public abstract getCongestionWindowSize()D
.end method

.method public abstract getEstimatedLinkCapacity()J
.end method

.method public abstract getPacketArrivalRate()J
.end method

.method public abstract getSendInterval()D
.end method

.method public abstract init()V
.end method

.method public abstract onACK(J)V
.end method

.method public abstract onLoss(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRTT(JJ)V
.end method

.method public abstract updatePacketArrivalRate(JJ)V
.end method
