.class public final Lj$/time/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/m;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final a:Lj$/time/LocalTime;

.field private final b:Lj$/time/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lj$/time/LocalTime;->e:Lj$/time/LocalTime;

    sget-object v1, Lj$/time/ZoneOffset;->g:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {v0, v1}, Lj$/time/q;->S(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/q;

    .line 0
    sget-object v0, Lj$/time/LocalTime;->f:Lj$/time/LocalTime;

    sget-object v1, Lj$/time/ZoneOffset;->f:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {v0, v1}, Lj$/time/q;->S(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/q;

    return-void
.end method

.method private constructor <init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "time"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/LocalTime;

    iput-object p1, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    const-string p1, "offset"

    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneOffset;

    iput-object p1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    return-void
.end method

.method public static S(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/q;
    .locals 1

    new-instance v0, Lj$/time/q;

    invoke-direct {v0, p0, p1}, Lj$/time/q;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method static U(Ljava/io/ObjectInput;)Lj$/time/q;
    .locals 2

    invoke-static {p0}, Lj$/time/LocalTime;->g0(Ljava/io/DataInput;)Lj$/time/LocalTime;

    move-result-object v0

    invoke-static {p0}, Lj$/time/ZoneOffset;->h0(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object p0

    .line 0
    new-instance v1, Lj$/time/q;

    invoke-direct {v1, v0, p0}, Lj$/time/q;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

    return-object v1
.end method

.method private V()J
    .locals 6

    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->h0()J

    move-result-wide v0

    iget-object v2, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v2}, Lj$/time/ZoneOffset;->c0()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private W(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/q;
    .locals 1

    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/q;

    invoke-direct {v0, p1, p2}, Lj$/time/q;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

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

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lj$/time/temporal/l;->i()Lj$/time/temporal/q;

    move-result-object v0

    if-eq p1, v0, :cond_7

    invoke-static {}, Lj$/time/temporal/l;->k()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lj$/time/temporal/l;->l()Lj$/time/temporal/q;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v3

    if-ne p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    or-int/2addr v0, v1

    if-nez v0, :cond_6

    invoke-static {}, Lj$/time/temporal/l;->f()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lj$/time/temporal/l;->g()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

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
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_7
    :goto_2
    iget-object p1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    return-object p1
.end method

.method public final C(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    invoke-virtual {v1}, Lj$/time/LocalTime;->h0()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->c0()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final T(JLj$/time/temporal/r;)Lj$/time/q;
    .locals 1

    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalTime;->b0(JLj$/time/temporal/r;)Lj$/time/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lj$/time/q;->W(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/q;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/r;->n(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/q;

    return-object p1
.end method

.method public final c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;
    .locals 2

    .line 0
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    if-ne p3, v0, :cond_0

    check-cast p3, Lj$/time/temporal/a;

    invoke-virtual {p3, p1, p2}, Lj$/time/temporal/a;->S(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->f0(I)Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lj$/time/q;->W(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/q;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lj$/time/LocalTime;->j0(JLj$/time/temporal/p;)Lj$/time/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lj$/time/q;->W(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/q;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/p;->v(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/q;

    :goto_0
    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lj$/time/q;

    .line 0
    iget-object v0, p1, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    iget-object v1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v0}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    iget-object v2, p1, Lj$/time/q;->a:Lj$/time/LocalTime;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Lj$/time/LocalTime;->S(Lj$/time/LocalTime;)I

    move-result p1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lj$/time/q;->V()J

    move-result-wide v3

    invoke-direct {p1}, Lj$/time/q;->V()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/q;->T(JLj$/time/temporal/r;)Lj$/time/q;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/Temporal;Lj$/time/temporal/r;)J
    .locals 4

    .line 0
    instance-of v0, p1, Lj$/time/q;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/q;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lj$/time/LocalTime;->U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalTime;

    move-result-object v0

    invoke-static {p1}, Lj$/time/ZoneOffset;->b0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneOffset;

    move-result-object v1

    new-instance v2, Lj$/time/q;

    invoke-direct {v2, v0, v1}, Lj$/time/q;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V
    :try_end_0
    .catch Lj$/time/c; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 0
    :goto_0
    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_1

    invoke-direct {p1}, Lj$/time/q;->V()J

    move-result-wide v0

    invoke-direct {p0}, Lj$/time/q;->V()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p1, Lj$/time/p;->a:[I

    move-object v2, p2

    check-cast v2, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/s;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported unit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 0
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    :pswitch_0
    const-wide p1, 0x274a48a78000L

    :goto_1
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_1
    const-wide p1, 0x34630b8a000L

    goto :goto_1

    :pswitch_2
    const-wide p1, 0xdf8475800L

    goto :goto_1

    :pswitch_3
    const-wide/32 p1, 0x3b9aca00

    goto :goto_1

    :pswitch_4
    const-wide/32 p1, 0xf4240

    goto :goto_1

    :pswitch_5
    const-wide/16 p1, 0x3e8

    goto :goto_1

    :pswitch_6
    return-wide v0

    :cond_1
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

    const-string v3, "Unable to obtain OffsetTime from TemporalAccessor: "

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/q;

    iget-object v1, p1, Lj$/time/q;->a:Lj$/time/LocalTime;

    iget-object v3, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    invoke-virtual {v3, v1}, Lj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    iget-object p1, p1, Lj$/time/q;->b:Lj$/time/ZoneOffset;

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
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->U()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/p;->s(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

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
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/q;->T(JLj$/time/temporal/r;)Lj$/time/q;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/q;->T(JLj$/time/temporal/r;)Lj$/time/q;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/q;->T(JLj$/time/temporal/r;)Lj$/time/q;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final p(Lj$/time/temporal/p;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final r(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 1

    .line 0
    instance-of v0, p1, Lj$/time/LocalTime;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/LocalTime;

    iget-object v0, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lj$/time/q;->W(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/q;

    move-result-object p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    check-cast p1, Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, p1}, Lj$/time/q;->W(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/q;

    move-result-object p1

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lj$/time/q;

    if-eqz v0, :cond_2

    :goto_0
    check-cast p1, Lj$/time/q;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {p1, p0}, Lj$/time/chrono/h;->a(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method public final s(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->n()Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {v0, p1}, Lj$/time/temporal/l;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 0
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->A(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

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
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->c0()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->r(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->k0(Ljava/io/DataOutput;)V

    iget-object v0, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->i0(Ljava/io/DataOutput;)V

    return-void
.end method
