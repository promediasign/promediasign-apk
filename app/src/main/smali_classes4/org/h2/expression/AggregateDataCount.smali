.class Lorg/h2/expression/AggregateDataCount;
.super Lorg/h2/expression/AggregateData;
.source "SourceFile"


# instance fields
.field private count:J

.field private distinctValues:Lorg/h2/util/ValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/ValueHashMap<",
            "Lorg/h2/expression/AggregateDataCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/expression/AggregateData;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V
    .locals 2

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p4, p1, :cond_0

    return-void

    :cond_0
    iget-wide p1, p0, Lorg/h2/expression/AggregateDataCount;->count:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/expression/AggregateDataCount;->count:J

    if-eqz p3, :cond_2

    iget-object p1, p0, Lorg/h2/expression/AggregateDataCount;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataCount;->distinctValues:Lorg/h2/util/ValueHashMap;

    :cond_1
    iget-object p1, p0, Lorg/h2/expression/AggregateDataCount;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p1, p4, p0}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;
    .locals 2

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/h2/expression/AggregateDataCount;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/h2/util/HashBase;->size()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    iput-wide v0, p0, Lorg/h2/expression/AggregateDataCount;->count:J

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataCount;->count:J

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method
