.class final Lj$/time/format/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;


# instance fields
.field final synthetic a:Lj$/time/chrono/ChronoLocalDate;

.field final synthetic b:Lj$/time/temporal/TemporalAccessor;

.field final synthetic c:Lj$/time/chrono/l;

.field final synthetic d:Lj$/time/ZoneId;


# direct methods
.method constructor <init>(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAccessor;Lj$/time/chrono/l;Lj$/time/ZoneId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/z;->a:Lj$/time/chrono/ChronoLocalDate;

    iput-object p2, p0, Lj$/time/format/z;->b:Lj$/time/temporal/TemporalAccessor;

    iput-object p3, p0, Lj$/time/format/z;->c:Lj$/time/chrono/l;

    iput-object p4, p0, Lj$/time/format/z;->d:Lj$/time/ZoneId;

    return-void
.end method


# virtual methods
.method public final A(Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj$/time/format/z;->c:Lj$/time/chrono/l;

    return-object p1

    :cond_0
    invoke-static {}, Lj$/time/temporal/l;->l()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lj$/time/format/z;->d:Lj$/time/ZoneId;

    return-object p1

    :cond_1
    invoke-static {}, Lj$/time/temporal/l;->j()Lj$/time/temporal/q;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lj$/time/format/z;->b:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lj$/time/temporal/p;)Z
    .locals 2

    iget-object v0, p0, Lj$/time/format/z;->a:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/p;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDate;->f(Lj$/time/temporal/p;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lj$/time/format/z;->b:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result p1

    return p1
.end method

.method public final synthetic p(Lj$/time/temporal/p;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final s(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 2

    iget-object v0, p0, Lj$/time/format/z;->a:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/p;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lj$/time/format/z;->b:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lj$/time/format/z;->c:Lj$/time/chrono/l;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " with chronology "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lj$/time/format/z;->d:Lj$/time/ZoneId;

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " with zone "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lj$/time/format/z;->b:Lj$/time/temporal/TemporalAccessor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lj$/time/temporal/p;)J
    .locals 2

    iget-object v0, p0, Lj$/time/format/z;->a:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/p;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lj$/time/format/z;->b:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->v(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0
.end method
