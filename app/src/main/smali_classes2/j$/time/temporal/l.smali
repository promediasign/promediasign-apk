.class public abstract synthetic Lj$/time/temporal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lj$/time/temporal/q;

.field static final b:Lj$/time/temporal/q;

.field static final c:Lj$/time/temporal/q;

.field static final d:Lj$/time/temporal/q;

.field static final e:Lj$/time/temporal/q;

.field static final f:Lj$/time/temporal/q;

.field static final g:Lj$/time/temporal/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x1

    .line 0
    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    .line 0
    sput-object v0, Lj$/time/temporal/l;->a:Lj$/time/temporal/q;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x2

    .line 0
    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    .line 0
    sput-object v0, Lj$/time/temporal/l;->b:Lj$/time/temporal/q;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x3

    .line 0
    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    .line 0
    sput-object v0, Lj$/time/temporal/l;->c:Lj$/time/temporal/q;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x4

    .line 0
    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    .line 0
    sput-object v0, Lj$/time/temporal/l;->d:Lj$/time/temporal/q;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x5

    .line 0
    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    .line 0
    sput-object v0, Lj$/time/temporal/l;->e:Lj$/time/temporal/q;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x6

    .line 0
    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    .line 0
    sput-object v0, Lj$/time/temporal/l;->f:Lj$/time/temporal/q;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x7

    .line 0
    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    .line 0
    sput-object v0, Lj$/time/temporal/l;->g:Lj$/time/temporal/q;

    return-void
.end method

.method public static a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I
    .locals 5

    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/temporal/t;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->v(Lj$/time/temporal/p;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/t;->i(J)Z

    move-result p0

    if-eqz p0, :cond_0

    long-to-int p0, v1

    return p0

    :cond_0
    new-instance p0, Lj$/time/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid value for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (valid values "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p0

    :cond_1
    new-instance p0, Lj$/time/temporal/s;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for get() method, use getLong() instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p0
.end method

.method public static b(Lj$/time/temporal/Temporal;JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 0
    invoke-interface {p0, p1, p2, p3}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;

    move-result-object p0

    const-wide/16 p1, 0x1

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/r;)Lj$/time/temporal/Temporal;

    move-result-object p0

    goto :goto_1

    :cond_0
    neg-long p1, p1

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static c(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/q;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lj$/time/temporal/l;->a:Lj$/time/temporal/q;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/l;->b:Lj$/time/temporal/q;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/l;->c:Lj$/time/temporal/q;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/p;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->n()Lj$/time/temporal/t;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lj$/time/temporal/s;

    const-string v0, "Unsupported field: "

    .line 0
    invoke-static {v0, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw p0

    :cond_1
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lj$/time/temporal/p;->A(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/t;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lj$/time/temporal/q;
    .locals 1

    .line 0
    sget-object v0, Lj$/time/temporal/l;->b:Lj$/time/temporal/q;

    return-object v0
.end method

.method public static f()Lj$/time/temporal/q;
    .locals 1

    .line 0
    sget-object v0, Lj$/time/temporal/l;->f:Lj$/time/temporal/q;

    return-object v0
.end method

.method public static g()Lj$/time/temporal/q;
    .locals 1

    .line 0
    sget-object v0, Lj$/time/temporal/l;->g:Lj$/time/temporal/q;

    return-object v0
.end method

.method public static synthetic h(I)I
    .locals 1

    .line 0
    rem-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    xor-int/lit8 p0, p0, 0x7

    shr-int/lit8 p0, p0, 0x1f

    or-int/lit8 p0, p0, 0x1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    :goto_0
    return v0
.end method

.method public static i()Lj$/time/temporal/q;
    .locals 1

    .line 0
    sget-object v0, Lj$/time/temporal/l;->d:Lj$/time/temporal/q;

    return-object v0
.end method

.method public static j()Lj$/time/temporal/q;
    .locals 1

    .line 0
    sget-object v0, Lj$/time/temporal/l;->c:Lj$/time/temporal/q;

    return-object v0
.end method

.method public static k()Lj$/time/temporal/q;
    .locals 1

    .line 0
    sget-object v0, Lj$/time/temporal/l;->e:Lj$/time/temporal/q;

    return-object v0
.end method

.method public static l()Lj$/time/temporal/q;
    .locals 1

    .line 0
    sget-object v0, Lj$/time/temporal/l;->a:Lj$/time/temporal/q;

    return-object v0
.end method
