.class Lorg/h2/expression/AggregateDataHistogram;
.super Lorg/h2/expression/AggregateData;
.source "SourceFile"


# instance fields
.field private count:J

.field private distinctValues:Lorg/h2/util/ValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/ValueHashMap<",
            "Lorg/h2/expression/AggregateDataHistogram;",
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

.method private groupDistinct(Lorg/h2/engine/Database;I)V
    .locals 3

    iget-object v0, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/h2/expression/AggregateDataHistogram;->count:J

    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->keys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/h2/expression/AggregateDataHistogram;->add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V
    .locals 2

    iget-object p1, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez p1, :cond_0

    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    :cond_0
    iget-object p1, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p1, p4}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/expression/AggregateDataHistogram;

    if-nez p1, :cond_1

    iget-object p2, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p2}, Lorg/h2/util/HashBase;->size()I

    move-result p2

    const/16 p3, 0x2710

    if-ge p2, p3, :cond_1

    new-instance p1, Lorg/h2/expression/AggregateDataHistogram;

    invoke-direct {p1}, Lorg/h2/expression/AggregateDataHistogram;-><init>()V

    iget-object p2, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p2, p4, p1}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-wide p2, p1, Lorg/h2/expression/AggregateDataHistogram;->count:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p1, Lorg/h2/expression/AggregateDataHistogram;->count:J

    :cond_2
    return-void
.end method

.method public getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/h2/expression/AggregateDataHistogram;->count:J

    invoke-direct {p0, p1, p2}, Lorg/h2/expression/AggregateDataHistogram;->groupDistinct(Lorg/h2/engine/Database;I)V

    :cond_0
    iget-object p3, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p3}, Lorg/h2/util/HashBase;->size()I

    move-result p3

    new-array p3, p3, [Lorg/h2/value/ValueArray;

    iget-object v2, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v2}, Lorg/h2/util/ValueHashMap;->keys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/value/Value;

    iget-object v5, p0, Lorg/h2/expression/AggregateDataHistogram;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v5, v4}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/expression/AggregateDataHistogram;

    iget-wide v5, v5, Lorg/h2/expression/AggregateDataHistogram;->count:J

    invoke-static {v5, v6}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/h2/value/Value;

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    invoke-static {v6}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v4

    aput-object v4, p3, v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object p1

    new-instance v0, Lorg/h2/expression/AggregateDataHistogram$1;

    invoke-direct {v0, p0, p1}, Lorg/h2/expression/AggregateDataHistogram$1;-><init>(Lorg/h2/expression/AggregateDataHistogram;Lorg/h2/value/CompareMode;)V

    invoke-static {p3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {p3}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method
