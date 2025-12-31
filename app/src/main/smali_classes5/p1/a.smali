.class public final synthetic Lp1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/ExoPlayer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp1/a;->a:I

    iput-object p1, p0, Lp1/a;->b:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lp1/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp1/a;->b:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->play()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lp1/a;->b:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->pause()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
