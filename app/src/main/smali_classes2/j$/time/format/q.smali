.class final Lj$/time/format/q;
.super Lj$/time/format/k;
.source "SourceFile"


# static fields
.field static final i:Lj$/time/LocalDate;


# instance fields
.field private final g:I

.field private final h:Lj$/time/chrono/ChronoLocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/format/q;->i:Lj$/time/LocalDate;

    return-void
.end method

.method private constructor <init>(Lj$/time/temporal/p;IIILj$/time/chrono/ChronoLocalDate;I)V
    .locals 6

    sget-object v4, Lj$/time/format/H;->NOT_NEGATIVE:Lj$/time/format/H;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lj$/time/format/k;-><init>(Lj$/time/temporal/p;IILj$/time/format/H;I)V

    iput p4, p0, Lj$/time/format/q;->g:I

    iput-object p5, p0, Lj$/time/format/q;->h:Lj$/time/chrono/ChronoLocalDate;

    return-void
.end method

.method constructor <init>(Lj$/time/temporal/p;Lj$/time/LocalDate;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    move v4, v8

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lj$/time/format/q;-><init>(Lj$/time/temporal/p;IIILj$/time/chrono/ChronoLocalDate;I)V

    if-nez p2, :cond_2

    invoke-interface {p1}, Lj$/time/temporal/p;->n()Lj$/time/temporal/t;

    move-result-object p1

    int-to-long v0, v8

    invoke-virtual {p1, v0, v1}, Lj$/time/temporal/t;->i(J)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lj$/time/format/k;->f:[J

    aget-wide v2, p1, v7

    add-long/2addr v0, v2

    const-wide/32 p1, 0x7fffffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lj$/time/c;

    .line 0
    const-string p2, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The base value must be within the range of the field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lj$/time/temporal/p;Lj$/time/LocalDate;I)V
    .locals 7

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    .line 0
    invoke-direct/range {v0 .. v6}, Lj$/time/format/q;-><init>(Lj$/time/temporal/p;IIILj$/time/chrono/ChronoLocalDate;I)V

    return-void
.end method


# virtual methods
.method final b(Lj$/time/format/A;J)J
    .locals 7

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v2, p0, Lj$/time/format/q;->h:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lj$/time/format/A;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object p1

    invoke-static {p1}, Lj$/time/chrono/h;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    move-result-object p1

    invoke-interface {p1, v2}, Lj$/time/chrono/l;->q(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    iget-object v2, p0, Lj$/time/format/k;->a:Lj$/time/temporal/p;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->p(Lj$/time/temporal/p;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lj$/time/format/q;->g:I

    :goto_0
    int-to-long v2, p1

    sget-object p1, Lj$/time/format/k;->f:[J

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    iget v4, p0, Lj$/time/format/k;->b:I

    aget-wide v4, p1, v4

    add-long/2addr v2, v4

    cmp-long v6, p2, v2

    if-gez v6, :cond_1

    rem-long/2addr v0, v4

    return-wide v0

    :cond_1
    iget p2, p0, Lj$/time/format/k;->c:I

    aget-wide p2, p1, p2

    rem-long/2addr v0, p2

    return-wide v0
.end method

.method final c(Lj$/time/format/x;)Z
    .locals 1

    invoke-virtual {p1}, Lj$/time/format/x;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lj$/time/format/k;->c(Lj$/time/format/x;)Z

    move-result p1

    return p1
.end method

.method final d(Lj$/time/format/x;JII)I
    .locals 9

    iget-object v0, p0, Lj$/time/format/q;->h:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj$/time/format/x;->h()Lj$/time/chrono/l;

    move-result-object v1

    invoke-interface {v1, v0}, Lj$/time/chrono/l;->q(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/k;->a:Lj$/time/temporal/p;

    invoke-interface {v0, v1}, Lj$/time/temporal/TemporalAccessor;->p(Lj$/time/temporal/p;)I

    move-result v0

    new-instance v8, Lj$/time/format/p;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lj$/time/format/p;-><init>(Lj$/time/format/q;Lj$/time/format/x;JII)V

    invoke-virtual {p1, v8}, Lj$/time/format/x;->a(Lj$/time/format/p;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lj$/time/format/q;->g:I

    :goto_0
    sub-int v1, p5, p4

    iget v2, p0, Lj$/time/format/k;->b:I

    if-ne v1, v2, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-ltz v1, :cond_2

    sget-object v1, Lj$/time/format/k;->f:[J

    aget-wide v2, v1, v2

    int-to-long v4, v0

    rem-long v6, v4, v2

    sub-long v6, v4, v6

    if-lez v0, :cond_1

    add-long/2addr v6, p2

    :goto_1
    move-wide p2, v6

    goto :goto_2

    :cond_1
    sub-long/2addr v6, p2

    goto :goto_1

    :goto_2
    cmp-long v0, p2, v4

    if-gez v0, :cond_2

    add-long/2addr p2, v2

    :cond_2
    move-wide v2, p2

    iget-object v1, p0, Lj$/time/format/k;->a:Lj$/time/temporal/p;

    move-object v0, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/x;->o(Lj$/time/temporal/p;JII)I

    move-result p1

    return p1
.end method

.method final e()Lj$/time/format/k;
    .locals 9

    .line 0
    iget v0, p0, Lj$/time/format/k;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/format/q;

    iget v5, p0, Lj$/time/format/k;->c:I

    iget v6, p0, Lj$/time/format/q;->g:I

    iget-object v3, p0, Lj$/time/format/k;->a:Lj$/time/temporal/p;

    iget v4, p0, Lj$/time/format/k;->b:I

    iget-object v7, p0, Lj$/time/format/q;->h:Lj$/time/chrono/ChronoLocalDate;

    const/4 v8, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lj$/time/format/q;-><init>(Lj$/time/temporal/p;IIILj$/time/chrono/ChronoLocalDate;I)V

    :goto_0
    return-object v0
.end method

.method final f(I)Lj$/time/format/k;
    .locals 8

    .line 0
    new-instance v7, Lj$/time/format/q;

    iget v0, p0, Lj$/time/format/k;->e:I

    add-int v6, v0, p1

    iget v2, p0, Lj$/time/format/k;->b:I

    iget v3, p0, Lj$/time/format/k;->c:I

    iget-object v1, p0, Lj$/time/format/k;->a:Lj$/time/temporal/p;

    iget v4, p0, Lj$/time/format/q;->g:I

    iget-object v5, p0, Lj$/time/format/q;->h:Lj$/time/chrono/ChronoLocalDate;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lj$/time/format/q;-><init>(Lj$/time/temporal/p;IIILj$/time/chrono/ChronoLocalDate;I)V

    return-object v7
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lj$/time/format/q;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 0
    iget-object v1, p0, Lj$/time/format/q;->h:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "defaultObj"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ReducedValue("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lj$/time/format/k;->a:Lj$/time/temporal/p;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/k;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/k;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
