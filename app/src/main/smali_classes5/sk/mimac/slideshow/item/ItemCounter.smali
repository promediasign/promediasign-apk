.class public Lsk/mimac/slideshow/item/ItemCounter;
.super Ljava/util/TimerTask;
.source "SourceFile"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final LOG:Lorg/slf4j/Logger;

.field private static final TIME_FORMAT:Ljava/text/DateFormat;

.field private static final counter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile lastDate:Ljava/util/Date;

.field private static final lastFaceTrackingIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final lastFacesCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile lastItem:Ljava/lang/String;

.field private static volatile lastMaxTrackingId:I

.field private static volatile lastReset:Ljava/util/Date;

.field private static volatile lastTime:J

.field private static volatile maxTrackingId:I

.field private static statistics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/item/ItemStatistic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lsk/mimac/slideshow/item/ItemCounter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->TIME_FORMAT:Ljava/text/DateFormat;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->counter:Ljava/util/Map;

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->lastDate:Ljava/util/Date;

    sput-wide v1, Lsk/mimac/slideshow/item/ItemCounter;->lastTime:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->lastReset:Ljava/util/Date;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->lastFaceTrackingIds:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->lastFacesCount:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->statistics:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/item/ItemCounter;->lambda$sortEntries$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p0

    return p0
.end method

.method public static addItem(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sget-object v3, Lsk/mimac/slideshow/item/ItemCounter;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lsk/mimac/slideshow/item/ItemCounter;->lastItem:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {v1, v2}, Lsk/mimac/slideshow/item/ItemCounter;->addItemInternal(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sput-object p0, Lsk/mimac/slideshow/item/ItemCounter;->lastItem:Ljava/lang/String;

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->lastDate:Ljava/util/Date;

    sput-wide v1, Lsk/mimac/slideshow/item/ItemCounter;->lastTime:J

    sget-object p0, Lsk/mimac/slideshow/item/ItemCounter;->lastFaceTrackingIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    sget-object p0, Lsk/mimac/slideshow/item/ItemCounter;->lastFacesCount:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget p0, Lsk/mimac/slideshow/item/ItemCounter;->maxTrackingId:I

    sput p0, Lsk/mimac/slideshow/item/ItemCounter;->lastMaxTrackingId:I

    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static addItemInternal(J)V
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/item/ItemCounter;->counter:Ljava/util/Map;

    sget-object v1, Lsk/mimac/slideshow/item/ItemCounter;->lastItem:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    sget-wide v2, Lsk/mimac/slideshow/item/ItemCounter;->lastTime:J

    sub-long/2addr p0, v2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lsk/mimac/slideshow/item/ItemCounter;->lastItem:Ljava/lang/String;

    new-instance v3, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/utils/Couple;->setFirst(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/utils/Couple;->setSecond(Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_REPORT_STATISTICS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lsk/mimac/slideshow/item/ItemStatistic;

    sget-object v1, Lsk/mimac/slideshow/item/ItemCounter;->lastItem:Ljava/lang/String;

    sget-object v2, Lsk/mimac/slideshow/item/ItemCounter;->lastDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-int p1, p0

    invoke-direct {v0, v1, v2, v3, p1}, Lsk/mimac/slideshow/item/ItemStatistic;-><init>(Ljava/lang/String;JI)V

    sget-object p0, Lsk/mimac/slideshow/item/ItemCounter;->lastFaceTrackingIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/item/ItemStatistic;->setFacesUnique(Ljava/lang/Integer;)V

    sget-object p0, Lsk/mimac/slideshow/item/ItemCounter;->lastFacesCount:Ljava/util/List;

    invoke-static {p0}, Lsk/mimac/slideshow/item/ItemCounter;->calculateAverage(Ljava/util/List;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/item/ItemStatistic;->setFacesAverage(Ljava/lang/Float;)V

    sget p0, Lsk/mimac/slideshow/item/ItemCounter;->maxTrackingId:I

    sget p1, Lsk/mimac/slideshow/item/ItemCounter;->lastMaxTrackingId:I

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/item/ItemStatistic;->setFacesUniqueNew(Ljava/lang/Integer;)V

    sget-object p0, Lsk/mimac/slideshow/item/ItemCounter;->statistics:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static calculateAverage(Ljava/util/List;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)F"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static finishLastItem()V
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sget-object v3, Lsk/mimac/slideshow/item/ItemCounter;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lsk/mimac/slideshow/item/ItemCounter;->lastItem:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {v1, v2}, Lsk/mimac/slideshow/item/ItemCounter;->addItemInternal(J)V

    const/4 v4, 0x0

    sput-object v4, Lsk/mimac/slideshow/item/ItemCounter;->lastItem:Ljava/lang/String;

    sput-object v0, Lsk/mimac/slideshow/item/ItemCounter;->lastDate:Ljava/util/Date;

    sput-wide v1, Lsk/mimac/slideshow/item/ItemCounter;->lastTime:J

    sget v0, Lsk/mimac/slideshow/item/ItemCounter;->maxTrackingId:I

    sput v0, Lsk/mimac/slideshow/item/ItemCounter;->lastMaxTrackingId:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getHTML()Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x3c

    .line 4
    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v4, "<b>"

    .line 8
    .line 9
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v4, "data_since"

    .line 13
    .line 14
    const-string v5, ": </b>"

    .line 15
    .line 16
    invoke-static {v4, v5, v3}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    sget-object v4, Lsk/mimac/slideshow/item/ItemCounter;->LOCK:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v4

    .line 22
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    .line 23
    .line 24
    sget-object v6, Lsk/mimac/slideshow/item/ItemCounter;->counter:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v5}, Lsk/mimac/slideshow/item/ItemCounter;->sortEntries(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    sget-object v6, Lsk/mimac/slideshow/item/ItemCounter;->TIME_FORMAT:Ljava/text/DateFormat;

    .line 37
    .line 38
    sget-object v7, Lsk/mimac/slideshow/item/ItemCounter;->lastReset:Ljava/util/Date;

    .line 39
    .line 40
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v7, " ("

    .line 48
    .line 49
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v7, " "

    .line 60
    .line 61
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v7, "item"

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-static {v7, v8}, Lsk/mimac/slideshow/localization/Localization;->getStringForNumber(Ljava/lang/String;I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v7, ")<br><b>"

    .line 78
    .line 79
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v7, "last_item"

    .line 83
    .line 84
    invoke-static {v7}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v7, ":</b> "

    .line 92
    .line 93
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    sget-object v7, Lsk/mimac/slideshow/item/ItemCounter;->lastItem:Ljava/lang/String;

    .line 97
    .line 98
    if-nez v7, :cond_0

    .line 99
    .line 100
    const-string v7, "-"

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_0
    sget-object v7, Lsk/mimac/slideshow/item/ItemCounter;->lastItem:Ljava/lang/String;

    .line 107
    .line 108
    :goto_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v7, " ("

    .line 112
    .line 113
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    sget-object v7, Lsk/mimac/slideshow/item/ItemCounter;->lastDate:Ljava/util/Date;

    .line 117
    .line 118
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v6, ")</b><br><table class=\'styledTable\' style=\'font-size:77%;margin-top:7px;\'><tr><th>"

    .line 126
    .line 127
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v6, "name2"

    .line 131
    .line 132
    invoke-static {v6}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v6, "</th><th>"

    .line 140
    .line 141
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v6, "count"

    .line 145
    .line 146
    invoke-static {v6}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v6, "</th><th>"

    .line 154
    .line 155
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v6, "length_total"

    .line 159
    .line 160
    invoke-static {v6}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v6, "</th></tr>"

    .line 168
    .line 169
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-eqz v6, :cond_2

    .line 181
    .line 182
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v6, Ljava/util/Map$Entry;

    .line 187
    .line 188
    const-string v7, "<tr><td>"

    .line 189
    .line 190
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    check-cast v7, Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v7, "</td><td>"

    .line 203
    .line 204
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    check-cast v7, Lsk/mimac/slideshow/utils/Couple;

    .line 212
    .line 213
    invoke-virtual {v7}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v7, "x</td><td>"

    .line 221
    .line 222
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    check-cast v6, Lsk/mimac/slideshow/utils/Couple;

    .line 230
    .line 231
    invoke-virtual {v6}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Ljava/lang/Long;

    .line 236
    .line 237
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 238
    .line 239
    .line 240
    move-result-wide v6

    .line 241
    long-to-double v6, v6

    .line 242
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    div-double/2addr v6, v8

    .line 248
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 249
    .line 250
    .line 251
    move-result-wide v6

    .line 252
    long-to-int v7, v6

    .line 253
    if-le v7, v2, :cond_1

    .line 254
    .line 255
    div-int/lit8 v6, v7, 0x3c

    .line 256
    .line 257
    const-string v8, "%d:%02d s"

    .line 258
    .line 259
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    rem-int/2addr v7, v2

    .line 264
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    const/4 v9, 0x2

    .line 269
    new-array v9, v9, [Ljava/lang/Object;

    .line 270
    .line 271
    aput-object v6, v9, v1

    .line 272
    .line 273
    aput-object v7, v9, v0

    .line 274
    .line 275
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_1
    const-string v6, "%d s"

    .line 284
    .line 285
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    new-array v8, v0, [Ljava/lang/Object;

    .line 290
    .line 291
    aput-object v7, v8, v1

    .line 292
    .line 293
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    goto :goto_2

    .line 298
    :goto_3
    const-string v6, "</td></tr>"

    .line 299
    .line 300
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    const-string v0, "</table>"

    .line 306
    .line 307
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    return-object v0

    .line 315
    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    throw v0
.end method

.method public static getLastItem()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/item/ItemCounter;->lastItem:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic lambda$sortEntries$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static parseLineAndAdd(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/item/ItemStatistic;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    invoke-static {v0}, Lsk/mimac/slideshow/item/ItemStatistic;->fromJson(Lorg/json/JSONObject;)Lsk/mimac/slideshow/item/ItemStatistic;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lsk/mimac/slideshow/item/ItemCounter;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t parse statistics from temporary statistics file, line: \'{}\'"

    invoke-interface {v0, v1, p1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static processFaceDetectionData(Lsk/mimac/slideshow/face/FaceDetectionResult;)V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/item/ItemCounter;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/item/ItemCounter;->lastFaceTrackingIds:Ljava/util/Set;

    invoke-virtual {p0}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getTrackingIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lsk/mimac/slideshow/item/ItemCounter;->lastFacesCount:Ljava/util/List;

    invoke-virtual {p0}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getFacesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getTrackingIds()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getTrackingIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/face/FaceDetectionResult;->getTrackingIds()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lsk/mimac/slideshow/item/ItemCounter;->maxTrackingId:I

    if-le v1, v2, :cond_0

    sput v1, Lsk/mimac/slideshow/item/ItemCounter;->maxTrackingId:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static saveStatisticsToTemporaryFile(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/item/ItemStatistic;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->ITEM_COUNTER_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x989680

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xa

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/item/ItemStatistic;

    invoke-virtual {v4}, Lsk/mimac/slideshow/item/ItemStatistic;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    sget-object v2, Lsk/mimac/slideshow/item/ItemCounter;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t write "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " statistics to temporary file \'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public static sendStatistics()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/item/ItemCounter;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/item/ItemCounter;->statistics:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lsk/mimac/slideshow/item/ItemCounter;->statistics:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lsk/mimac/slideshow/mqtt/MqttService;->sendPlayStatistics(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lsk/mimac/slideshow/item/ItemCounter;->saveStatisticsToTemporaryFile(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/item/ItemCounter;->sendTemporarySavedStatistics()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static sendTemporarySavedStatistics()V
    .locals 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->ITEM_COUNTER_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2, v3}, Lsk/mimac/slideshow/item/ItemCounter;->parseLineAndAdd(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lsk/mimac/slideshow/mqtt/MqttService;->sendPlayStatistics(Ljava/util/List;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lsk/mimac/slideshow/item/ItemCounter;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t delete temporary statistics file \'{}\'"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    sget-object v2, Lsk/mimac/slideshow/item/ItemCounter;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t read statistics from temporary statistics file \'{}\'"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_4
    return-void
.end method

.method private static sortEntries(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;>;)V"
        }
    .end annotation

    new-instance v0, LE/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LE/a;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/item/ItemCounter;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/item/ItemCounter;->counter:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lsk/mimac/slideshow/item/ItemCounter;->lastReset:Ljava/util/Date;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
