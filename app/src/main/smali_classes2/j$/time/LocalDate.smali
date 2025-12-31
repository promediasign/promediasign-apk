.class public final Lj$/time/LocalDate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/m;
.implements Lj$/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/LocalDate;

.field public static final e:Lj$/time/LocalDate;

.field private static final serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final a:I

.field private final b:S

.field private final c:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    const/16 v0, 0xc

    const/16 v2, 0x1f

    const v3, 0x3b9ac9ff

    invoke-static {v3, v0, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDate;->e:Lj$/time/LocalDate;

    const/16 v0, 0x7b2

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/time/LocalDate;->a:I

    int-to-short p1, p2

    iput-short p1, p0, Lj$/time/LocalDate;->b:S

    int-to-short p1, p3

    iput-short p1, p0, Lj$/time/LocalDate;->c:S

    return-void
.end method

.method private static T(III)Lj$/time/LocalDate;
    .locals 5

    const/16 v0, 0x1c

    if-le p2, v0, :cond_4

    const/4 v1, 0x2

    const/16 v2, 0x1d

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0

    :cond_1
    sget-object v1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    int-to-long v3, p0

    invoke-virtual {v1, v3, v4}, Lj$/time/chrono/s;->P(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1d

    :cond_2
    :goto_0
    if-le p2, v0, :cond_4

    if-ne p2, v2, :cond_3

    new-instance p1, Lj$/time/c;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid date \'February 29\' as \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a leap year"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    :cond_3
    new-instance p0, Lj$/time/c;

    invoke-static {p1}, Lj$/time/l;->V(I)Lj$/time/l;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid date \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p0

    :cond_4
    new-instance v0, Lj$/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/LocalDate;-><init>(III)V

    return-object v0
.end method

.method public static U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;
    .locals 4

    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lj$/time/temporal/l;->f()Lj$/time/temporal/q;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lj$/time/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain LocalDate from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0
.end method

.method private V(Lj$/time/temporal/p;)I
    .locals 4

    sget-object v0, Lj$/time/h;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-short v1, p0, Lj$/time/LocalDate;->c:S

    iget v2, p0, Lj$/time/LocalDate;->a:I

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/time/temporal/s;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0

    :pswitch_0
    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_1
    return v2

    :pswitch_2
    new-instance p1, Lj$/time/temporal/s;

    .line 0
    const-string v0, "Invalid field \'ProlepticMonth\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    :pswitch_3
    iget-short p1, p0, Lj$/time/LocalDate;->b:S

    return p1

    :pswitch_4
    invoke-virtual {p0}, Lj$/time/LocalDate;->W()I

    move-result p1

    sub-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v3

    return p1

    :pswitch_5
    new-instance p1, Lj$/time/temporal/s;

    .line 0
    const-string v0, "Invalid field \'EpochDay\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    :pswitch_6
    invoke-virtual {p0}, Lj$/time/LocalDate;->W()I

    move-result p1

    sub-int/2addr p1, v3

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v3

    return p1

    :pswitch_7
    sub-int/2addr v1, v3

    rem-int/lit8 v1, v1, 0x7

    :goto_1
    add-int/2addr v1, v3

    return v1

    :pswitch_8
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/DayOfWeek;->getValue()I

    move-result p1

    return p1

    :pswitch_9
    if-lt v2, v3, :cond_1

    goto :goto_2

    :cond_1
    rsub-int/lit8 v2, v2, 0x1

    :goto_2
    return v2

    :pswitch_a
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x7

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lj$/time/LocalDate;->W()I

    move-result p1

    return p1

    :pswitch_c
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private X()J
    .locals 4

    iget v0, p0, Lj$/time/LocalDate;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v2, p0, Lj$/time/LocalDate;->b:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private a0(Lj$/time/LocalDate;)J
    .locals 8

    invoke-direct {p0}, Lj$/time/LocalDate;->X()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    invoke-direct {p1}, Lj$/time/LocalDate;->X()J

    move-result-wide v4

    mul-long v4, v4, v2

    invoke-virtual {p1}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result p1

    int-to-long v6, p1

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    div-long/2addr v4, v2

    return-wide v4
.end method

.method public static b0(Lj$/time/b;)Lj$/time/LocalDate;
    .locals 4

    const-string v0, "clock"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj$/time/b;->b()Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/b;->a()Lj$/time/ZoneId;

    move-result-object p0

    .line 0
    const-string v1, "instant"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "zone"

    invoke-static {p0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object p0

    invoke-virtual {v0}, Lj$/time/Instant;->U()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/ZoneOffset;->c0()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    const p0, 0x15180

    int-to-long v2, p0

    .line 0
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->k(JJ)J

    move-result-wide v0

    .line 0
    invoke-static {v0, v1}, Lj$/time/LocalDate;->d0(J)Lj$/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static c0(ILj$/time/l;I)Lj$/time/LocalDate;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->T(J)V

    const-string v0, "month"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->T(J)V

    invoke-virtual {p1}, Lj$/time/l;->getValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lj$/time/LocalDate;->T(III)Lj$/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static d0(J)Lj$/time/LocalDate;
    .locals 22

    move-wide/from16 v0, p0

    sget-object v2, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-virtual {v2, v0, v1}, Lj$/time/temporal/a;->T(J)V

    const-wide/32 v2, 0xafa6c

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    const-wide/32 v6, 0x23ab1

    const-wide/16 v8, 0x190

    const-wide/16 v10, 0x0

    cmp-long v12, v2, v10

    if-gez v12, :cond_0

    const-wide/32 v12, 0xafa6d

    add-long/2addr v0, v12

    div-long/2addr v0, v6

    sub-long/2addr v0, v4

    mul-long v12, v0, v8

    neg-long v0, v0

    mul-long v0, v0, v6

    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    move-wide v12, v10

    :goto_0
    mul-long v0, v2, v8

    const-wide/16 v14, 0x24f

    add-long/2addr v0, v14

    div-long/2addr v0, v6

    const-wide/16 v6, 0x16d

    mul-long v14, v0, v6

    const-wide/16 v16, 0x4

    div-long v18, v0, v16

    add-long v18, v18, v14

    const-wide/16 v14, 0x64

    div-long v20, v0, v14

    sub-long v18, v18, v20

    div-long v20, v0, v8

    add-long v20, v20, v18

    sub-long v18, v2, v20

    cmp-long v20, v18, v10

    if-gez v20, :cond_1

    sub-long/2addr v0, v4

    mul-long v6, v6, v0

    div-long v4, v0, v16

    add-long/2addr v4, v6

    div-long v6, v0, v14

    sub-long/2addr v4, v6

    div-long v6, v0, v8

    add-long/2addr v6, v4

    sub-long v18, v2, v6

    :cond_1
    move-wide/from16 v2, v18

    add-long/2addr v0, v12

    long-to-int v3, v2

    mul-int/lit8 v2, v3, 0x5

    add-int/lit8 v2, v2, 0x2

    div-int/lit16 v2, v2, 0x99

    add-int/lit8 v4, v2, 0x2

    rem-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v5, v2, 0x132

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v2, v2, 0xa

    int-to-long v5, v2

    add-long/2addr v0, v5

    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v2, v0, v1}, Lj$/time/temporal/a;->S(J)I

    move-result v0

    new-instance v1, Lj$/time/LocalDate;

    invoke-direct {v1, v0, v4, v3}, Lj$/time/LocalDate;-><init>(III)V

    return-object v1
.end method

.method public static e0(II)Lj$/time/LocalDate;
    .locals 5

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->T(J)V

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lj$/time/temporal/a;->T(J)V

    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/s;->P(J)Z

    move-result v0

    const/16 v1, 0x16e

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lj$/time/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid date \'DayOfYear 366\' as \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a leap year"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    :cond_1
    :goto_0
    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lj$/time/l;->V(I)Lj$/time/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/l;->S(Z)I

    move-result v2

    invoke-virtual {v1, v0}, Lj$/time/l;->T(Z)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_2

    invoke-virtual {v1}, Lj$/time/l;->W()Lj$/time/l;

    move-result-object v1

    :cond_2
    invoke-virtual {v1, v0}, Lj$/time/l;->S(Z)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    new-instance v0, Lj$/time/LocalDate;

    invoke-virtual {v1}, Lj$/time/l;->getValue()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lj$/time/LocalDate;-><init>(III)V

    return-object v0
.end method

.method private static j0(III)Lj$/time/LocalDate;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_1
    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/s;->P(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    :goto_1
    new-instance v0, Lj$/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/LocalDate;-><init>(III)V

    return-object v0
.end method

.method public static of(III)Lj$/time/LocalDate;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->T(J)V

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->T(J)V

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->T(J)V

    invoke-static {p0, p1, p2}, Lj$/time/LocalDate;->T(III)Lj$/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;
    .locals 1

    sget-object v0, Lj$/time/format/DateTimeFormatter;->h:Lj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;
    .locals 2

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lj$/time/g;

    const/4 v1, 0x0

    .line 0
    invoke-direct {v0, v1}, Lj$/time/g;-><init>(I)V

    .line 0
    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->e(Ljava/lang/CharSequence;Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/time/LocalDate;

    return-object p0
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

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/time/temporal/l;->f()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/h;->j(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final C(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/h;->a(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final D()Lj$/time/chrono/m;
    .locals 2

    .line 0
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lj$/time/chrono/t;->CE:Lj$/time/chrono/t;

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/time/chrono/t;->BCE:Lj$/time/chrono/t;

    :goto_0
    return-object v0
.end method

.method public final H()Z
    .locals 3

    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    iget v1, p0, Lj$/time/LocalDate;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/s;->P(J)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic L(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    check-cast p3, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->Z(JLj$/time/temporal/ChronoUnit;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final N()I
    .locals 1

    invoke-virtual {p0}, Lj$/time/LocalDate;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public final O(Lj$/time/chrono/ChronoLocalDate;)I
    .locals 1

    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/LocalDate;

    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->S(Lj$/time/LocalDate;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/h;->b(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method final S(Lj$/time/LocalDate;)I
    .locals 2

    iget v0, p1, Lj$/time/LocalDate;->a:I

    iget v1, p0, Lj$/time/LocalDate;->a:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    iget-short v0, p0, Lj$/time/LocalDate;->b:S

    iget-short v1, p1, Lj$/time/LocalDate;->b:S

    sub-int v1, v0, v1

    if-nez v1, :cond_0

    iget-short v0, p0, Lj$/time/LocalDate;->c:S

    iget-short p1, p1, Lj$/time/LocalDate;->c:S

    sub-int v1, v0, p1

    :cond_0
    return v1
.end method

.method public final W()I
    .locals 2

    .line 0
    iget-short v0, p0, Lj$/time/LocalDate;->b:S

    invoke-static {v0}, Lj$/time/l;->V(I)Lj$/time/l;

    move-result-object v0

    .line 0
    invoke-virtual {p0}, Lj$/time/LocalDate;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Lj$/time/l;->S(Z)I

    move-result v0

    iget-short v1, p0, Lj$/time/LocalDate;->c:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final Y()I
    .locals 2

    const/4 v0, 0x2

    iget-short v1, p0, Lj$/time/LocalDate;->b:S

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    const/16 v0, 0x1f

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0

    :cond_1
    invoke-virtual {p0}, Lj$/time/LocalDate;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    :goto_0
    return v0
.end method

.method public final Z(JLj$/time/temporal/ChronoUnit;)Lj$/time/LocalDate;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->f0(JLj$/time/temporal/r;)Lj$/time/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/LocalDate;->f0(JLj$/time/temporal/r;)Lj$/time/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->f0(JLj$/time/temporal/r;)Lj$/time/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final a()Lj$/time/chrono/l;
    .locals 1

    .line 0
    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    return-object v0
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->k0(JLj$/time/temporal/p;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->k0(JLj$/time/temporal/p;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/ChronoLocalDate;

    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->O(Lj$/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->f0(JLj$/time/temporal/r;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->f0(JLj$/time/temporal/r;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/Temporal;Lj$/time/temporal/r;)J
    .locals 2

    invoke-static {p1}, Lj$/time/LocalDate;->U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object p1

    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/h;->b:[I

    move-object v1, p2

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

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
    sget-object p2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p1, p2}, Lj$/time/LocalDate;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    invoke-virtual {p0, p2}, Lj$/time/LocalDate;->v(Lj$/time/temporal/p;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    :pswitch_1
    invoke-direct {p0, p1}, Lj$/time/LocalDate;->a0(Lj$/time/LocalDate;)J

    move-result-wide p1

    const-wide/16 v0, 0x2ee0

    :goto_0
    div-long/2addr p1, v0

    return-wide p1

    :pswitch_2
    invoke-direct {p0, p1}, Lj$/time/LocalDate;->a0(Lj$/time/LocalDate;)J

    move-result-wide p1

    const-wide/16 v0, 0x4b0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lj$/time/LocalDate;->a0(Lj$/time/LocalDate;)J

    move-result-wide p1

    const-wide/16 v0, 0x78

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lj$/time/LocalDate;->a0(Lj$/time/LocalDate;)J

    move-result-wide p1

    const-wide/16 v0, 0xc

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lj$/time/LocalDate;->a0(Lj$/time/LocalDate;)J

    move-result-wide p1

    return-wide p1

    .line 0
    :pswitch_6
    invoke-virtual {p1}, Lj$/time/LocalDate;->w()J

    move-result-wide p1

    invoke-virtual {p0}, Lj$/time/LocalDate;->w()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lj$/time/LocalDate;->w()J

    move-result-wide p1

    invoke-virtual {p0}, Lj$/time/LocalDate;->w()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1

    .line 0
    :cond_0
    invoke-interface {p2, p0, p1}, Lj$/time/temporal/r;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
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
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/LocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/LocalDate;

    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->S(Lj$/time/LocalDate;)I

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
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/h;->h(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/p;)Z

    move-result p1

    return p1
.end method

.method public final f0(JLj$/time/temporal/r;)Lj$/time/LocalDate;
    .locals 2

    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/h;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/s;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported unit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 0
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    :pswitch_0
    sget-object p3, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/LocalDate;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/com/android/tools/r8/a;->f(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->k0(JLj$/time/temporal/p;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p3, 0x3e8

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->l(JJ)J

    move-result-wide p1

    .line 0
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->i0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0x64

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->l(JJ)J

    move-result-wide p1

    .line 0
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->i0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0xa

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->l(JJ)J

    move-result-wide p1

    .line 0
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->i0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->i0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->g0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->h0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/r;->n(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/LocalDate;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g0(J)Lj$/time/LocalDate;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lj$/time/LocalDate;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v2, p0, Lj$/time/LocalDate;->b:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-long/2addr v0, p1

    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    const/16 p2, 0xc

    int-to-long v2, p2

    .line 0
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->k(JJ)J

    move-result-wide v4

    .line 0
    invoke-virtual {p1, v4, v5}, Lj$/time/temporal/a;->S(J)I

    move-result p1

    .line 0
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->j(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 0
    iget-short v0, p0, Lj$/time/LocalDate;->c:S

    invoke-static {p1, p2, v0}, Lj$/time/LocalDate;->j0(III)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-short v0, p0, Lj$/time/LocalDate;->c:S

    return v0
.end method

.method public getDayOfWeek()Lj$/time/DayOfWeek;
    .locals 4

    invoke-virtual {p0}, Lj$/time/LocalDate;->w()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    int-to-long v2, v2

    .line 0
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->j(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 0
    invoke-static {v1}, Lj$/time/DayOfWeek;->S(I)Lj$/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    iget-short v0, p0, Lj$/time/LocalDate;->b:S

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lj$/time/LocalDate;->a:I

    return v0
.end method

.method public final h0(J)Lj$/time/LocalDate;
    .locals 2

    const/4 v0, 0x7

    int-to-long v0, v0

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->l(JJ)J

    move-result-wide p1

    .line 0
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lj$/time/LocalDate;->a:I

    and-int/lit16 v1, v0, -0x800

    shl-int/lit8 v0, v0, 0xb

    iget-short v2, p0, Lj$/time/LocalDate;->b:S

    shl-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    iget-short v2, p0, Lj$/time/LocalDate;->c:S

    add-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i(Lj$/time/r;)Lj$/time/chrono/ChronoLocalDate;
    .locals 3

    .line 0
    instance-of v0, p1, Lj$/time/r;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj$/time/r;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->g0(J)Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/r;->b()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lj$/time/r;->a(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/LocalDate;

    :goto_0
    return-object p1
.end method

.method public final i0(J)Lj$/time/LocalDate;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/LocalDate;->a:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->S(J)I

    move-result p1

    iget-short p2, p0, Lj$/time/LocalDate;->b:S

    iget-short v0, p0, Lj$/time/LocalDate;->c:S

    invoke-static {p1, p2, v0}, Lj$/time/LocalDate;->j0(III)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public isAfter(Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/LocalDate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/LocalDate;

    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->S(Lj$/time/LocalDate;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 0
    :cond_1
    invoke-virtual {p0}, Lj$/time/LocalDate;->w()J

    move-result-wide v3

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->w()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isBefore(Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/LocalDate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/LocalDate;

    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->S(Lj$/time/LocalDate;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 0
    :cond_1
    invoke-virtual {p0}, Lj$/time/LocalDate;->w()J

    move-result-wide v3

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->w()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final bridge synthetic k(Lj$/time/temporal/m;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->l0(Lj$/time/temporal/m;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final k0(JLj$/time/temporal/p;)Lj$/time/LocalDate;
    .locals 5

    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_4

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->T(J)V

    sget-object v1, Lj$/time/h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    iget-short v1, p0, Lj$/time/LocalDate;->c:S

    iget-short v2, p0, Lj$/time/LocalDate;->b:S

    const/4 v3, 0x1

    iget v4, p0, Lj$/time/LocalDate;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/s;

    const-string p2, "Unsupported field: "

    .line 0
    invoke-static {p2, p3}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p2

    .line 0
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    :pswitch_0
    sget-object p3, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/LocalDate;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-nez p3, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lj$/time/LocalDate;->n0(I)Lj$/time/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_1
    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lj$/time/LocalDate;->n0(I)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-direct {p0}, Lj$/time/LocalDate;->X()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->g0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_3
    long-to-int p2, p1

    if-ne v2, p2, :cond_1

    move-object p1, p0

    goto :goto_1

    .line 0
    :cond_1
    sget-object p1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Lj$/time/temporal/a;->T(J)V

    invoke-static {v4, p2, v1}, Lj$/time/LocalDate;->j0(III)Lj$/time/LocalDate;

    move-result-object p1

    :goto_1
    return-object p1

    .line 0
    :pswitch_4
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/LocalDate;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->h0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p1, p2}, Lj$/time/LocalDate;->d0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_6
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/LocalDate;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_7
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/LocalDate;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object p3

    invoke-virtual {p3}, Lj$/time/DayOfWeek;->getValue()I

    move-result p3

    int-to-long v0, p3

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_9
    if-lt v4, v3, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x1

    sub-long p1, v0, p1

    :goto_2
    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lj$/time/LocalDate;->n0(I)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_a
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/LocalDate;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->h0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_b
    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lj$/time/LocalDate;->m0(I)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_c
    long-to-int p2, p1

    if-ne v1, p2, :cond_3

    move-object p1, p0

    goto :goto_3

    .line 0
    :cond_3
    invoke-static {v4, v2, p2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p1

    :goto_3
    return-object p1

    .line 0
    :cond_4
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/p;->v(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/LocalDate;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l0(Lj$/time/temporal/m;)Lj$/time/LocalDate;
    .locals 1

    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/LocalDate;

    return-object p1

    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/m;->C(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/LocalDate;

    return-object p1
.end method

.method public final m0(I)Lj$/time/LocalDate;
    .locals 1

    invoke-virtual {p0}, Lj$/time/LocalDate;->W()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lj$/time/LocalDate;->a:I

    invoke-static {v0, p1}, Lj$/time/LocalDate;->e0(II)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic n(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->Z(JLj$/time/temporal/ChronoUnit;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final n0(I)Lj$/time/LocalDate;
    .locals 3

    iget v0, p0, Lj$/time/LocalDate;->a:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->T(J)V

    iget-short v0, p0, Lj$/time/LocalDate;->b:S

    iget-short v1, p0, Lj$/time/LocalDate;->c:S

    invoke-static {p1, v0, v1}, Lj$/time/LocalDate;->j0(III)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method final o0(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lj$/time/LocalDate;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-short v0, p0, Lj$/time/LocalDate;->b:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-short v0, p0, Lj$/time/LocalDate;->c:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public final p(Lj$/time/temporal/p;)I
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lj$/time/LocalDate;->V(Lj$/time/temporal/p;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public plusDays(J)Lj$/time/LocalDate;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    iget-short v2, p0, Lj$/time/LocalDate;->c:S

    int-to-long v2, v2

    add-long/2addr v2, p1

    cmp-long v4, v2, v0

    if-lez v4, :cond_4

    const-wide/16 v0, 0x1c

    iget-short v4, p0, Lj$/time/LocalDate;->b:S

    iget v5, p0, Lj$/time/LocalDate;->a:I

    cmp-long v6, v2, v0

    if-gtz v6, :cond_1

    new-instance p1, Lj$/time/LocalDate;

    long-to-int p2, v2

    invoke-direct {p1, v5, v4, p2}, Lj$/time/LocalDate;-><init>(III)V

    return-object p1

    :cond_1
    const-wide/16 v0, 0x3b

    cmp-long v6, v2, v0

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lj$/time/LocalDate;->Y()I

    move-result p1

    int-to-long p1, p1

    cmp-long v0, v2, p1

    if-gtz v0, :cond_2

    new-instance p1, Lj$/time/LocalDate;

    long-to-int p2, v2

    invoke-direct {p1, v5, v4, p2}, Lj$/time/LocalDate;-><init>(III)V

    return-object p1

    :cond_2
    const/16 v0, 0xc

    const/4 v1, 0x1

    if-ge v4, v0, :cond_3

    new-instance v0, Lj$/time/LocalDate;

    add-int/2addr v4, v1

    sub-long/2addr v2, p1

    long-to-int p1, v2

    invoke-direct {v0, v5, v4, p1}, Lj$/time/LocalDate;-><init>(III)V

    return-object v0

    :cond_3
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    add-int/2addr v5, v1

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lj$/time/temporal/a;->T(J)V

    new-instance v0, Lj$/time/LocalDate;

    sub-long/2addr v2, p1

    long-to-int p1, v2

    invoke-direct {v0, v5, v1, p1}, Lj$/time/LocalDate;-><init>(III)V

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lj$/time/LocalDate;->w()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/com/android/tools/r8/a;->f(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lj$/time/LocalDate;->d0(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic r(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->l0(Lj$/time/temporal/m;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 4

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->C()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lj$/time/h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->n()Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result p1

    if-gtz p1, :cond_1

    const-wide/32 v0, 0x3b9aca00

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/t;->j(JJ)Lj$/time/temporal/t;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-wide/32 v0, 0x3b9ac9ff

    goto :goto_0

    :goto_1
    return-object p1

    .line 0
    :cond_2
    iget-short p1, p0, Lj$/time/LocalDate;->b:S

    invoke-static {p1}, Lj$/time/l;->V(I)Lj$/time/l;

    move-result-object p1

    .line 0
    sget-object v0, Lj$/time/l;->FEBRUARY:Lj$/time/l;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lj$/time/LocalDate;->H()Z

    move-result p1

    if-nez p1, :cond_3

    const-wide/16 v0, 0x4

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x5

    :goto_2
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/t;->j(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lj$/time/LocalDate;->N()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/t;->j(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p0}, Lj$/time/LocalDate;->Y()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/t;->j(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance v0, Lj$/time/temporal/s;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0

    :cond_7
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->A(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lj$/time/LocalDate;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_1

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, -0x2710

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit16 v0, v0, 0x2710

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x270f

    if-le v0, v1, :cond_2

    const/16 v1, 0x2b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, "-"

    const-string v1, "-0"

    iget-short v4, p0, Lj$/time/LocalDate;->b:S

    if-ge v4, v3, :cond_3

    move-object v5, v1

    goto :goto_2

    :cond_3
    move-object v5, v0

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lj$/time/LocalDate;->c:S

    if-ge v4, v3, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lj$/time/temporal/p;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/LocalDate;->w()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lj$/time/LocalDate;->X()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-direct {p0, p1}, Lj$/time/LocalDate;->V(Lj$/time/temporal/p;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->r(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()J
    .locals 12

    iget v0, p0, Lj$/time/LocalDate;->a:I

    int-to-long v0, v0

    iget-short v2, p0, Lj$/time/LocalDate;->b:S

    int-to-long v2, v2

    const-wide/16 v4, 0x16d

    mul-long v4, v4, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_0

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v0, v8

    const-wide/16 v8, 0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    const-wide/16 v6, -0x4

    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    sub-long v0, v4, v0

    :goto_0
    const-wide/16 v4, 0x16f

    mul-long v4, v4, v2

    const-wide/16 v6, 0x16a

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc

    div-long/2addr v4, v6

    add-long/2addr v4, v0

    iget-short v0, p0, Lj$/time/LocalDate;->c:S

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v4, v0

    const-wide/16 v0, 0x2

    cmp-long v6, v2, v0

    if-lez v6, :cond_2

    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    invoke-virtual {p0}, Lj$/time/LocalDate;->H()Z

    move-result v6

    if-nez v6, :cond_1

    sub-long/2addr v4, v0

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :cond_2
    :goto_1
    const-wide/32 v0, 0xafaa8

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public final z(Lj$/time/LocalTime;)Lj$/time/chrono/d;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/time/LocalDateTime;->f0(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method
