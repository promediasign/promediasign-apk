.class public final Lj$/time/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Lj$/time/temporal/m;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xd0888991b3ac078L


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lj$/time/format/w;

    invoke-direct {v0}, Lj$/time/format/w;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Lj$/time/format/w;->f(Ljava/lang/String;)V

    sget-object v1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lj$/time/format/w;->p(Lj$/time/temporal/p;I)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lj$/time/format/w;->e(C)V

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Lj$/time/format/w;->p(Lj$/time/temporal/p;I)V

    .line 0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/format/w;->z(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/time/n;->a:I

    iput p2, p0, Lj$/time/n;->b:I

    return-void
.end method

.method static S(Ljava/io/DataInput;)Lj$/time/n;
    .locals 4

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 0
    invoke-static {v0}, Lj$/time/l;->V(I)Lj$/time/l;

    move-result-object v0

    .line 0
    const-string v1, "month"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/a;->T(J)V

    invoke-virtual {v0}, Lj$/time/l;->U()I

    move-result v1

    if-gt p0, v1, :cond_0

    new-instance v1, Lj$/time/n;

    invoke-virtual {v0}, Lj$/time/l;->getValue()I

    move-result v0

    invoke-direct {v1, v0, p0}, Lj$/time/n;-><init>(II)V

    return-object v1

    :cond_0
    new-instance v1, Lj$/time/c;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal value for DayOfMonth field, value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not valid for month "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v1
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

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/l;->c(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final C(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5

    invoke-static {p1}, Lj$/time/chrono/h;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    check-cast v0, Lj$/time/chrono/a;

    invoke-virtual {v0, v1}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/n;->a:I

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/temporal/t;->d()J

    move-result-wide v1

    iget v3, p0, Lj$/time/n;->b:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lj$/time/c;

    .line 0
    const-string v0, "Adjustment only supported on ISO date-time"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1
.end method

.method final T(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lj$/time/n;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Lj$/time/n;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lj$/time/n;

    .line 0
    iget v0, p1, Lj$/time/n;->a:I

    iget v1, p0, Lj$/time/n;->a:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    iget v0, p0, Lj$/time/n;->b:I

    iget p1, p1, Lj$/time/n;->b:I

    sub-int v1, v0, p1

    :cond_0
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/n;

    iget v1, p1, Lj$/time/n;->a:I

    iget v3, p0, Lj$/time/n;->a:I

    if-ne v3, v1, :cond_1

    iget v1, p0, Lj$/time/n;->b:I

    iget p1, p1, Lj$/time/n;->b:I

    if-ne v1, p1, :cond_1

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

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

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

    iget v0, p0, Lj$/time/n;->a:I

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Lj$/time/n;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final p(Lj$/time/temporal/p;)I
    .locals 3

    invoke-virtual {p0, p1}, Lj$/time/n;->s(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/n;->v(Lj$/time/temporal/p;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/t;->a(JLj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final s(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 7

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/p;->n()Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_3

    .line 0
    iget p1, p0, Lj$/time/n;->a:I

    invoke-static {p1}, Lj$/time/l;->V(I)Lj$/time/l;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object v1, Lj$/time/k;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v0, 0x1f

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    :goto_0
    int-to-long v3, v0

    .line 0
    invoke-static {p1}, Lj$/time/l;->V(I)Lj$/time/l;

    move-result-object p1

    .line 0
    invoke-virtual {p1}, Lj$/time/l;->U()I

    move-result p1

    int-to-long v5, p1

    const-wide/16 v1, 0x1

    .line 0
    invoke-static/range {v1 .. v6}, Lj$/time/temporal/t;->k(JJJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 0
    :cond_3
    invoke-static {p0, p1}, Lj$/time/temporal/l;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/n;->a:I

    if-ge v2, v1, :cond_0

    const-string v3, "0"

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/n;->b:I

    if-ge v2, v1, :cond_1

    const-string v1, "-0"

    goto :goto_1

    :cond_1
    const-string v1, "-"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lj$/time/temporal/p;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/m;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p1, p0, Lj$/time/n;->a:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    :cond_0
    new-instance v0, Lj$/time/temporal/s;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0

    :cond_1
    iget p1, p0, Lj$/time/n;->b:I

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->r(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method
