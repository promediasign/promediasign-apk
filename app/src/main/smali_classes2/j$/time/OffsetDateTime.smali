.class public final Lj$/time/OffsetDateTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/m;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/m;",
        "Ljava/lang/Comparable<",
        "Lj$/time/OffsetDateTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1fbfbc5d57d80062L


# instance fields
.field private final a:Lj$/time/LocalDateTime;

.field private final b:Lj$/time/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    sget-object v1, Lj$/time/ZoneOffset;->g:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {v0, v1}, Lj$/time/OffsetDateTime;->S(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    .line 0
    sget-object v0, Lj$/time/LocalDateTime;->d:Lj$/time/LocalDateTime;

    sget-object v1, Lj$/time/ZoneOffset;->f:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {v0, v1}, Lj$/time/OffsetDateTime;->S(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    return-void
.end method

.method private constructor <init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dateTime"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    const-string p1, "offset"

    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneOffset;

    iput-object p1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    return-void
.end method

.method public static S(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 1

    new-instance v0, Lj$/time/OffsetDateTime;

    invoke-direct {v0, p0, p1}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static T(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;
    .locals 2

    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p0}, Lj$/time/Instant;->U()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Instant;->V()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lj$/time/LocalDateTime;->g0(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object p0

    new-instance v0, Lj$/time/OffsetDateTime;

    invoke-direct {v0, p0, p1}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method static V(Ljava/io/ObjectInput;)Lj$/time/OffsetDateTime;
    .locals 3

    sget-object v0, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    .line 0
    sget-object v0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    .line 0
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    invoke-static {v0, v1, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    .line 0
    invoke-static {p0}, Lj$/time/LocalTime;->g0(Ljava/io/DataInput;)Lj$/time/LocalTime;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->f0(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 0
    invoke-static {p0}, Lj$/time/ZoneOffset;->h0(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object p0

    .line 0
    new-instance v1, Lj$/time/OffsetDateTime;

    invoke-direct {v1, v0, p0}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v1
.end method

.method private X(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/OffsetDateTime;

    invoke-direct {v0, p1, p2}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static now()Lj$/time/OffsetDateTime;
    .locals 2

    invoke-static {}, Lj$/time/b;->d()Lj$/time/b;

    move-result-object v0

    .line 0
    const-string v1, "clock"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lj$/time/b;->b()Lj$/time/Instant;

    move-result-object v1

    invoke-virtual {v0}, Lj$/time/b;->a()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-static {v1, v0}, Lj$/time/OffsetDateTime;->T(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj$/time/s;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lj$/time/temporal/l;->i()Lj$/time/temporal/q;

    move-result-object v0

    if-eq p1, v0, :cond_6

    invoke-static {}, Lj$/time/temporal/l;->k()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/time/temporal/l;->l()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-static {}, Lj$/time/temporal/l;->f()Lj$/time/temporal/q;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    if-ne p1, v0, :cond_2

    .line 0
    invoke-virtual {v1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 0
    :cond_2
    invoke-static {}, Lj$/time/temporal/l;->g()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 0
    invoke-virtual {v1}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 0
    :cond_3
    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_4

    sget-object p1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    return-object p1

    :cond_4
    invoke-static {}, Lj$/time/temporal/l;->j()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_5

    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object p1

    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1
.end method

.method public final C(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 4

    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    .line 0
    iget-object v1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v2

    .line 0
    invoke-virtual {v2}, Lj$/time/LocalDate;->w()J

    move-result-wide v2

    invoke-interface {p1, v2, v3, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    .line 0
    invoke-virtual {v1}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    .line 0
    invoke-virtual {v1}, Lj$/time/LocalTime;->h0()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->c0()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final U(JLj$/time/temporal/r;)Lj$/time/OffsetDateTime;
    .locals 1

    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDateTime;->h0(JLj$/time/temporal/r;)Lj$/time/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lj$/time/OffsetDateTime;->X(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/r;->n(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/OffsetDateTime;

    return-object p1
.end method

.method public final W()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;
    .locals 5

    .line 0
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    sget-object v1, Lj$/time/o;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    iget-object v4, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v4, p1, p2, p3}, Lj$/time/LocalDateTime;->l0(JLj$/time/temporal/p;)Lj$/time/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lj$/time/OffsetDateTime;->X(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->S(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->f0(I)Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lj$/time/OffsetDateTime;->X(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    .line 0
    :cond_1
    invoke-virtual {v4}, Lj$/time/LocalDateTime;->Y()I

    move-result p3

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/time/Instant;->X(JJ)Lj$/time/Instant;

    move-result-object p1

    invoke-static {p1, v3}, Lj$/time/OffsetDateTime;->T(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/p;->v(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/OffsetDateTime;

    :goto_0
    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lj$/time/OffsetDateTime;

    .line 0
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    iget-object v2, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lj$/time/LocalDateTime;->E(Lj$/time/chrono/d;)I

    move-result p1

    goto :goto_0

    .line 0
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    iget-object v0, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-static {v2, v0}, Lj$/time/chrono/h;->n(Lj$/time/chrono/d;Lj$/time/ZoneOffset;)J

    move-result-wide v3

    .line 0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    iget-object p1, p1, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-static {v1, p1}, Lj$/time/chrono/h;->n(Lj$/time/chrono/d;Lj$/time/ZoneOffset;)J

    move-result-wide v5

    .line 0
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    if-nez p1, :cond_1

    .line 0
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object p1

    .line 0
    invoke-virtual {p1}, Lj$/time/LocalTime;->W()I

    move-result p1

    .line 0
    invoke-virtual {v1}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Lj$/time/LocalTime;->W()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 0
    invoke-virtual {v2, v1}, Lj$/time/LocalDateTime;->E(Lj$/time/chrono/d;)I

    move-result p1

    :cond_2
    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/OffsetDateTime;->U(JLj$/time/temporal/r;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/Temporal;Lj$/time/temporal/r;)J
    .locals 4

    .line 0
    instance-of v0, p1, Lj$/time/OffsetDateTime;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/OffsetDateTime;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lj$/time/ZoneOffset;->b0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-static {}, Lj$/time/temporal/l;->f()Lj$/time/temporal/q;

    move-result-object v1

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/LocalDate;

    invoke-static {}, Lj$/time/temporal/l;->g()Lj$/time/temporal/q;

    move-result-object v2

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/LocalTime;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 0
    invoke-static {v1, v2}, Lj$/time/LocalDateTime;->f0(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    new-instance v2, Lj$/time/OffsetDateTime;

    invoke-direct {v2, v1, v0}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    move-object p1, v2

    goto :goto_0

    .line 0
    :cond_1
    invoke-static {p1}, Lj$/time/Instant;->T(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v1

    invoke-static {v1, v0}, Lj$/time/OffsetDateTime;->T(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object p1
    :try_end_0
    .catch Lj$/time/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_0
    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_3

    .line 0
    iget-object v0, p1, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    .line 0
    iget-object v1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v0}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lj$/time/ZoneOffset;->c0()I

    move-result v2

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->c0()I

    move-result v0

    sub-int/2addr v2, v0

    iget-object p1, p1, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lj$/time/LocalDateTime;->j0(J)Lj$/time/LocalDateTime;

    move-result-object p1

    new-instance v0, Lj$/time/OffsetDateTime;

    invoke-direct {v0, p1, v1}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    move-object p1, v0

    .line 0
    :goto_1
    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    iget-object p1, p1, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->e(Lj$/time/temporal/Temporal;Lj$/time/temporal/r;)J

    move-result-wide p1

    return-wide p1

    :cond_3
    invoke-interface {p2, p0, p1}, Lj$/time/temporal/r;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    :catch_0
    move-exception p2

    .line 0
    new-instance v0, Lj$/time/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain OffsetDateTime from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " of type "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 0
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/OffsetDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/OffsetDateTime;

    iget-object v1, p1, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    iget-object v3, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v3, v1}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    iget-object p1, p1, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final f(Lj$/time/temporal/p;)Z
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lj$/time/temporal/p;->s(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getOffset()Lj$/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final n(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/OffsetDateTime;->U(JLj$/time/temporal/r;)Lj$/time/OffsetDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/OffsetDateTime;->U(JLj$/time/temporal/r;)Lj$/time/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/OffsetDateTime;->U(JLj$/time/temporal/r;)Lj$/time/OffsetDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final p(Lj$/time/temporal/p;)I
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/o;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->p(Lj$/time/temporal/p;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->c0()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lj$/time/temporal/s;

    .line 0
    const-string v0, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    :cond_2
    invoke-static {p0, p1}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final r(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 3

    .line 0
    instance-of v0, p1, Lj$/time/LocalDate;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    iget-object v2, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    if-nez v0, :cond_4

    instance-of v0, p1, Lj$/time/LocalTime;

    if-nez v0, :cond_4

    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lj$/time/Instant;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/Instant;

    invoke-static {p1, v2}, Lj$/time/OffsetDateTime;->T(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object p1

    goto :goto_2

    :cond_1
    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_2

    check-cast p1, Lj$/time/ZoneOffset;

    invoke-direct {p0, v1, p1}, Lj$/time/OffsetDateTime;->X(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object p1

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lj$/time/OffsetDateTime;

    if-eqz v0, :cond_3

    :goto_0
    check-cast p1, Lj$/time/OffsetDateTime;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {p1, p0}, Lj$/time/chrono/h;->a(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 0
    :cond_4
    :goto_1
    invoke-virtual {v1, p1}, Lj$/time/LocalDateTime;->m0(Lj$/time/LocalDate;)Lj$/time/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lj$/time/OffsetDateTime;->X(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final s(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->s(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->n()Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->A(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lj$/time/temporal/p;)J
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/o;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {v2, p1}, Lj$/time/LocalDateTime;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->c0()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 0
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    iget-object p1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-static {v2, p1}, Lj$/time/chrono/h;->n(Lj$/time/chrono/d;Lj$/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0

    .line 0
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->r(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->o0(Ljava/io/DataOutput;)V

    iget-object v0, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->i0(Ljava/io/DataOutput;)V

    return-void
.end method
