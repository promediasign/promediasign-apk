.class public final Lj$/time/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/m;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic b:I = 0x0

.field private static final serialVersionUID:J = -0x51d949b44ef9efL


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lj$/time/format/w;

    invoke-direct {v0}, Lj$/time/format/w;-><init>()V

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    sget-object v2, Lj$/time/format/H;->EXCEEDS_PAD:Lj$/time/format/H;

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/w;->q(Lj$/time/temporal/p;IILj$/time/format/H;)V

    .line 0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/format/w;->z(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/time/u;->a:I

    return-void
.end method

.method public static S(I)Lj$/time/u;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->T(J)V

    new-instance v0, Lj$/time/u;

    invoke-direct {v0, p0}, Lj$/time/u;-><init>(I)V

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

    const/16 v1, 0xb

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
    invoke-static {}, Lj$/time/temporal/l;->j()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    return-object p1

    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/l;->c(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final C(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    invoke-static {p1}, Lj$/time/chrono/h;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    check-cast v0, Lj$/time/chrono/a;

    invoke-virtual {v0, v1}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/u;->a:I

    int-to-long v1, v1

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

.method public final T(JLj$/time/temporal/r;)Lj$/time/u;
    .locals 2

    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_5

    sget-object v0, Lj$/time/t;->b:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object p3, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/u;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/com/android/tools/r8/a;->f(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/u;->V(JLj$/time/temporal/p;)Lj$/time/u;

    move-result-object p1

    return-object p1

    :cond_0
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

    :cond_1
    const/16 p3, 0x3e8

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->l(JJ)J

    move-result-wide p1

    .line 0
    invoke-virtual {p0, p1, p2}, Lj$/time/u;->U(J)Lj$/time/u;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p3, 0x64

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->l(JJ)J

    move-result-wide p1

    .line 0
    invoke-virtual {p0, p1, p2}, Lj$/time/u;->U(J)Lj$/time/u;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 p3, 0xa

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->l(JJ)J

    move-result-wide p1

    .line 0
    invoke-virtual {p0, p1, p2}, Lj$/time/u;->U(J)Lj$/time/u;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lj$/time/u;->U(J)Lj$/time/u;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/r;->n(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/u;

    return-object p1
.end method

.method public final U(J)Lj$/time/u;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/u;->a:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->S(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/u;->S(I)Lj$/time/u;

    move-result-object p1

    return-object p1
.end method

.method public final V(JLj$/time/temporal/p;)Lj$/time/u;
    .locals 5

    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->T(J)V

    sget-object v1, Lj$/time/t;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    iget v1, p0, Lj$/time/u;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    sget-object p3, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/u;->v(Lj$/time/temporal/p;)J

    move-result-wide v3

    cmp-long p3, v3, p1

    if-nez p3, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v1

    invoke-static {v2}, Lj$/time/u;->S(I)Lj$/time/u;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Lj$/time/temporal/s;

    const-string p2, "Unsupported field: "

    .line 0
    invoke-static {p2, p3}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p2

    .line 0
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    :cond_2
    long-to-int p2, p1

    invoke-static {p2}, Lj$/time/u;->S(I)Lj$/time/u;

    move-result-object p1

    return-object p1

    :cond_3
    if-ge v1, v2, :cond_4

    const-wide/16 v0, 0x1

    sub-long p1, v0, p1

    :cond_4
    long-to-int p2, p1

    invoke-static {p2}, Lj$/time/u;->S(I)Lj$/time/u;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/p;->v(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/u;

    return-object p1
.end method

.method final W(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lj$/time/u;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/u;->V(JLj$/time/temporal/p;)Lj$/time/u;

    move-result-object p1

    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lj$/time/u;

    .line 0
    iget v0, p0, Lj$/time/u;->a:I

    iget p1, p1, Lj$/time/u;->a:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final bridge synthetic d(JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/u;->T(JLj$/time/temporal/r;)Lj$/time/u;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/Temporal;Lj$/time/temporal/r;)J
    .locals 4

    .line 0
    instance-of v0, p1, Lj$/time/u;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/u;

    goto :goto_1

    :cond_0
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    invoke-static {p1}, Lj$/time/chrono/h;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lj$/time/LocalDate;->U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->p(Lj$/time/temporal/p;)I

    move-result v0

    invoke-static {v0}, Lj$/time/u;->S(I)Lj$/time/u;

    move-result-object p1
    :try_end_0
    .catch Lj$/time/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_1
    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_7

    iget v0, p1, Lj$/time/u;->a:I

    int-to-long v0, v0

    iget v2, p0, Lj$/time/u;->a:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    sget-object v2, Lj$/time/t;->b:[I

    move-object v3, p2

    check-cast v3, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v0, 0x5

    if-ne v2, v0, :cond_2

    sget-object p2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p1, p2}, Lj$/time/u;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    invoke-virtual {p0, p2}, Lj$/time/u;->v(Lj$/time/temporal/p;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    :cond_2
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

    :cond_3
    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    return-wide v0

    :cond_4
    const-wide/16 p1, 0x64

    div-long/2addr v0, p1

    return-wide v0

    :cond_5
    const-wide/16 p1, 0xa

    div-long/2addr v0, p1

    :cond_6
    return-wide v0

    :cond_7
    invoke-interface {p2, p0, p1}, Lj$/time/temporal/r;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    .line 0
    :goto_2
    new-instance v0, Lj$/time/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain Year from TemporalAccessor: "

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
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/u;

    iget p1, p1, Lj$/time/u;->a:I

    iget v1, p0, Lj$/time/u;->a:I

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

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

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
    .locals 1

    iget v0, p0, Lj$/time/u;->a:I

    return v0
.end method

.method public final n(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/u;->T(JLj$/time/temporal/r;)Lj$/time/u;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/u;->T(JLj$/time/temporal/r;)Lj$/time/u;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/u;->T(JLj$/time/temporal/r;)Lj$/time/u;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final p(Lj$/time/temporal/p;)I
    .locals 3

    invoke-virtual {p0, p1}, Lj$/time/u;->s(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/u;->v(Lj$/time/temporal/p;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/t;->a(JLj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final r(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {p1, p0}, Lj$/time/chrono/h;->a(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 0
    check-cast p1, Lj$/time/u;

    return-object p1
.end method

.method public final s(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 4

    sget-object v0, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lj$/time/u;->a:I

    const-wide/16 v0, 0x1

    if-gtz p1, :cond_0

    const-wide/32 v2, 0x3b9aca00

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/t;->j(JJ)Lj$/time/temporal/t;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-wide/32 v2, 0x3b9ac9ff

    goto :goto_0

    :goto_1
    return-object p1

    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/l;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lj$/time/u;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lj$/time/temporal/p;)J
    .locals 4

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    sget-object v0, Lj$/time/t;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lj$/time/u;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    int-to-long v0, v2

    return-wide v0

    :cond_1
    new-instance v0, Lj$/time/temporal/s;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0

    :cond_2
    int-to-long v0, v1

    return-wide v0

    :cond_3
    if-ge v1, v2, :cond_4

    rsub-int/lit8 v1, v1, 0x1

    :cond_4
    int-to-long v0, v1

    return-wide v0

    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->r(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method
