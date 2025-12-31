.class public final synthetic Lv/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/u;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lv/u;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lv/u;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lv/u;->c:J

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v2, p0, Lv/u;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v3, p0, Lv/u;->b:Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->s(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method
