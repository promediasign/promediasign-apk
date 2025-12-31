.class final Lj$/time/format/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# instance fields
.field private final a:Lj$/time/temporal/p;

.field private final b:Lj$/time/format/I;

.field private final c:Lj$/time/format/D;

.field private volatile d:Lj$/time/format/k;


# direct methods
.method constructor <init>(Lj$/time/temporal/p;Lj$/time/format/I;Lj$/time/format/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/s;->a:Lj$/time/temporal/p;

    iput-object p2, p0, Lj$/time/format/s;->b:Lj$/time/format/I;

    iput-object p3, p0, Lj$/time/format/s;->c:Lj$/time/format/D;

    return-void
.end method


# virtual methods
.method public final n(Lj$/time/format/A;Ljava/lang/StringBuilder;)Z
    .locals 9

    iget-object v0, p0, Lj$/time/format/s;->a:Lj$/time/temporal/p;

    invoke-virtual {p1, v0}, Lj$/time/format/A;->e(Lj$/time/temporal/p;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lj$/time/format/A;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object v1

    invoke-static {}, Lj$/time/temporal/l;->e()Lj$/time/temporal/q;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lj$/time/chrono/l;

    if-eqz v3, :cond_2

    sget-object v1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lj$/time/format/s;->b:Lj$/time/format/I;

    invoke-virtual {p1}, Lj$/time/format/A;->c()Ljava/util/Locale;

    move-result-object v8

    iget-object v2, p0, Lj$/time/format/s;->c:Lj$/time/format/D;

    iget-object v4, p0, Lj$/time/format/s;->a:Lj$/time/temporal/p;

    invoke-virtual/range {v2 .. v8}, Lj$/time/format/D;->e(Lj$/time/chrono/l;Lj$/time/temporal/p;JLj$/time/format/I;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lj$/time/format/s;->b:Lj$/time/format/I;

    invoke-virtual {p1}, Lj$/time/format/A;->c()Ljava/util/Locale;

    move-result-object v6

    iget-object v1, p0, Lj$/time/format/s;->c:Lj$/time/format/D;

    iget-object v2, p0, Lj$/time/format/s;->a:Lj$/time/temporal/p;

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/D;->f(Lj$/time/temporal/p;JLj$/time/format/I;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 0
    iget-object v0, p0, Lj$/time/format/s;->d:Lj$/time/format/k;

    if-nez v0, :cond_3

    new-instance v0, Lj$/time/format/k;

    iget-object v2, p0, Lj$/time/format/s;->a:Lj$/time/temporal/p;

    const/16 v3, 0x13

    sget-object v4, Lj$/time/format/H;->NORMAL:Lj$/time/format/H;

    invoke-direct {v0, v2, v1, v3, v4}, Lj$/time/format/k;-><init>(Lj$/time/temporal/p;IILj$/time/format/H;)V

    iput-object v0, p0, Lj$/time/format/s;->d:Lj$/time/format/k;

    :cond_3
    iget-object v0, p0, Lj$/time/format/s;->d:Lj$/time/format/k;

    .line 0
    invoke-virtual {v0, p1, p2}, Lj$/time/format/k;->n(Lj$/time/format/A;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1
.end method

.method public final p(Lj$/time/format/x;Ljava/lang/CharSequence;I)I
    .locals 11

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ltz p3, :cond_9

    if-gt p3, v0, :cond_9

    invoke-virtual {p1}, Lj$/time/format/x;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/format/s;->b:Lj$/time/format/I;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lj$/time/format/x;->h()Lj$/time/chrono/l;

    move-result-object v1

    iget-object v2, p0, Lj$/time/format/s;->c:Lj$/time/format/D;

    iget-object v3, p0, Lj$/time/format/s;->a:Lj$/time/temporal/p;

    if-eqz v1, :cond_2

    sget-object v4, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lj$/time/format/x;->i()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v0, v4}, Lj$/time/format/D;->g(Lj$/time/chrono/l;Lj$/time/temporal/p;Lj$/time/format/I;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lj$/time/format/x;->i()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lj$/time/format/D;->h(Lj$/time/temporal/p;Lj$/time/format/I;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, v4

    move-object v8, p2

    move v9, p3

    invoke-virtual/range {v5 .. v10}, Lj$/time/format/x;->s(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p2

    add-int v10, p2, p3

    iget-object v6, p0, Lj$/time/format/s;->a:Lj$/time/temporal/p;

    move-object v5, p1

    move v9, p3

    invoke-virtual/range {v5 .. v10}, Lj$/time/format/x;->o(Lj$/time/temporal/p;JII)I

    move-result p1

    return p1

    :cond_4
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne v3, v0, :cond_6

    invoke-virtual {p1}, Lj$/time/format/x;->l()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v1}, Lj$/time/chrono/l;->M()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/m;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, v8

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lj$/time/format/x;->s(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lj$/time/chrono/m;->getValue()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p2

    add-int v5, p2, p3

    iget-object v1, p0, Lj$/time/format/s;->a:Lj$/time/temporal/p;

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/x;->o(Lj$/time/temporal/p;JII)I

    move-result p1

    return p1

    :cond_6
    invoke-virtual {p1}, Lj$/time/format/x;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    not-int p1, p3

    return p1

    .line 0
    :cond_7
    iget-object v0, p0, Lj$/time/format/s;->d:Lj$/time/format/k;

    if-nez v0, :cond_8

    new-instance v0, Lj$/time/format/k;

    iget-object v1, p0, Lj$/time/format/s;->a:Lj$/time/temporal/p;

    sget-object v2, Lj$/time/format/H;->NORMAL:Lj$/time/format/H;

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-direct {v0, v1, v3, v4, v2}, Lj$/time/format/k;-><init>(Lj$/time/temporal/p;IILj$/time/format/H;)V

    iput-object v0, p0, Lj$/time/format/s;->d:Lj$/time/format/k;

    :cond_8
    iget-object v0, p0, Lj$/time/format/s;->d:Lj$/time/format/k;

    .line 0
    invoke-virtual {v0, p1, p2, p3}, Lj$/time/format/k;->p(Lj$/time/format/x;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1

    :cond_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lj$/time/format/I;->FULL:Lj$/time/format/I;

    const-string v1, ")"

    const-string v2, "Text("

    iget-object v3, p0, Lj$/time/format/s;->a:Lj$/time/temporal/p;

    iget-object v4, p0, Lj$/time/format/s;->b:Lj$/time/format/I;

    if-ne v4, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
