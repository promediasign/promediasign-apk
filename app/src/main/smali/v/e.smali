.class public final synthetic Lv/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/e;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-wide p2, p0, Lv/e;->b:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lv/e;->b:J

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v2, p0, Lv/e;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v2, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->a0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method
