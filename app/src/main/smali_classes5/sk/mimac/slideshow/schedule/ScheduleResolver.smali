.class public abstract Lsk/mimac/slideshow/schedule/ScheduleResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final WHOLE_DAY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/collect/Range<",
            "Lj$/time/LocalTime;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v0

    const/16 v1, 0x17

    const/16 v2, 0x3b

    invoke-static {v1, v2}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/schedule/ScheduleResolver;->WHOLE_DAY:Ljava/util/List;

    return-void
.end method

.method private static create(Lsk/mimac/slideshow/database/entity/AbstractSchedule;Lj$/time/LocalDate;Lcom/google/common/collect/Range;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lsk/mimac/slideshow/database/entity/AbstractSchedule;",
            ">(TS;",
            "Lj$/time/LocalDate;",
            "Lcom/google/common/collect/Range<",
            "Lj$/time/LocalTime;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getId()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lj$/time/LocalTime;

    invoke-virtual {v1, p1}, Lj$/time/LocalTime;->atDate(Lj$/time/LocalDate;)Lj$/time/LocalDateTime;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Lj$/time/LocalTime;

    invoke-virtual {p2, p1}, Lj$/time/LocalTime;->atDate(Lj$/time/LocalDate;)Lj$/time/LocalDateTime;

    move-result-object p1

    const-string p2, "to"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of p1, p0, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    const-string p2, "entityName"

    const-string v1, "entityId"

    if-eqz p1, :cond_1

    check-cast p0, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;->getPlaylistId()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    check-cast p0, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->getScreenLayoutId()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v2

    long-to-int v3, p0

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->get(I)Lsk/mimac/slideshow/database/entity/ScreenLayout;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static resolveSchedule(Ljava/util/List;Lj$/time/LocalDate;Lj$/time/LocalDate;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lsk/mimac/slideshow/database/entity/AbstractSchedule;",
            ">(",
            "Ljava/util/List<",
            "TS;>;",
            "Lj$/time/LocalDate;",
            "Lj$/time/LocalDate;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {p1, p2}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lsk/mimac/slideshow/schedule/ScheduleResolver;->WHOLE_DAY:Ljava/util/List;

    invoke-static {v2}, Lcom/google/common/collect/TreeRangeSet;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeRangeSet;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/database/entity/AbstractSchedule;

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateFrom()Lj$/time/LocalDate;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateFrom()Lj$/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5, p1}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateTo()Lj$/time/LocalDate;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateTo()Lj$/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5, p1}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    invoke-virtual {p1}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v5

    invoke-static {v5, v4}, Lsk/mimac/slideshow/schedule/ScheduleResolver;->weekDayMatches(Lj$/time/DayOfWeek;Lsk/mimac/slideshow/database/entity/AbstractSchedule;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeFrom()Lj$/time/LocalTime;

    move-result-object v5

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeTo()Lj$/time/LocalTime;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/common/collect/RangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/collect/Range;

    invoke-static {v4, p1, v7, v1}, Lsk/mimac/slideshow/schedule/ScheduleResolver;->create(Lsk/mimac/slideshow/database/entity/AbstractSchedule;Lj$/time/LocalDate;Lcom/google/common/collect/Range;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    invoke-interface {v2, v5}, Lcom/google/common/collect/RangeSet;->remove(Lcom/google/common/collect/Range;)V

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static weekDayMatches(Lj$/time/DayOfWeek;Lsk/mimac/slideshow/database/entity/AbstractSchedule;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lsk/mimac/slideshow/database/entity/AbstractSchedule;",
            ">(",
            "Lj$/time/DayOfWeek;",
            "TS;)Z"
        }
    .end annotation

    sget-object v0, Lj$/time/DayOfWeek;->MONDAY:Lj$/time/DayOfWeek;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isMonday()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    sget-object v0, Lj$/time/DayOfWeek;->TUESDAY:Lj$/time/DayOfWeek;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isTuesday()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    sget-object v0, Lj$/time/DayOfWeek;->WEDNESDAY:Lj$/time/DayOfWeek;

    if-ne p0, v0, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isWednesday()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    sget-object v0, Lj$/time/DayOfWeek;->THURSDAY:Lj$/time/DayOfWeek;

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isThursday()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    sget-object v0, Lj$/time/DayOfWeek;->FRIDAY:Lj$/time/DayOfWeek;

    if-ne p0, v0, :cond_4

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isFriday()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    sget-object v0, Lj$/time/DayOfWeek;->SATURDAY:Lj$/time/DayOfWeek;

    if-ne p0, v0, :cond_5

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isSaturday()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Lj$/time/DayOfWeek;->SUNDAY:Lj$/time/DayOfWeek;

    if-ne p0, v0, :cond_7

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isSunday()Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const/4 p0, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
