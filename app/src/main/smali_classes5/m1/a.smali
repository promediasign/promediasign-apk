.class public final synthetic Lm1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, Lm1/a;->a:I

    iput-object p1, p0, Lm1/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Lm1/a;->b:Ljava/lang/Object;

    iput p3, p0, Lm1/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lm1/a;->c:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lm1/a;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v2, p0, Lm1/a;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/MediaItem;

    invoke-static {v1, v2, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->x(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

.method public onEvent(II)V
    .locals 3

    .line 1
    iget v0, p0, Lm1/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lm1/a;->c:I

    iget-object v2, p0, Lm1/a;->d:Ljava/lang/Object;

    check-cast v2, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-static {v2, v0, v1, p1, p2}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;->a(Lsk/mimac/slideshow/gui/input/TextureVideoInputView;Ljava/lang/String;III)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lm1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lm1/a;->c:I

    iget-object v2, p0, Lm1/a;->d:Ljava/lang/Object;

    check-cast v2, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;

    invoke-static {v2, v0, v1, p1, p2}, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;->a(Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;Ljava/lang/String;III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
