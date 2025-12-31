.class final Lj$/util/stream/P3;
.super Lj$/util/stream/m2;
.source "SourceFile"


# instance fields
.field b:J

.field c:Z

.field final synthetic d:Z

.field final synthetic e:Lj$/util/stream/Q3;


# direct methods
.method constructor <init>(Lj$/util/stream/Q3;Lj$/util/stream/q2;Z)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/P3;->e:Lj$/util/stream/Q3;

    iput-boolean p3, p0, Lj$/util/stream/P3;->d:Z

    invoke-direct {p0, p2}, Lj$/util/stream/m2;-><init>(Lj$/util/stream/q2;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Lj$/util/stream/P3;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/P3;->e:Lj$/util/stream/Q3;

    iget-object v0, v0, Lj$/util/stream/Q3;->m:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lj$/util/stream/P3;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lj$/util/stream/P3;->d:Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    iget-wide v2, p0, Lj$/util/stream/P3;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lj$/util/stream/P3;->b:J

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
