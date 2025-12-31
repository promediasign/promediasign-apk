.class public final synthetic Landroidx/media3/exoplayer/rtsp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/media3/exoplayer/rtsp/a;->a:I

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/a;->c:Ljava/io/Serializable;

    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/a;->c:Ljava/io/Serializable;

    check-cast v0, [B

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/a;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/a;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;->a(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;[BLjava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/a;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/a;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/a;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->a(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
