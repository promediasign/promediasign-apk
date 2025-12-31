.class public final synthetic Lv/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lv/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/d;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lv/d;->c:I

    iput-boolean p3, p0, Lv/d;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZII)V
    .locals 0

    .line 2
    iput p4, p0, Lv/d;->a:I

    iput-object p1, p0, Lv/d;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lv/d;->d:Z

    iput p3, p0, Lv/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lv/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lv/d;->c:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/d;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-boolean v2, p0, Lv/d;->d:Z

    invoke-static {v1, v0, v2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->I(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lv/d;->d:Z

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/d;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v2, p0, Lv/d;->c:I

    invoke-static {v1, v2, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->t(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_1
    iget v0, p0, Lv/d;->c:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/d;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-boolean v2, p0, Lv/d;->d:Z

    invoke-static {v1, v0, v2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->B(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
