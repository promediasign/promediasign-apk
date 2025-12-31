.class public final synthetic Lv/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/common/Player$PositionInfo;

.field public final synthetic d:Landroidx/media3/common/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/o;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p4, p0, Lv/o;->b:I

    iput-object p2, p0, Lv/o;->c:Landroidx/media3/common/Player$PositionInfo;

    iput-object p3, p0, Lv/o;->d:Landroidx/media3/common/Player$PositionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv/o;->d:Landroidx/media3/common/Player$PositionInfo;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/o;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v2, p0, Lv/o;->b:I

    iget-object v3, p0, Lv/o;->c:Landroidx/media3/common/Player$PositionInfo;

    invoke-static {v1, v2, v3, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->g(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method
