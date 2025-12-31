.class public final synthetic Lw/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic c:Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;I)V
    .locals 0

    .line 1
    iput p3, p0, Lw/d;->a:I

    iput-object p1, p0, Lw/d;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lw/d;->c:Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lw/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw/d;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lw/d;->c:Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->f(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lw/d;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lw/d;->c:Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->i(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
