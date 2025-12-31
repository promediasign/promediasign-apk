.class public abstract Lsk/mimac/slideshow/utils/UsageStatsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;
    }
.end annotation


# direct methods
.method private static convertAndAddEvents(Ljava/util/Set;Landroid/app/usage/UsageEvents;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;",
            ">;",
            "Landroid/app/usage/UsageEvents;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    new-instance v1, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v2

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    invoke-static {v3}, Lsk/mimac/slideshow/utils/UsageStatsUtils;->resolveEventType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getUsageEvents()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/UsageStatsUtils$UsageEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xa4cb800

    sub-long v3, v1, v3

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v6

    invoke-static {v5, v6}, Lsk/mimac/slideshow/utils/UsageStatsUtils;->convertAndAddEvents(Ljava/util/Set;Landroid/app/usage/UsageEvents;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_0

    invoke-static {v0, v3, v4, v1, v2}, Ll1/a;->b(Landroid/app/usage/UsageStatsManager;JJ)Landroid/app/usage/UsageEvents;

    move-result-object v0

    invoke-static {v5, v0}, Lsk/mimac/slideshow/utils/UsageStatsUtils;->convertAndAddEvents(Ljava/util/Set;Landroid/app/usage/UsageEvents;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static resolveEventType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x17

    if-eq p0, v0, :cond_2

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Foreground service stopped"

    return-object p0

    :cond_1
    const-string p0, "Foreground service started"

    return-object p0

    :cond_2
    const-string p0, "Activity stopped"

    return-object p0

    :cond_3
    const-string p0, "User interaction"

    return-object p0

    :cond_4
    const-string p0, "Configuration change"

    return-object p0

    :cond_5
    const-string p0, "Activity paused"

    return-object p0

    :cond_6
    const-string p0, "Activity resumed"

    return-object p0
.end method
