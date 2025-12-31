.class public Lorg/h2/engine/QueryStatisticsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/engine/QueryStatisticsData$QueryEntry;
    }
.end annotation


# static fields
.field private static final QUERY_ENTRY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/h2/engine/QueryStatisticsData$QueryEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/QueryStatisticsData$QueryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private maxQueryEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/h2/engine/QueryStatisticsData$1;

    invoke-direct {v0}, Lorg/h2/engine/QueryStatisticsData$1;-><init>()V

    sput-object v0, Lorg/h2/engine/QueryStatisticsData;->QUERY_ENTRY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    iput p1, p0, Lorg/h2/engine/QueryStatisticsData;->maxQueryEntries:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getQueries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/engine/QueryStatisticsData$QueryEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lorg/h2/engine/QueryStatisticsData;->QUERY_ENTRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lorg/h2/engine/QueryStatisticsData;->maxQueryEntries:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxQueryEntries(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/h2/engine/QueryStatisticsData;->maxQueryEntries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/String;JI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;

    invoke-direct {v0, p1}, Lorg/h2/engine/QueryStatisticsData$QueryEntry;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->update(JI)V

    iget-object p1, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lorg/h2/engine/QueryStatisticsData;->maxQueryEntries:I

    int-to-float p2, p2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float p2, p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p2, Lorg/h2/engine/QueryStatisticsData;->QUERY_ENTRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    div-int/lit8 p3, p3, 0x3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/h2/engine/QueryStatisticsData;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
