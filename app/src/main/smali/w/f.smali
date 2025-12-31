.class public final synthetic Lw/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/f;->a:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iput p2, p0, Lw/f;->b:I

    iput-wide p3, p0, Lw/f;->c:J

    iput-wide p5, p0, Lw/f;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-wide v2, p0, Lw/f;->c:J

    iget-wide v4, p0, Lw/f;->d:J

    iget-object v0, p0, Lw/f;->a:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget v1, p0, Lw/f;->b:I

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;IJJ)V

    return-void
.end method
