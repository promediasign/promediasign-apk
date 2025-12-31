.class public final synthetic Landroidx/media3/exoplayer/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/q;->a:I

    iput-object p1, p0, Landroidx/media3/exoplayer/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/q;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/RenderersFactory;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/q;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->e(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/q;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/LoadControl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->d(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/exoplayer/q;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Ljava/lang/Boolean;

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
