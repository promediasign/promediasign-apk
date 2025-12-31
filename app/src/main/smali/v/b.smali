.class public final synthetic Lv/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/b;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lv/b;->b:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lv/b;->b:F

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/b;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->A(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;FLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method
