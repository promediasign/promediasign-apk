.class public final Lj$/time/chrono/x;
.super Lj$/time/chrono/c;
.source "SourceFile"


# static fields
.field static final d:Lj$/time/LocalDate;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private final transient a:Lj$/time/LocalDate;

.field private transient b:Lj$/time/chrono/y;

.field private transient c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x751

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    return-void
.end method

.method constructor <init>(Lj$/time/LocalDate;)V
    .locals 2

    invoke-direct {p0}, Lj$/time/chrono/c;-><init>()V

    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lj$/time/chrono/y;->g(Lj$/time/LocalDate;)Lj$/time/chrono/y;

    move-result-object v0

    iput-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lj$/time/chrono/y;->l()Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj$/time/chrono/x;->c:I

    iput-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    return-void

    :cond_0
    new-instance p1, Lj$/time/c;

    .line 0
    const-string v0, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1
.end method

.method constructor <init>(Lj$/time/chrono/y;ILj$/time/LocalDate;)V
    .locals 1

    invoke-direct {p0}, Lj$/time/chrono/c;-><init>()V

    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    invoke-virtual {p3, v0}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    iput p2, p0, Lj$/time/chrono/x;->c:I

    iput-object p3, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    return-void

    :cond_0
    new-instance p1, Lj$/time/c;

    .line 0
    const-string p2, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1
.end method

.method private a0(Lj$/time/LocalDate;)Lj$/time/chrono/x;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/chrono/x;

    invoke-direct {v0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    :goto_0
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

    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final D()Lj$/time/chrono/m;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    return-object v0
.end method

.method public final L(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->L(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final N()I
    .locals 6

    iget-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    invoke-virtual {v0}, Lj$/time/chrono/y;->m()Lj$/time/chrono/y;

    move-result-object v1

    iget-object v2, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lj$/time/chrono/y;->l()Lj$/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/LocalDate;->getYear()I

    move-result v4

    invoke-virtual {v2}, Lj$/time/LocalDate;->getYear()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lj$/time/chrono/y;->l()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->W()I

    move-result v1

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lj$/time/LocalDate;->N()I

    move-result v1

    :goto_0
    iget v2, p0, Lj$/time/chrono/x;->c:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lj$/time/chrono/y;->l()Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalDate;->W()I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method final U(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method final V(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->g0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method final W(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->i0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final X()Lj$/time/chrono/y;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    return-object v0
.end method

.method public final Y(JLj$/time/temporal/ChronoUnit;)Lj$/time/chrono/x;
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->d(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final Z(JLj$/time/temporal/p;)Lj$/time/chrono/x;
    .locals 8

    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {p0, v0}, Lj$/time/chrono/x;->v(Lj$/time/temporal/p;)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lj$/time/chrono/w;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    iget-object v3, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 0
    :cond_1
    sget-object v2, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    .line 0
    invoke-virtual {v2, v0}, Lj$/time/chrono/v;->I(Lj$/time/temporal/a;)Lj$/time/temporal/t;

    move-result-object v7

    invoke-virtual {v7, p1, p2, v0}, Lj$/time/temporal/t;->a(JLj$/time/temporal/p;)I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    :goto_0
    invoke-virtual {v3, p1, p2, p3}, Lj$/time/LocalDate;->k0(JLj$/time/temporal/p;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v3, v7}, Lj$/time/LocalDate;->n0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v7}, Lj$/time/chrono/y;->q(I)Lj$/time/chrono/y;

    move-result-object p1

    iget p2, p0, Lj$/time/chrono/x;->c:I

    .line 0
    invoke-virtual {v2, p1, p2}, Lj$/time/chrono/v;->h(Lj$/time/chrono/m;I)I

    move-result p1

    invoke-virtual {v3, p1}, Lj$/time/LocalDate;->n0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 0
    :cond_4
    iget-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 0
    invoke-virtual {v2, p1, v7}, Lj$/time/chrono/v;->h(Lj$/time/chrono/m;I)I

    move-result p1

    invoke-virtual {v3, p1}, Lj$/time/LocalDate;->n0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 0
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->c(JLj$/time/temporal/p;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final a()Lj$/time/chrono/l;
    .locals 1

    .line 0
    sget-object v0, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    return-object v0
.end method

.method public final b0(Lj$/time/temporal/o;)Lj$/time/chrono/x;
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lj$/time/chrono/c;->k(Lj$/time/temporal/m;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/x;->Z(JLj$/time/temporal/p;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/x;->Z(JLj$/time/temporal/p;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->d(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->d(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lj$/time/chrono/x;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/chrono/x;

    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    iget-object p1, p1, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Lj$/time/temporal/p;)Z
    .locals 2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Z

    move-result p1

    return p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/p;->s(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 0
    sget-object v0, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    .line 0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->hashCode()I

    move-result v0

    const v1, -0x29035c2f

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i(Lj$/time/r;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lj$/time/chrono/c;->i(Lj$/time/r;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final k(Lj$/time/temporal/m;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lj$/time/chrono/c;->k(Lj$/time/temporal/m;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final n(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->L(JLj$/time/temporal/r;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final r(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lj$/time/chrono/c;->k(Lj$/time/temporal/m;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final s(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 5

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->f(Lj$/time/temporal/p;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Lj$/time/temporal/a;

    sget-object v0, Lj$/time/chrono/w;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 0
    sget-object v0, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    .line 0
    invoke-virtual {v0, p1}, Lj$/time/chrono/v;->I(Lj$/time/temporal/a;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    invoke-virtual {p1}, Lj$/time/chrono/y;->l()Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lj$/time/chrono/y;->m()Lj$/time/chrono/y;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lj$/time/chrono/y;->l()Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    move-result p1

    sub-int/2addr p1, v0

    add-int/2addr p1, v1

    :goto_0
    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/t;->j(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x3b9ac9ff

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lj$/time/chrono/x;->N()I

    move-result p1

    goto :goto_0

    .line 0
    :cond_3
    iget-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->Y()I

    move-result p1

    goto :goto_0

    .line 0
    :cond_4
    new-instance v0, Lj$/time/temporal/s;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0

    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->A(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lj$/time/temporal/p;)J
    .locals 4

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    sget-object v0, Lj$/time/chrono/w;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lj$/time/chrono/x;->c:I

    iget-object v2, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    iget-object v3, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v3, p1}, Lj$/time/LocalDate;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-virtual {v2}, Lj$/time/chrono/y;->getValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :pswitch_1
    new-instance v0, Lj$/time/temporal/s;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0

    :pswitch_2
    int-to-long v0, v1

    return-wide v0

    :pswitch_3
    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    invoke-virtual {v3}, Lj$/time/LocalDate;->W()I

    move-result v0

    invoke-virtual {v2}, Lj$/time/chrono/y;->l()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->W()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    :cond_0
    invoke-virtual {v3}, Lj$/time/LocalDate;->W()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->r(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w()J
    .locals 2

    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final z(Lj$/time/LocalTime;)Lj$/time/chrono/d;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/time/chrono/f;->U(Lj$/time/chrono/ChronoLocalDate;Lj$/time/LocalTime;)Lj$/time/chrono/f;

    move-result-object p1

    return-object p1
.end method
