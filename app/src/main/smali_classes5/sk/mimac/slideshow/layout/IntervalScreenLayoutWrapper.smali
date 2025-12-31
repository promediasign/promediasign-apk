.class public Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;


# instance fields
.field private screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

.field private final started:J


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;->started:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t wrap null screen layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()S
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getRotation()S

    move-result v0

    return v0
.end method

.method public isPowerOff()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->isPowerOff()Z

    move-result v0

    return v0
.end method

.method public setScreenLayout(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    return-void
.end method

.method public shouldStillPlay()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;->started:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    iget-object v2, p0, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getInterval()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x422bf08eb0000000L    # 6.0E10

    mul-double v2, v2, v4

    const-wide v4, 0x41ddcd6500000000L    # 2.0E9

    sub-double/2addr v2, v4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
