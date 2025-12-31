.class public final synthetic Landroidx/media3/exoplayer/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/j;->a:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1}, Landroidx/media3/common/Player$Listener;->onRenderedFirstFrame()V

    return-void

    :pswitch_0
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->t(Landroidx/media3/common/Player$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
