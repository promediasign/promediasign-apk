.class final Lj$/time/chrono/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final transient a:Lj$/time/chrono/f;

.field private final transient b:Lj$/time/ZoneOffset;

.field private final transient c:Lj$/time/ZoneId;


# direct methods
.method private constructor <init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/f;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dateTime"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lj$/time/chrono/f;

    iput-object p3, p0, Lj$/time/chrono/k;->a:Lj$/time/chrono/f;

    const-string p3, "offset"

    invoke-static {p2, p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/ZoneOffset;

    iput-object p2, p0, Lj$/time/chrono/k;->b:Lj$/time/ZoneOffset;

    const-string p2, "zone"

    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    iput-object p1, p0, Lj$/time/chrono/k;->c:Lj$/time/ZoneId;

    return-void
.end method

.method static S(Lj$/time/chrono/l;Lj$/time/temporal/Temporal;)Lj$/time/chrono/k;
    .locals 3

    check-cast p1, Lj$/time/chrono/k;

    invoke-virtual {p1}, Lj$/time/chrono/k;->a()Lj$/time/chrono/l;

    move-result-object v0

    check-cast p0, Lj$/time/chrono/a;

    invoke-virtual {p0, v0}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/l;->m()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lj$/time/chrono/k;->a()Lj$/time/chrono/l;

    move-result-object p1

    invoke-interface {p1}, Lj$/time/chrono/l;->m()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chronology mismatch, required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", actual: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static U(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/f;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 6

    .line 0
    const-string v0, "localDateTime"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_0

    new-instance p1, Lj$/time/chrono/k;

    move-object v0, p0

    check-cast v0, Lj$/time/ZoneOffset;

    invoke-direct {p1, p0, v0, p2}, Lj$/time/chrono/k;-><init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/f;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v0

    invoke-static {p2}, Lj$/time/LocalDateTime;->T(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/zone/f;->g(Lj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneOffset;

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v1}, Lj$/time/zone/f;->f(Lj$/time/LocalDateTime;)Lj$/time/zone/b;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/zone/b;->r()Lj$/time/e;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/e;->p()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lj$/time/chrono/f;->W(J)Lj$/time/chrono/f;

    move-result-object p2

    invoke-virtual {p1}, Lj$/time/zone/b;->s()Lj$/time/ZoneOffset;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lj$/time/chrono/k;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/chrono/k;-><init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/f;)V

    return-object v0
.end method

.method static V(Lj$/time/chrono/l;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/k;
    .locals 3

    invoke-virtual {p2}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v0

    const-string v1, "offset"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lj$/time/Instant;->U()J

    move-result-wide v1

    invoke-virtual {p1}, Lj$/time/Instant;->V()I

    move-result p1

    invoke-static {v1, v2, p1, v0}, Lj$/time/LocalDateTime;->g0(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/time/chrono/l;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/d;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/f;

    new-instance p1, Lj$/time/chrono/k;

    invoke-direct {p1, p2, v0, p0}, Lj$/time/chrono/k;-><init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/f;)V

    return-object p1
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

    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic A(Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/h;->l(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic C(Lj$/time/chrono/ChronoZonedDateTime;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/h;->d(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public final F()Lj$/time/chrono/d;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/k;->a:Lj$/time/chrono/f;

    return-object v0
.end method

.method public final K(Lj$/time/ZoneOffset;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2

    .line 0
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lj$/time/chrono/k;->c:Lj$/time/ZoneId;

    invoke-virtual {v0, p1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/k;->a:Lj$/time/chrono/f;

    iget-object v1, p0, Lj$/time/chrono/k;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/chrono/f;->Y(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object v0

    .line 0
    invoke-virtual {p0}, Lj$/time/chrono/k;->a()Lj$/time/chrono/l;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lj$/time/chrono/k;->V(Lj$/time/chrono/l;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final synthetic R()J
    .locals 2

    invoke-static {p0}, Lj$/time/chrono/h;->o(Lj$/time/chrono/ChronoZonedDateTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final T(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lj$/time/chrono/k;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/l;->b(Lj$/time/temporal/Temporal;JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/k;->S(Lj$/time/chrono/l;Lj$/time/temporal/Temporal;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final W(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1

    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/k;->a:Lj$/time/chrono/f;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/chrono/f;->V(JLj$/time/temporal/r;)Lj$/time/chrono/f;

    move-result-object p1

    .line 0
    invoke-virtual {p0}, Lj$/time/chrono/k;->a()Lj$/time/chrono/l;

    move-result-object p2

    .line 0
    invoke-virtual {p1, p0}, Lj$/time/chrono/f;->C(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 0
    invoke-static {p2, p1}, Lj$/time/chrono/k;->S(Lj$/time/chrono/l;Lj$/time/temporal/Temporal;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1

    .line 0
    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/k;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/r;->n(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/k;->S(Lj$/time/chrono/l;Lj$/time/temporal/Temporal;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lj$/time/chrono/l;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lj$/time/chrono/k;->b()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->a()Lj$/time/chrono/l;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lj$/time/chrono/k;->F()Lj$/time/chrono/d;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/f;

    invoke-virtual {v0}, Lj$/time/chrono/f;->b()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;
    .locals 5

    .line 0
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    sget-object v1, Lj$/time/chrono/j;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lj$/time/chrono/k;->c:Lj$/time/ZoneId;

    iget-object v4, p0, Lj$/time/chrono/k;->a:Lj$/time/chrono/f;

    if-eq v1, v2, :cond_0

    invoke-virtual {v4, p1, p2, p3}, Lj$/time/chrono/f;->Z(JLj$/time/temporal/p;)Lj$/time/chrono/f;

    move-result-object p1

    iget-object p2, p0, Lj$/time/chrono/k;->b:Lj$/time/ZoneOffset;

    invoke-static {v3, p2, p1}, Lj$/time/chrono/k;->U(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/f;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->S(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->f0(I)Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {v4, p1}, Lj$/time/chrono/f;->Y(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object p1

    .line 0
    invoke-virtual {p0}, Lj$/time/chrono/k;->a()Lj$/time/chrono/l;

    move-result-object p2

    invoke-static {p2, p1, v3}, Lj$/time/chrono/k;->V(Lj$/time/chrono/l;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/k;

    move-result-object p1

    goto :goto_0

    .line 0
    :cond_1
    invoke-static {p0}, Lj$/time/chrono/h;->o(Lj$/time/chrono/ChronoZonedDateTime;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 0
    sget-object p3, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/k;->W(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lj$/time/chrono/k;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/p;->v(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/k;->S(Lj$/time/chrono/l;Lj$/time/temporal/Temporal;)Lj$/time/chrono/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lj$/time/chrono/ChronoZonedDateTime;

    invoke-virtual {p0, p1}, Lj$/time/chrono/k;->C(Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/k;->W(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/Temporal;Lj$/time/temporal/r;)J
    .locals 1

    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj$/time/chrono/k;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/l;->x(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/k;->b:Lj$/time/ZoneOffset;

    invoke-interface {p1, v0}, Lj$/time/chrono/ChronoZonedDateTime;->K(Lj$/time/ZoneOffset;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->F()Lj$/time/chrono/d;

    move-result-object p1

    iget-object v0, p0, Lj$/time/chrono/k;->a:Lj$/time/chrono/f;

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/f;->e(Lj$/time/temporal/Temporal;Lj$/time/temporal/r;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string v0, "unit"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2, p0, p1}, Lj$/time/temporal/r;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/chrono/ChronoZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/chrono/ChronoZonedDateTime;

    .line 0
    invoke-static {p0, p1}, Lj$/time/chrono/h;->d(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    if-nez p1, :cond_1

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

.method public final getOffset()Lj$/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/k;->b:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lj$/time/chrono/k;->a:Lj$/time/chrono/f;

    invoke-virtual {v0}, Lj$/time/chrono/f;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/chrono/k;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/chrono/k;->c:Lj$/time/ZoneId;

    invoke-virtual {v1}, Lj$/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2

    iget-object v0, p0, Lj$/time/chrono/k;->a:Lj$/time/chrono/f;

    iget-object v1, p0, Lj$/time/chrono/k;->b:Lj$/time/ZoneOffset;

    invoke-static {p1, v1, v0}, Lj$/time/chrono/k;->U(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/f;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic n(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/k;->T(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic p(Lj$/time/temporal/p;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/h;->e(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final r(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lj$/time/chrono/k;->a()Lj$/time/chrono/l;

    move-result-object v0

    .line 0
    invoke-virtual {p1, p0}, Lj$/time/LocalDate;->C(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 0
    invoke-static {v0, p1}, Lj$/time/chrono/k;->S(Lj$/time/chrono/l;Lj$/time/temporal/Temporal;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 1

    .line 0
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/k;->F()Lj$/time/chrono/d;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/f;

    invoke-virtual {v0, p1}, Lj$/time/chrono/f;->s(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->n()Lj$/time/temporal/t;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->A(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/t;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final t()Lj$/time/ZoneId;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/k;->c:Lj$/time/ZoneId;

    return-object v0
.end method

.method public final toInstant()Lj$/time/Instant;
    .locals 4

    .line 0
    invoke-virtual {p0}, Lj$/time/chrono/k;->R()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/chrono/k;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->W()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->X(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final toLocalTime()Lj$/time/LocalTime;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lj$/time/chrono/k;->F()Lj$/time/chrono/d;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/f;

    invoke-virtual {v0}, Lj$/time/chrono/f;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lj$/time/chrono/k;->a:Lj$/time/chrono/f;

    invoke-virtual {v0}, Lj$/time/chrono/f;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/chrono/k;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lj$/time/chrono/k;->c:Lj$/time/ZoneId;

    if-eq v1, v2, :cond_0

    invoke-virtual {v2}, Lj$/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final v(Lj$/time/temporal/p;)J
    .locals 2

    .line 0
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

    invoke-virtual {p0}, Lj$/time/chrono/k;->F()Lj$/time/chrono/d;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/f;

    invoke-virtual {v0, p1}, Lj$/time/chrono/f;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/k;->getOffset()Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->c0()I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lj$/time/chrono/k;->R()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->r(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/k;->a:Lj$/time/chrono/f;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/time/chrono/k;->b:Lj$/time/ZoneOffset;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/time/chrono/k;->c:Lj$/time/ZoneId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
