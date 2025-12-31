.class final Lj$/time/format/v;
.super Lj$/time/format/u;
.source "SourceFile"


# static fields
.field private static final i:Lj$/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final e:Lj$/time/format/I;

.field private final f:Z

.field private final g:Ljava/util/HashMap;

.field private final h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/format/v;->i:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Lj$/time/format/I;Z)V
    .locals 3

    .line 0
    invoke-static {}, Lj$/time/temporal/l;->k()Lj$/time/temporal/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZoneText("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/time/format/u;-><init>(Lj$/time/temporal/q;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/time/format/v;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/time/format/v;->h:Ljava/util/HashMap;

    const-string v0, "textStyle"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/I;

    iput-object p1, p0, Lj$/time/format/v;->e:Lj$/time/format/I;

    iput-boolean p2, p0, Lj$/time/format/v;->f:Z

    return-void
.end method


# virtual methods
.method protected final a(Lj$/time/format/x;)Lj$/time/format/o;
    .locals 14

    sget-object v0, Lj$/time/format/I;->NARROW:Lj$/time/format/I;

    iget-object v1, p0, Lj$/time/format/v;->e:Lj$/time/format/I;

    if-ne v1, v0, :cond_0

    invoke-super {p0, p1}, Lj$/time/format/u;->a(Lj$/time/format/x;)Lj$/time/format/o;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lj$/time/format/x;->i()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/format/x;->k()Z

    move-result v2

    invoke-static {}, Lj$/time/zone/j;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lj$/time/format/v;->g:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lj$/time/format/v;->h:Ljava/util/HashMap;

    :goto_0
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj$/time/format/o;

    if-nez v5, :cond_7

    :cond_2
    invoke-static {p1}, Lj$/time/format/o;->f(Lj$/time/format/x;)Lj$/time/format/o;

    move-result-object v5

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object p1

    array-length v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ge v8, v6, :cond_6

    aget-object v11, p1, v8

    aget-object v12, v11, v7

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v12, v12}, Lj$/time/format/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v0}, Lj$/time/format/J;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lj$/time/format/I;->FULL:Lj$/time/format/I;

    if-ne v1, v13, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x2

    :goto_2
    array-length v10, v11

    if-ge v9, v10, :cond_5

    aget-object v10, v11, v9

    invoke-virtual {v5, v10, v12}, Lj$/time/format/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v5
.end method

.method public final n(Lj$/time/format/A;Ljava/lang/StringBuilder;)Z
    .locals 13

    invoke-static {}, Lj$/time/temporal/l;->l()Lj$/time/temporal/q;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/format/A;->f(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lj$/time/ZoneId;->m()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v0, Lj$/time/ZoneOffset;

    const/4 v4, 0x1

    if-nez v3, :cond_9

    invoke-virtual {p1}, Lj$/time/format/A;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object v3

    iget-boolean v5, p0, Lj$/time/format/v;->f:Z

    const/4 v6, 0x2

    if-nez v5, :cond_2

    sget-object v5, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {v3, v5}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v0

    invoke-static {v3}, Lj$/time/Instant;->T(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/time/zone/f;->h(Lj$/time/Instant;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v5, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {v3, v5}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v3, v7}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3, v5}, Lj$/time/temporal/TemporalAccessor;->v(Lj$/time/temporal/p;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lj$/time/LocalDate;->d0(J)Lj$/time/LocalDate;

    move-result-object v5

    invoke-interface {v3, v7}, Lj$/time/temporal/TemporalAccessor;->v(Lj$/time/temporal/p;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lj$/time/LocalTime;->Z(J)Lj$/time/LocalTime;

    move-result-object v3

    .line 0
    invoke-static {v5, v3}, Lj$/time/LocalDateTime;->f0(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v3

    .line 0
    invoke-virtual {v0}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lj$/time/zone/f;->f(Lj$/time/LocalDateTime;)Lj$/time/zone/b;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v5

    invoke-virtual {v3, v0}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-virtual {v0}, Lj$/time/ZonedDateTime;->R()J

    move-result-wide v7

    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalTime;->W()I

    move-result v0

    int-to-long v9, v0

    invoke-static {v7, v8, v9, v10}, Lj$/time/Instant;->X(JJ)Lj$/time/Instant;

    move-result-object v0

    .line 0
    invoke-virtual {v5, v0}, Lj$/time/zone/f;->h(Lj$/time/Instant;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1}, Lj$/time/format/A;->c()Ljava/util/Locale;

    move-result-object p1

    .line 0
    sget-object v3, Lj$/time/format/I;->NARROW:Lj$/time/format/I;

    const/4 v5, 0x0

    iget-object v7, p0, Lj$/time/format/v;->e:Lj$/time/format/I;

    if-ne v7, v3, :cond_3

    goto :goto_1

    :cond_3
    sget-object v3, Lj$/time/format/v;->i:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    const/4 v9, 0x5

    const/4 v10, 0x3

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_4

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    if-nez v8, :cond_6

    :cond_4
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/String;

    aput-object v2, v11, v1

    invoke-virtual {v8, v1, v4, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-virtual {v8, v1, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-virtual {v8, v4, v4, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v10

    const/4 v6, 0x4

    invoke-virtual {v8, v4, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v6

    aput-object v2, v11, v9

    const/4 v1, 0x6

    aput-object v2, v11, v1

    if-nez v5, :cond_5

    new-instance v5, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_5
    invoke-interface {v5, p1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v11

    :cond_6
    invoke-virtual {v7}, Lj$/time/format/I;->n()I

    move-result p1

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    add-int/2addr p1, v9

    aget-object v5, v8, p1

    goto :goto_1

    :cond_7
    add-int/2addr p1, v10

    aget-object v5, v8, p1

    goto :goto_1

    :cond_8
    add-int/2addr p1, v4

    aget-object v5, v8, p1

    :goto_1
    if-eqz v5, :cond_9

    move-object v2, v5

    .line 0
    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4
.end method
