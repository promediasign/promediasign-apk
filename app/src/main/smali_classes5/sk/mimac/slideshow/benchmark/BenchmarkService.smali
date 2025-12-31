.class public Lsk/mimac/slideshow/benchmark/BenchmarkService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public benchmark()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lsk/mimac/slideshow/benchmark/JavaBenchmark;

    invoke-direct {v0}, Lsk/mimac/slideshow/benchmark/JavaBenchmark;-><init>()V

    new-instance v1, Lsk/mimac/slideshow/benchmark/DatabaseBenchmark;

    invoke-direct {v1}, Lsk/mimac/slideshow/benchmark/DatabaseBenchmark;-><init>()V

    new-instance v2, Lsk/mimac/slideshow/benchmark/FileBenchmark;

    invoke-direct {v2}, Lsk/mimac/slideshow/benchmark/FileBenchmark;-><init>()V

    new-instance v3, Lsk/mimac/slideshow/benchmark/GraphicBenchmark;

    invoke-direct {v3}, Lsk/mimac/slideshow/benchmark/GraphicBenchmark;-><init>()V

    new-instance v4, Lsk/mimac/slideshow/benchmark/MultithreadBenchmark;

    invoke-direct {v4}, Lsk/mimac/slideshow/benchmark/MultithreadBenchmark;-><init>()V

    const/4 v5, 0x5

    new-array v5, v5, [Lsk/mimac/slideshow/benchmark/AbstractBenchmark;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    const/4 v2, 0x3

    aput-object v3, v5, v2

    const/4 v2, 0x4

    aput-object v4, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v1, [I

    const/16 v5, 0xa

    aput v5, v4, v0

    aput v3, v4, v6

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;

    invoke-virtual {v8}, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;->run()J

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_3

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    aget-object v7, v3, v4

    aget-wide v8, v7, v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;

    invoke-virtual {v10}, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;->run()J

    move-result-wide v10

    add-long/2addr v10, v8

    aput-wide v10, v7, v1

    add-int/2addr v4, v0

    goto :goto_3

    :cond_2
    add-int/2addr v1, v0

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    move-wide v7, v4

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_5

    aget-object v9, v3, v6

    invoke-static {v9}, Ljava/util/Arrays;->sort([J)V

    move-wide v10, v4

    const/4 v9, 0x1

    :goto_5
    const/16 v12, 0x9

    if-ge v9, v12, :cond_4

    aget-object v12, v3, v6

    aget-wide v13, v12, v9

    add-long/2addr v10, v13

    add-int/2addr v9, v0

    goto :goto_5

    :cond_4
    const-wide/16 v12, 0x8

    div-long/2addr v10, v12

    add-long/2addr v7, v10

    new-instance v9, Lsk/mimac/slideshow/utils/Couple;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;

    invoke-virtual {v12}, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v9, v12, v10}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v0

    goto :goto_4

    :cond_5
    new-instance v0, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "TOTAL"

    invoke-direct {v0, v3, v2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
