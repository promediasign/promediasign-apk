.class public final synthetic Lv/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lsk/mimac/slideshow/utils/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lv/h;->a:I

    iput-object p1, p0, Lv/h;->b:Ljava/lang/Object;

    iput p2, p0, Lv/h;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv/h;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/gui/ItemThread;

    iget v1, p0, Lv/h;->c:I

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/ItemThread;->a(Lsk/mimac/slideshow/gui/ItemThread;I)Z

    move-result v0

    return v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lv/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lv/h;->c:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/h;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->m(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget v0, p0, Lv/h;->c:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/h;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->f0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_1
    iget v0, p0, Lv/h;->c:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/h;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->j0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_2
    iget v0, p0, Lv/h;->c:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/h;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->j(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
