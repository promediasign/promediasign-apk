.class final Lj$/util/stream/B1;
.super Lj$/util/stream/z0;
.source "SourceFile"


# instance fields
.field final synthetic h:Ljava/util/function/LongBinaryOperator;

.field final synthetic i:J


# direct methods
.method constructor <init>(Lj$/util/stream/f3;Ljava/util/function/LongBinaryOperator;J)V
    .locals 0

    iput-object p2, p0, Lj$/util/stream/B1;->h:Ljava/util/function/LongBinaryOperator;

    iput-wide p3, p0, Lj$/util/stream/B1;->i:J

    invoke-direct {p0, p1}, Lj$/util/stream/z0;-><init>(Lj$/util/stream/f3;)V

    return-void
.end method


# virtual methods
.method public final f0()Lj$/util/stream/V1;
    .locals 4

    .line 0
    new-instance v0, Lj$/util/stream/T1;

    iget-wide v1, p0, Lj$/util/stream/B1;->i:J

    iget-object v3, p0, Lj$/util/stream/B1;->h:Ljava/util/function/LongBinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/T1;-><init>(JLjava/util/function/LongBinaryOperator;)V

    return-object v0
.end method
