.class public Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;
    }
.end annotation


# static fields
.field private static INSTANCE:Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private volatile savedPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->savedPositions:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->lock:Ljava/lang/Object;

    return-void
.end method

.method private getAll(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p3, p1}, Lsk/mimac/slideshow/utils/FileFilterUtils;->getFileNamesForFilterSorted(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->PLAYLIST_CHANGE_RESET_ORDER:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    invoke-direct {v0}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->INSTANCE:Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    if-nez v0, :cond_1

    new-instance v0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    invoke-direct {v0}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->INSTANCE:Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->INSTANCE:Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    return-object v0
.end method


# virtual methods
.method public getNext(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/Item;Ljava/util/Set;Z)Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/database/entity/Item;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;"
        }
    .end annotation

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->getAll(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    new-instance p1, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;

    const-string p2, ""

    invoke-direct {p1, p2, v1, v0}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;-><init>(Ljava/lang/String;IZ)V

    return-object p1

    :cond_0
    iget-object p3, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->lock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v2, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->savedPositions:Ljava/util/Map;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/Item;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->savedPositions:Ljava/util/Map;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/Item;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    neg-int v2, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v2, v4

    sub-int v2, v3, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    const/4 p4, 0x1

    goto :goto_1

    :cond_2
    const/4 p4, -0x1

    :goto_1
    add-int/2addr v2, p4

    if-gez v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    add-int/2addr v2, p4

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    rem-int/2addr v2, p4

    :goto_2
    iget-object p4, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->savedPositions:Ljava/util/Map;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/Item;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v3, p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p2, p4, v2, v0}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;-><init>(Ljava/lang/String;IZ)V

    monitor-exit p3

    return-object p2

    :cond_5
    iget-object p4, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->savedPositions:Ljava/util/Map;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/Item;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    invoke-direct {p2, p4, v1, v0}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;-><init>(Ljava/lang/String;IZ)V

    monitor-exit p3

    return-object p2

    :goto_5
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->savedPositions:Ljava/util/Map;

    return-void
.end method

.method public revertNext(Ljava/lang/Long;)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->savedPositions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->savedPositions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->savedPositions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
