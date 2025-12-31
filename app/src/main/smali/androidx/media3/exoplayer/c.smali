.class public final synthetic Landroidx/media3/exoplayer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/c;->a:I

    iput-object p1, p0, Landroidx/media3/exoplayer/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->f(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->g(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->c(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/exoplayer/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->b(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
