.class public final Lj$/time/zone/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5f9acf201199524bL


# instance fields
.field private final a:Lj$/time/l;

.field private final b:B

.field private final c:Lj$/time/DayOfWeek;

.field private final d:Lj$/time/LocalTime;

.field private final e:Z

.field private final f:Lj$/time/zone/d;

.field private final g:Lj$/time/ZoneOffset;

.field private final h:Lj$/time/ZoneOffset;

.field private final i:Lj$/time/ZoneOffset;


# direct methods
.method constructor <init>(Lj$/time/l;ILj$/time/DayOfWeek;Lj$/time/LocalTime;ZLj$/time/zone/d;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/zone/e;->a:Lj$/time/l;

    int-to-byte p1, p2

    iput-byte p1, p0, Lj$/time/zone/e;->b:B

    iput-object p3, p0, Lj$/time/zone/e;->c:Lj$/time/DayOfWeek;

    iput-object p4, p0, Lj$/time/zone/e;->d:Lj$/time/LocalTime;

    iput-boolean p5, p0, Lj$/time/zone/e;->e:Z

    iput-object p6, p0, Lj$/time/zone/e;->f:Lj$/time/zone/d;

    iput-object p7, p0, Lj$/time/zone/e;->g:Lj$/time/ZoneOffset;

    iput-object p8, p0, Lj$/time/zone/e;->h:Lj$/time/ZoneOffset;

    iput-object p9, p0, Lj$/time/zone/e;->i:Lj$/time/ZoneOffset;

    return-void
.end method

.method static b(Ljava/io/DataInput;)Lj$/time/zone/e;
    .locals 14

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1c

    invoke-static {v1}, Lj$/time/l;->V(I)Lj$/time/l;

    move-result-object v3

    const/high16 v1, 0xfc00000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x16

    add-int/lit8 v4, v1, -0x20

    const/high16 v1, 0x380000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x13

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lj$/time/DayOfWeek;->S(I)Lj$/time/DayOfWeek;

    move-result-object v1

    goto :goto_0

    :goto_1
    const v1, 0x7c000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0xe

    invoke-static {}, Lj$/time/zone/d;->values()[Lj$/time/zone/d;

    move-result-object v2

    and-int/lit16 v6, v0, 0x3000

    ushr-int/lit8 v6, v6, 0xc

    aget-object v8, v2, v6

    and-int/lit16 v2, v0, 0xff0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v6, v0, 0xc

    ushr-int/lit8 v6, v6, 0x2

    const/4 v7, 0x3

    and-int/2addr v0, v7

    const/4 v9, 0x0

    const/16 v10, 0x1f

    if-ne v1, v10, :cond_1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v11

    int-to-long v11, v11

    invoke-static {v11, v12}, Lj$/time/LocalTime;->a0(J)Lj$/time/LocalTime;

    move-result-object v11

    goto :goto_2

    :cond_1
    rem-int/lit8 v11, v1, 0x18

    invoke-static {v11, v9}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v11

    :goto_2
    const/16 v12, 0xff

    if-ne v2, v12, :cond_2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    :goto_3
    invoke-static {v2}, Lj$/time/ZoneOffset;->f0(I)Lj$/time/ZoneOffset;

    move-result-object v2

    move-object v12, v2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, -0x80

    mul-int/lit16 v2, v2, 0x384

    goto :goto_3

    :goto_4
    if-ne v6, v7, :cond_3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-static {v2}, Lj$/time/ZoneOffset;->f0(I)Lj$/time/ZoneOffset;

    move-result-object v2

    :goto_5
    move-object v13, v2

    goto :goto_6

    :cond_3
    invoke-virtual {v12}, Lj$/time/ZoneOffset;->c0()I

    move-result v2

    mul-int/lit16 v6, v6, 0x708

    add-int/2addr v6, v2

    invoke-static {v6}, Lj$/time/ZoneOffset;->f0(I)Lj$/time/ZoneOffset;

    move-result-object v2

    goto :goto_5

    :goto_6
    if-ne v0, v7, :cond_4

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lj$/time/ZoneOffset;->f0(I)Lj$/time/ZoneOffset;

    move-result-object p0

    goto :goto_7

    :cond_4
    invoke-virtual {v12}, Lj$/time/ZoneOffset;->c0()I

    move-result p0

    mul-int/lit16 v0, v0, 0x708

    add-int/2addr v0, p0

    invoke-static {v0}, Lj$/time/ZoneOffset;->f0(I)Lj$/time/ZoneOffset;

    move-result-object p0

    :goto_7
    const/16 v0, 0x18

    if-ne v1, v0, :cond_5

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_8

    :cond_5
    const/4 v7, 0x0

    .line 0
    :goto_8
    const-string v0, "month"

    invoke-static {v3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-static {v11, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "timeDefnition"

    invoke-static {v8, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "standardOffset"

    invoke-static {v12, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offsetBefore"

    invoke-static {v13, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offsetAfter"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, -0x1c

    if-lt v4, v0, :cond_9

    if-gt v4, v10, :cond_9

    if-eqz v4, :cond_9

    if-eqz v7, :cond_7

    sget-object v0, Lj$/time/LocalTime;->g:Lj$/time/LocalTime;

    invoke-virtual {v11, v0}, Lj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_9

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Time must be midnight when end of day flag is true"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_9
    invoke-virtual {v11}, Lj$/time/LocalTime;->W()I

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lj$/time/zone/e;

    move-object v2, v0

    move-object v6, v11

    move-object v9, v12

    move-object v10, v13

    move-object v11, p0

    invoke-direct/range {v2 .. v11}, Lj$/time/zone/e;-><init>(Lj$/time/l;ILj$/time/DayOfWeek;Lj$/time/LocalTime;ZLj$/time/zone/d;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Time\'s nano-of-second must be zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    new-instance v0, Lj$/time/zone/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/zone/a;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lj$/time/zone/b;
    .locals 7

    iget-object v0, p0, Lj$/time/zone/e;->c:Lj$/time/DayOfWeek;

    const/4 v1, 0x1

    iget-object v2, p0, Lj$/time/zone/e;->a:Lj$/time/l;

    iget-byte v3, p0, Lj$/time/zone/e;->b:B

    if-gez v3, :cond_0

    sget-object v4, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Lj$/time/chrono/s;->P(J)Z

    move-result v4

    invoke-virtual {v2, v4}, Lj$/time/l;->T(Z)I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-static {p1, v2, v4}, Lj$/time/LocalDate;->c0(ILj$/time/l;I)Lj$/time/LocalDate;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 0
    invoke-virtual {v0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    new-instance v2, Lj$/time/temporal/n;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lj$/time/temporal/n;-><init>(II)V

    .line 0
    :goto_0
    invoke-virtual {p1, v2}, Lj$/time/LocalDate;->l0(Lj$/time/temporal/m;)Lj$/time/LocalDate;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {p1, v2, v3}, Lj$/time/LocalDate;->c0(ILj$/time/l;I)Lj$/time/LocalDate;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 0
    invoke-virtual {v0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    new-instance v2, Lj$/time/temporal/n;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lj$/time/temporal/n;-><init>(II)V

    goto :goto_0

    .line 0
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lj$/time/zone/e;->e:Z

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lj$/time/zone/e;->d:Lj$/time/LocalTime;

    invoke-static {p1, v0}, Lj$/time/LocalDateTime;->f0(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lj$/time/zone/e;->f:Lj$/time/zone/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object v2, Lj$/time/zone/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    iget-object v2, p0, Lj$/time/zone/e;->h:Lj$/time/ZoneOffset;

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lj$/time/ZoneOffset;->c0()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/e;->g:Lj$/time/ZoneOffset;

    :goto_2
    invoke-virtual {v1}, Lj$/time/ZoneOffset;->c0()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lj$/time/LocalDateTime;->j0(J)Lj$/time/LocalDateTime;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lj$/time/ZoneOffset;->c0()I

    move-result v0

    sget-object v1, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    goto :goto_2

    .line 0
    :goto_3
    new-instance v0, Lj$/time/zone/b;

    iget-object v1, p0, Lj$/time/zone/e;->i:Lj$/time/ZoneOffset;

    invoke-direct {v0, p1, v2, v1}, Lj$/time/zone/b;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method final c(Ljava/io/DataOutput;)V
    .locals 14

    iget-object v0, p0, Lj$/time/zone/e;->d:Lj$/time/LocalTime;

    iget-boolean v1, p0, Lj$/time/zone/e;->e:Z

    if-eqz v1, :cond_0

    const v2, 0x15180

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj$/time/LocalTime;->i0()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lj$/time/zone/e;->g:Lj$/time/ZoneOffset;

    invoke-virtual {v3}, Lj$/time/ZoneOffset;->c0()I

    move-result v3

    iget-object v4, p0, Lj$/time/zone/e;->h:Lj$/time/ZoneOffset;

    invoke-virtual {v4}, Lj$/time/ZoneOffset;->c0()I

    move-result v5

    sub-int/2addr v5, v3

    iget-object v6, p0, Lj$/time/zone/e;->i:Lj$/time/ZoneOffset;

    invoke-virtual {v6}, Lj$/time/ZoneOffset;->c0()I

    move-result v7

    sub-int/2addr v7, v3

    rem-int/lit16 v8, v2, 0xe10

    const/16 v9, 0x1f

    if-nez v8, :cond_2

    if-eqz v1, :cond_1

    const/16 v0, 0x18

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lj$/time/LocalTime;->getHour()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x1f

    :goto_1
    rem-int/lit16 v1, v3, 0x384

    const/16 v8, 0xff

    if-nez v1, :cond_3

    div-int/lit16 v1, v3, 0x384

    add-int/lit16 v1, v1, 0x80

    goto :goto_2

    :cond_3
    const/16 v1, 0xff

    :goto_2
    const/16 v10, 0xe10

    const/4 v11, 0x3

    const/16 v12, 0x708

    if-eqz v5, :cond_5

    if-eq v5, v12, :cond_5

    if-ne v5, v10, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x3

    goto :goto_4

    :cond_5
    :goto_3
    div-int/2addr v5, v12

    :goto_4
    if-eqz v7, :cond_7

    if-eq v7, v12, :cond_7

    if-ne v7, v10, :cond_6

    goto :goto_5

    :cond_6
    const/4 v7, 0x3

    goto :goto_6

    :cond_7
    :goto_5
    div-int/2addr v7, v12

    :goto_6
    iget-object v10, p0, Lj$/time/zone/e;->c:Lj$/time/DayOfWeek;

    if-nez v10, :cond_8

    const/4 v10, 0x0

    goto :goto_7

    :cond_8
    invoke-virtual {v10}, Lj$/time/DayOfWeek;->getValue()I

    move-result v10

    :goto_7
    iget-object v12, p0, Lj$/time/zone/e;->a:Lj$/time/l;

    invoke-virtual {v12}, Lj$/time/l;->getValue()I

    move-result v12

    shl-int/lit8 v12, v12, 0x1c

    iget-byte v13, p0, Lj$/time/zone/e;->b:B

    add-int/lit8 v13, v13, 0x20

    shl-int/lit8 v13, v13, 0x16

    add-int/2addr v12, v13

    shl-int/lit8 v10, v10, 0x13

    add-int/2addr v12, v10

    shl-int/lit8 v10, v0, 0xe

    add-int/2addr v12, v10

    iget-object v10, p0, Lj$/time/zone/e;->f:Lj$/time/zone/d;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    shl-int/lit8 v10, v10, 0xc

    add-int/2addr v12, v10

    shl-int/lit8 v10, v1, 0x4

    add-int/2addr v12, v10

    shl-int/lit8 v10, v5, 0x2

    add-int/2addr v12, v10

    add-int/2addr v12, v7

    invoke-interface {p1, v12}, Ljava/io/DataOutput;->writeInt(I)V

    if-ne v0, v9, :cond_9

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_9
    if-ne v1, v8, :cond_a

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_a
    if-ne v5, v11, :cond_b

    invoke-virtual {v4}, Lj$/time/ZoneOffset;->c0()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_b
    if-ne v7, v11, :cond_c

    invoke-virtual {v6}, Lj$/time/ZoneOffset;->c0()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_c
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/zone/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/zone/e;

    iget-object v1, p1, Lj$/time/zone/e;->a:Lj$/time/l;

    iget-object v3, p0, Lj$/time/zone/e;->a:Lj$/time/l;

    if-ne v3, v1, :cond_1

    iget-byte v1, p0, Lj$/time/zone/e;->b:B

    iget-byte v3, p1, Lj$/time/zone/e;->b:B

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lj$/time/zone/e;->c:Lj$/time/DayOfWeek;

    iget-object v3, p1, Lj$/time/zone/e;->c:Lj$/time/DayOfWeek;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lj$/time/zone/e;->f:Lj$/time/zone/d;

    iget-object v3, p1, Lj$/time/zone/e;->f:Lj$/time/zone/d;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lj$/time/zone/e;->d:Lj$/time/LocalTime;

    iget-object v3, p1, Lj$/time/zone/e;->d:Lj$/time/LocalTime;

    invoke-virtual {v1, v3}, Lj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lj$/time/zone/e;->e:Z

    iget-boolean v3, p1, Lj$/time/zone/e;->e:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lj$/time/zone/e;->g:Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/e;->g:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v3}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/e;->h:Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/e;->h:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v3}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/e;->i:Lj$/time/ZoneOffset;

    iget-object p1, p1, Lj$/time/zone/e;->i:Lj$/time/ZoneOffset;

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

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/zone/e;->d:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->i0()I

    move-result v0

    iget-boolean v1, p0, Lj$/time/zone/e;->e:Z

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Lj$/time/zone/e;->a:Lj$/time/l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-byte v1, p0, Lj$/time/zone/e;->b:B

    add-int/lit8 v1, v1, 0x20

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/e;->c:Lj$/time/DayOfWeek;

    if-nez v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_0
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/e;->f:Lj$/time/zone/d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lj$/time/zone/e;->g:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/e;->h:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/e;->i:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransitionRule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj$/time/zone/e;->h:Lj$/time/ZoneOffset;

    iget-object v2, p0, Lj$/time/zone/e;->i:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Lj$/time/ZoneOffset;->a0(Lj$/time/ZoneOffset;)I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "Gap "

    goto :goto_0

    :cond_0
    const-string v3, "Overlap "

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    iget-object v2, p0, Lj$/time/zone/e;->a:Lj$/time/l;

    iget-byte v3, p0, Lj$/time/zone/e;->b:B

    iget-object v4, p0, Lj$/time/zone/e;->c:Lj$/time/DayOfWeek;

    if-eqz v4, :cond_3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on or before last day of "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    if-gez v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on or before last day minus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v1, v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on or after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lj$/time/zone/e;->e:Z

    if-eqz v1, :cond_4

    const-string v1, "24:00"

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lj$/time/zone/e;->d:Lj$/time/LocalTime;

    invoke-virtual {v1}, Lj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/e;->f:Lj$/time/zone/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", standard offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/e;->g:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
