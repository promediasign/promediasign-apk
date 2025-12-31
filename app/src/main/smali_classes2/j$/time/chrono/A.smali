.class public final Lj$/time/chrono/A;
.super Lj$/time/chrono/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/chrono/A;

.field private static final serialVersionUID:J = 0xe6dfcf4568e9fbbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/time/chrono/A;

    invoke-direct {v0}, Lj$/time/chrono/A;-><init>()V

    sput-object v0, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/time/chrono/a;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/d;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public final G(III)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 0
    new-instance v0, Lj$/time/chrono/C;

    add-int/lit16 p1, p1, 0x777

    invoke-static {p1, p2, p3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/C;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final I(Lj$/time/temporal/a;)Lj$/time/temporal/t;
    .locals 10

    sget-object v0, Lj$/time/chrono/z;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const-wide/16 v2, 0x777

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lj$/time/temporal/a;->n()Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->n()Lj$/time/temporal/t;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/t;->e()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lj$/time/temporal/t;->d()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Lj$/time/temporal/t;->j(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->n()Lj$/time/temporal/t;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/t;->d()J

    move-result-wide v0

    sub-long v6, v0, v2

    invoke-virtual {p1}, Lj$/time/temporal/t;->e()J

    move-result-wide v0

    neg-long v0, v0

    const-wide/16 v2, 0x778

    add-long v8, v0, v2

    const-wide/16 v4, 0x1

    .line 0
    invoke-static/range {v4 .. v9}, Lj$/time/temporal/t;->k(JJJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 0
    :cond_2
    sget-object p1, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->n()Lj$/time/temporal/t;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/t;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x5994

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lj$/time/temporal/t;->d()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Lj$/time/temporal/t;->j(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final J(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lj$/time/chrono/k;->V(Lj$/time/chrono/l;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final M()Ljava/util/List;
    .locals 1

    invoke-static {}, Lj$/time/chrono/D;->values()[Lj$/time/chrono/D;

    move-result-object v0

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final P(J)Z
    .locals 3

    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    const-wide/16 v1, 0x777

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/s;->P(J)Z

    move-result p1

    return p1
.end method

.method public final Q(I)Lj$/time/chrono/m;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 0
    sget-object p1, Lj$/time/chrono/D;->ROC:Lj$/time/chrono/D;

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid era: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0

    :cond_1
    sget-object p1, Lj$/time/chrono/D;->BEFORE_ROC:Lj$/time/chrono/D;

    :goto_0
    return-object p1
.end method

.method public final g(Ljava/util/HashMap;Lj$/time/format/G;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lj$/time/chrono/a;->g(Ljava/util/HashMap;Lj$/time/format/G;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/C;

    return-object p1
.end method

.method public final h(Lj$/time/chrono/m;I)I
    .locals 1

    instance-of v0, p1, Lj$/time/chrono/D;

    if-eqz v0, :cond_1

    sget-object v0, Lj$/time/chrono/D;->ROC:Lj$/time/chrono/D;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p2, p2, 0x1

    :goto_0
    return p2

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be MinguoEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 0
    new-instance v0, Lj$/time/chrono/C;

    invoke-static {p1, p2}, Lj$/time/LocalDate;->d0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/C;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "Minguo"

    return-object v0
.end method

.method public final p()Lj$/time/chrono/ChronoLocalDate;
    .locals 2

    .line 0
    invoke-static {}, Lj$/time/b;->d()Lj$/time/b;

    move-result-object v0

    .line 0
    invoke-static {v0}, Lj$/time/LocalDate;->b0(Lj$/time/b;)Lj$/time/LocalDate;

    move-result-object v0

    .line 0
    instance-of v1, v0, Lj$/time/chrono/C;

    if-eqz v1, :cond_0

    check-cast v0, Lj$/time/chrono/C;

    goto :goto_0

    :cond_0
    new-instance v1, Lj$/time/chrono/C;

    invoke-static {v0}, Lj$/time/LocalDate;->U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-direct {v1, v0}, Lj$/time/chrono/C;-><init>(Lj$/time/LocalDate;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final q(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 0
    instance-of v0, p1, Lj$/time/chrono/C;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/chrono/C;

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/chrono/C;

    invoke-static {p1}, Lj$/time/LocalDate;->U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/C;-><init>(Lj$/time/LocalDate;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    const-string v0, "roc"

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 0
    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method public final x(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/a;->x(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final y(II)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 0
    new-instance v0, Lj$/time/chrono/C;

    add-int/lit16 p1, p1, 0x777

    invoke-static {p1, p2}, Lj$/time/LocalDate;->e0(II)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/C;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method
