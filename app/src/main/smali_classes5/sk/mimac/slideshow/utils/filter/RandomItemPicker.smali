.class public abstract Lsk/mimac/slideshow/utils/filter/RandomItemPicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final globalLastPicked:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final lastPickedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->lastPickedMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->globalLastPicked:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->random:Ljava/util/Random;

    return-void
.end method

.method private canPick(Ljava/util/LinkedList;Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TT;>;TT;I)Z"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    mul-int/lit8 v1, p3, 0x3

    div-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->globalLastPicked:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    div-int/lit8 v0, p3, 0x3

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->globalLastPicked:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->globalLastPicked:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getFromMap(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->lastPickedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->lastPickedMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public abstract getAll(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getEmpty()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getRandom(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->getAll(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->getFromMap(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->random:Ljava/util/Random;

    invoke-virtual {v0, p3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->canPick(Ljava/util/LinkedList;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object p1, p0, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->globalLastPicked:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object v0
.end method
