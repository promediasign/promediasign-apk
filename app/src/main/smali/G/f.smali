.class public final synthetic LG/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;JJI)V
    .locals 0

    .line 1
    iput p7, p0, LG/f;->a:I

    iput-object p1, p0, LG/f;->e:Ljava/lang/Object;

    iput-object p2, p0, LG/f;->b:Ljava/lang/String;

    iput-wide p3, p0, LG/f;->c:J

    iput-wide p5, p0, LG/f;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, LG/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v3, p0, LG/f;->c:J

    iget-wide v5, p0, LG/f;->d:J

    iget-object v0, p0, LG/f;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, LG/f;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->k(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    return-void

    :pswitch_0
    iget-wide v9, p0, LG/f;->c:J

    iget-wide v11, p0, LG/f;->d:J

    iget-object v0, p0, LG/f;->e:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v8, p0, LG/f;->b:Ljava/lang/String;

    invoke-static/range {v7 .. v12}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
