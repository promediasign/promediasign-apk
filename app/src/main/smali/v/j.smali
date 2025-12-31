.class public final synthetic Lv/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lv/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/j;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lv/j;->d:I

    iput-wide p3, p0, Lv/j;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lv/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/j;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-wide p2, p0, Lv/j;->c:J

    iput p4, p0, Lv/j;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lv/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lv/j;->d:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/j;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v2, p0, Lv/j;->c:J

    invoke-static {v1, v0, v2, v3, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->K(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget-wide v0, p0, Lv/j;->c:J

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v2, p0, Lv/j;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v3, p0, Lv/j;->d:I

    invoke-static {v2, v3, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->u(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
