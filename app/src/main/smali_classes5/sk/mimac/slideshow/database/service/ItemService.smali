.class public Lsk/mimac/slideshow/database/service/ItemService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lsk/mimac/slideshow/database/service/ItemService;


# instance fields
.field private final ds:Ljavax/sql/DataSource;


# direct methods
.method private constructor <init>(Ljavax/sql/DataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/database/service/ItemService;->ds:Ljavax/sql/DataSource;

    return-void
.end method

.method public static getInstance()Lsk/mimac/slideshow/database/service/ItemService;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/service/ItemService;->INSTANCE:Lsk/mimac/slideshow/database/service/ItemService;

    return-object v0
.end method

.method public static setDataSource(Ljavax/sql/DataSource;)V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/database/service/ItemService;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/database/service/ItemService;-><init>(Ljavax/sql/DataSource;)V

    sput-object v0, Lsk/mimac/slideshow/database/service/ItemService;->INSTANCE:Lsk/mimac/slideshow/database/service/ItemService;

    return-void
.end method


# virtual methods
.method public createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/database/entity/Item;",
            ")",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/service/ItemService;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lsk/mimac/slideshow/database/dao/ItemDao;->create(Lsk/mimac/slideshow/database/entity/Item;Ljava/sql/Connection;)J

    move-result-wide v1

    new-instance v3, Lsk/mimac/slideshow/database/entity/Playlist;

    sget-object v4, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lsk/mimac/slideshow/enums/PlaylistAction;->LOOP_INDEFINITELY:Lsk/mimac/slideshow/enums/PlaylistAction;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, p1, v5}, Lsk/mimac/slideshow/database/entity/Playlist;-><init>(Ljava/lang/Integer;Lsk/mimac/slideshow/enums/MusicType;Ljava/lang/String;Lsk/mimac/slideshow/enums/PlaylistAction;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1}, Lsk/mimac/slideshow/database/entity/Playlist;->setLinkedItemId(Ljava/lang/Long;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->create(Lsk/mimac/slideshow/database/entity/Playlist;Ljava/sql/Connection;)J

    move-result-wide v3

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v7, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1, v5, v7, v0}, Lsk/mimac/slideshow/database/dao/ContentDao;->updatePlaylist(Ljava/lang/Long;Ljava/util/List;Ljava/sql/Connection;)V

    invoke-interface {v0}, Ljava/sql/Connection;->commit()V

    invoke-static {v6}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
.end method
