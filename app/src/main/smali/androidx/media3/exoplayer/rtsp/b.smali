.class public final synthetic Landroidx/media3/exoplayer/rtsp/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    check-cast p2, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->a(Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)I

    move-result p1

    return p1
.end method
