.class public final synthetic Landroidx/media3/exoplayer/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/i;->a:I

    iput p2, p0, Landroidx/media3/exoplayer/i;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/i;->b:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget v1, p0, Landroidx/media3/exoplayer/i;->a:I

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j(IILandroidx/media3/common/Player$Listener;)V

    return-void
.end method
