.class final enum Lj$/time/temporal/d;
.super Lj$/time/temporal/g;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .line 0
    const-string v0, "QUARTER_OF_YEAR"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final A(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/t;
    .locals 1

    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->s(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 0
    invoke-virtual {p0}, Lj$/time/temporal/d;->n()Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 0
    :cond_0
    new-instance p1, Lj$/time/temporal/s;

    .line 0
    const-string v0, "Unsupported field: QuarterOfYear"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1
.end method

.method public final n()Lj$/time/temporal/t;
    .locals 4

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/t;->j(JJ)Lj$/time/temporal/t;

    move-result-object v0

    return-object v0
.end method

.method public final r(Lj$/time/temporal/TemporalAccessor;)J
    .locals 4

    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->s(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p1, Lj$/time/temporal/s;

    .line 0
    const-string v0, "Unsupported field: QuarterOfYear"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p1
.end method

.method public final s(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lj$/time/temporal/i;->a(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "QuarterOfYear"

    return-object v0
.end method

.method public final v(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 5

    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->r(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/temporal/d;->n()Lj$/time/temporal/t;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lj$/time/temporal/t;->b(JLj$/time/temporal/p;)V

    sget-object v2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->v(Lj$/time/temporal/p;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long p2, p2, v0

    add-long/2addr p2, v3

    invoke-interface {p1, p2, p3, v2}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/p;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
