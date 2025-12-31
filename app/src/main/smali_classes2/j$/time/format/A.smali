.class final Lj$/time/format/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lj$/time/temporal/TemporalAccessor;

.field private b:Lj$/time/format/DateTimeFormatter;

.field private c:I


# direct methods
.method constructor <init>(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    invoke-virtual {p2}, Lj$/time/format/DateTimeFormatter;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-virtual {p2}, Lj$/time/format/DateTimeFormatter;->d()Lj$/time/ZoneId;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v2

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/chrono/l;

    invoke-static {}, Lj$/time/temporal/l;->l()Lj$/time/temporal/q;

    move-result-object v3

    invoke-interface {p1, v3}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/ZoneId;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v0, v5

    :cond_1
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v5

    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    goto/16 :goto_7

    :cond_3
    if-eqz v0, :cond_4

    move-object v4, v0

    goto :goto_0

    :cond_4
    move-object v4, v2

    :goto_0
    if-eqz v1, :cond_9

    sget-object v6, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {p1, v6}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    if-eqz v4, :cond_5

    goto :goto_1

    .line 0
    :cond_5
    const-string v2, "defaultObj"

    invoke-static {v0, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    :goto_1
    check-cast v4, Lj$/time/chrono/l;

    invoke-static {p1}, Lj$/time/Instant;->T(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object p1

    invoke-interface {v4, p1, v1}, Lj$/time/chrono/l;->J(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    goto/16 :goto_7

    .line 0
    :cond_6
    :try_start_0
    invoke-virtual {v1}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v6

    invoke-virtual {v6}, Lj$/time/zone/f;->i()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lj$/time/Instant;->c:Lj$/time/Instant;

    invoke-virtual {v6, v7}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v6
    :try_end_0
    .catch Lj$/time/zone/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_7
    move-object v6, v1

    .line 0
    :goto_2
    instance-of v6, v6, Lj$/time/ZoneOffset;

    if-eqz v6, :cond_9

    sget-object v6, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-interface {p1, v6}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {p1, v6}, Lj$/time/temporal/TemporalAccessor;->p(Lj$/time/temporal/p;)I

    move-result v6

    invoke-virtual {v1}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v7

    sget-object v8, Lj$/time/Instant;->c:Lj$/time/Instant;

    invoke-virtual {v7, v8}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v7

    invoke-virtual {v7}, Lj$/time/ZoneOffset;->c0()I

    move-result v7

    if-ne v6, v7, :cond_8

    goto :goto_3

    :cond_8
    new-instance p2, Lj$/time/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to apply override zone \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' because the temporal object being formatted has a different offset but does not represent an instant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p2

    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    move-object v3, v1

    :cond_a
    if-eqz v0, :cond_f

    sget-object v1, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v4, p1}, Lj$/time/chrono/l;->q(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v5

    goto :goto_6

    :cond_b
    sget-object v1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    if-ne v0, v1, :cond_c

    if-eqz v2, :cond_f

    :cond_c
    invoke-static {}, Lj$/time/temporal/a;->values()[Lj$/time/temporal/a;

    move-result-object v1

    array-length v2, v1

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_f

    aget-object v7, v1, v6

    invoke-virtual {v7}, Lj$/time/temporal/a;->C()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {p1, v7}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_5

    :cond_d
    new-instance p2, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to apply override chronology \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' because the temporal object being formatted contains date fields but does not represent a whole date: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p2

    :cond_e
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_f
    :goto_6
    new-instance v0, Lj$/time/format/z;

    invoke-direct {v0, v5, p1, v4, v3}, Lj$/time/format/z;-><init>(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAccessor;Lj$/time/chrono/l;Lj$/time/ZoneId;)V

    move-object p1, v0

    .line 0
    :goto_7
    iput-object p1, p0, Lj$/time/format/A;->a:Lj$/time/temporal/TemporalAccessor;

    iput-object p2, p0, Lj$/time/format/A;->b:Lj$/time/format/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget v0, p0, Lj$/time/format/A;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lj$/time/format/A;->c:I

    return-void
.end method

.method final b()Lj$/time/format/E;
    .locals 1

    iget-object v0, p0, Lj$/time/format/A;->b:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->b()Lj$/time/format/E;

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lj$/time/format/A;->b:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->c()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method final d()Lj$/time/temporal/TemporalAccessor;
    .locals 1

    iget-object v0, p0, Lj$/time/format/A;->a:Lj$/time/temporal/TemporalAccessor;

    return-object v0
.end method

.method final e(Lj$/time/temporal/p;)Ljava/lang/Long;
    .locals 2

    iget v0, p0, Lj$/time/format/A;->c:I

    iget-object v1, p0, Lj$/time/format/A;->a:Lj$/time/temporal/TemporalAccessor;

    if-lez v0, :cond_0

    invoke-interface {v1, p1}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v1, p1}, Lj$/time/temporal/TemporalAccessor;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method final f(Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lj$/time/format/A;->a:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget v2, p0, Lj$/time/format/A;->c:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lj$/time/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to extract "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from temporal "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method final g()V
    .locals 1

    iget v0, p0, Lj$/time/format/A;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/time/format/A;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/time/format/A;->a:Lj$/time/temporal/TemporalAccessor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
