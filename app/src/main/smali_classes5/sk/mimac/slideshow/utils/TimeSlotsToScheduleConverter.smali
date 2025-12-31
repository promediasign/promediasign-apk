.class public abstract Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter$ArrayWrapper;
    }
.end annotation


# direct methods
.method public static synthetic a(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->lambda$convertPlaylists$1(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->lambda$convertScreenLayouts$0(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convertPlaylists(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/PlaylistSchedule;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_6

    mul-int/lit8 v3, v2, 0x18

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v2, v1, v4, p1}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->createPlaylistSchedule(IILjava/lang/Long;Ljava/lang/Integer;)Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x3b

    const/16 v7, 0x18

    if-ge v5, v7, :cond_4

    add-int v7, v3, v5

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;->getPlaylistId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    invoke-static {v7, v8}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v4, :cond_2

    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v6}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v2, v5, v7, p1}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->createPlaylistSchedule(IILjava/lang/Long;Ljava/lang/Integer;)Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    move-result-object v4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    const/16 v3, 0x17

    invoke-static {v3, v6}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v3

    invoke-virtual {v4, v3}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    new-instance p0, LT0/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, LT0/b;-><init>(I)V

    invoke-static {v0, p0}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->createGrouping(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->mergeDays(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static convertScreenLayouts(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_3

    mul-int/lit8 v3, v2, 0x18

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v1, v4}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->createScreenLayoutSchedule(III)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x3b

    const/16 v7, 0x18

    if-ge v5, v7, :cond_2

    add-int v7, v3, v5

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->getScreenLayoutId()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v6}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v5, v4}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->createScreenLayoutSchedule(III)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    move-result-object v4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x17

    invoke-static {v3, v6}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v3

    invoke-virtual {v4, v3}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, LT0/b;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, LT0/b;-><init>(I)V

    invoke-static {v0, p0}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->createGrouping(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->mergeDays(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static createGrouping(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lsk/mimac/slideshow/database/entity/AbstractSchedule;",
            ">(",
            "Ljava/util/List<",
            "TS;>;",
            "Ljava/util/function/Function<",
            "TS;[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "*",
            "Ljava/util/List<",
            "TS;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/database/entity/AbstractSchedule;

    new-instance v2, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter$ArrayWrapper;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-direct {v2, v3}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter$ArrayWrapper;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static createPlaylistSchedule(IILjava/lang/Long;Ljava/lang/Integer;)Lsk/mimac/slideshow/database/entity/PlaylistSchedule;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-direct {v1}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>()V

    invoke-static {v1, p0, p1}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->createSchedule(Lsk/mimac/slideshow/database/entity/AbstractSchedule;II)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;->setPlaylistId(J)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;->setPanelItemId(Ljava/lang/Long;)V

    return-object v1
.end method

.method private static createSchedule(Lsk/mimac/slideshow/database/entity/AbstractSchedule;II)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeFrom(Lj$/time/LocalTime;)V

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setMonday(Z)V

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTuesday(Z)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setWednesday(Z)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setThursday(Z)V

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setFriday(Z)V

    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSaturday(Z)V

    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSunday(Z)V

    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setPriority(I)V

    return-void
.end method

.method private static createScreenLayoutSchedule(III)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>()V

    invoke-static {v0, p0, p1}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->createSchedule(Lsk/mimac/slideshow/database/entity/AbstractSchedule;II)V

    int-to-long p0, p2

    invoke-virtual {v0, p0, p1}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->setScreenLayoutId(J)V

    return-object v0
.end method

.method private static synthetic lambda$convertPlaylists$1(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeFrom()Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalTime;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeTo()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;->getPlaylistId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method private static synthetic lambda$convertScreenLayouts$0(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeFrom()Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalTime;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeTo()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->getScreenLayoutId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method private static mergeDays(Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lsk/mimac/slideshow/database/entity/AbstractSchedule;",
            ">(",
            "Ljava/util/Map<",
            "*",
            "Ljava/util/List<",
            "TS;>;>;)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/AbstractSchedule;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/database/entity/AbstractSchedule;

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isMonday()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setMonday(Z)V

    :cond_0
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isTuesday()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTuesday(Z)V

    :cond_1
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isWednesday()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setWednesday(Z)V

    :cond_2
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isThursday()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setThursday(Z)V

    :cond_3
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isFriday()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setFriday(Z)V

    :cond_4
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isSaturday()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSaturday(Z)V

    :cond_5
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isSunday()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSunday(Z)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    return-object v0
.end method
