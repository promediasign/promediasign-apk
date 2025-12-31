.class public abstract synthetic Lj$/time/chrono/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    .line 0
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->w()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)I
    .locals 4

    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->w()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->w()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->a()Lj$/time/chrono/l;

    move-result-object p0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->a()Lj$/time/chrono/l;

    move-result-object p1

    check-cast p0, Lj$/time/chrono/a;

    .line 0
    invoke-interface {p0}, Lj$/time/chrono/l;->m()Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-interface {p1}, Lj$/time/chrono/l;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static c(Lj$/time/chrono/d;Lj$/time/chrono/d;)I
    .locals 2

    invoke-interface {p0}, Lj$/time/chrono/d;->b()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/d;->b()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->O(Lj$/time/chrono/ChronoLocalDate;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/time/chrono/d;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/d;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/LocalTime;->S(Lj$/time/LocalTime;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/time/chrono/d;->a()Lj$/time/chrono/l;

    move-result-object p0

    invoke-interface {p1}, Lj$/time/chrono/d;->a()Lj$/time/chrono/l;

    move-result-object p1

    check-cast p0, Lj$/time/chrono/a;

    .line 0
    invoke-interface {p0}, Lj$/time/chrono/l;->m()Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-interface {p1}, Lj$/time/chrono/l;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static d(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)I
    .locals 4

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->R()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->R()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalTime;->W()I

    move-result v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->W()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->F()Lj$/time/chrono/d;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->F()Lj$/time/chrono/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/time/chrono/d;->E(Lj$/time/chrono/d;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->t()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneId;->m()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->t()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZoneId;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->a()Lj$/time/chrono/l;

    move-result-object p0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->a()Lj$/time/chrono/l;

    move-result-object p1

    check-cast p0, Lj$/time/chrono/a;

    .line 0
    invoke-interface {p0}, Lj$/time/chrono/l;->m()Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-interface {p1}, Lj$/time/chrono/l;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static e(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/p;)I
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/chrono/i;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->F()Lj$/time/chrono/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->p(Lj$/time/temporal/p;)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/ZoneOffset;->c0()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Lj$/time/temporal/s;

    .line 0
    const-string p1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p0

    :cond_2
    invoke-static {p0, p1}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result p0

    return p0
.end method

.method public static f(Lj$/time/chrono/m;Lj$/time/temporal/a;)I
    .locals 1

    .line 0
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Lj$/time/chrono/m;->getValue()I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result p0

    return p0
.end method

.method public static g(Lj$/time/chrono/m;Lj$/time/temporal/p;)J
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Lj$/time/chrono/m;->getValue()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/p;->r(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Lj$/time/temporal/s;

    const-string v0, "Unsupported field: "

    .line 0
    invoke-static {v0, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p0
.end method

.method public static h(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/p;)Z
    .locals 1

    .line 0
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Z

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/p;->s(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Lj$/time/chrono/m;Lj$/time/temporal/p;)Z
    .locals 3

    .line 0
    instance-of v0, p1, Lj$/time/temporal/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object p0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/p;->s(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static j(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 2

    .line 0
    invoke-static {}, Lj$/time/temporal/l;->l()Lj$/time/temporal/q;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lj$/time/temporal/l;->k()Lj$/time/temporal/q;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lj$/time/temporal/l;->i()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/time/temporal/l;->g()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->a()Lj$/time/chrono/l;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lj$/time/temporal/l;->j()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_3

    sget-object p0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    return-object p0

    :cond_3
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static k(Lj$/time/chrono/d;Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {}, Lj$/time/temporal/l;->l()Lj$/time/temporal/q;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lj$/time/temporal/l;->k()Lj$/time/temporal/q;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lj$/time/temporal/l;->i()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/time/temporal/l;->g()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-interface {p0}, Lj$/time/chrono/d;->toLocalTime()Lj$/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-interface {p0}, Lj$/time/chrono/d;->a()Lj$/time/chrono/l;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lj$/time/temporal/l;->j()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_3

    sget-object p0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object p0

    :cond_3
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/time/temporal/l;->k()Lj$/time/temporal/q;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lj$/time/temporal/l;->l()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/time/temporal/l;->i()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lj$/time/temporal/l;->g()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->a()Lj$/time/chrono/l;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lj$/time/temporal/l;->j()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_4

    sget-object p0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object p0

    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->t()Lj$/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lj$/time/chrono/m;Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {}, Lj$/time/temporal/l;->j()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p0, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/l;->c(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lj$/time/chrono/d;Lj$/time/ZoneOffset;)J
    .locals 4

    .line 0
    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Lj$/time/chrono/d;->b()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->w()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-interface {p0}, Lj$/time/chrono/d;->toLocalTime()Lj$/time/LocalTime;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/LocalTime;->i0()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->c0()I

    move-result p0

    int-to-long p0, p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static o(Lj$/time/chrono/ChronoZonedDateTime;)J
    .locals 4

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->b()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->w()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->i0()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/ZoneOffset;->c0()I

    move-result p0

    int-to-long v2, p0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;
    .locals 1

    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/l;

    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 0
    :cond_0
    const-string p0, "defaultObj"

    invoke-static {v0, p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 0
    :goto_0
    check-cast p0, Lj$/time/chrono/l;

    return-object p0
.end method
