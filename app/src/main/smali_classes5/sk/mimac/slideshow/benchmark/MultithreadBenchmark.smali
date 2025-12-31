.class public Lsk/mimac/slideshow/benchmark/MultithreadBenchmark;
.super Lsk/mimac/slideshow/benchmark/AbstractBenchmark;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/benchmark/MultithreadBenchmark;->lambda$doCalculations$0()V

    return-void
.end method

.method private static synthetic lambda$doCalculations$0()V
    .locals 11

    const/4 v0, 0x1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM.yyyy HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0x7e6

    invoke-virtual {v4, v0, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    int-to-double v7, v3

    const-wide v9, 0x4005bf0a8b145769L    # Math.E

    div-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v9, v10, v2

    const-string v9, "%.2f"

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public doCalculations()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/Thread;

    .line 12
    .line 13
    new-instance v4, Le1/c;

    .line 14
    .line 15
    const/4 v5, 0x6

    .line 16
    invoke-direct {v4, v5}, Le1/c;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const-string v5, "Benchmark-thread-"

    .line 20
    .line 21
    invoke-static {v2, v5}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/Thread;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/Thread;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Multithreading"

    return-object v0
.end method
