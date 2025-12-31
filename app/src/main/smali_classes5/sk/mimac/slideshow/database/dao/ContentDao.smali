.class public Lsk/mimac/slideshow/database/dao/ContentDao;
.super Lsk/mimac/slideshow/database/dao/AbstractDao;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lsk/mimac/slideshow/database/dao/ContentDao;

.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/database/dao/ContentDao;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/database/dao/ContentDao;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljavax/sql/DataSource;)V
    .locals 1

    const-string v0, "content"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/dao/ContentDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/ContentDao;

    return-object v0
.end method

.method public static setDataSource(Ljavax/sql/DataSource;)V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/database/dao/ContentDao;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/database/dao/ContentDao;-><init>(Ljavax/sql/DataSource;)V

    sput-object v0, Lsk/mimac/slideshow/database/dao/ContentDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/ContentDao;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Long;I)Lsk/mimac/slideshow/utils/Couple;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "I)",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT item, length FROM content WHERE playlist = ? AND position = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v2, 0x2

    invoke-interface {v1, v2, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lsk/mimac/slideshow/utils/Couple;

    const-string v4, "item"

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "length"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lsk/mimac/slideshow/database/dao/ContentDao;->LOG:Lorg/slf4j/Logger;

    const-string v5, "There is more than one item for playlist \'{}\' and position \'{}\'"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v4, v5, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_1
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    return-object p1

    :goto_1
    if-eqz v2, :cond_2

    :try_start_7
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_9
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_5
    if-eqz v0, :cond_4

    :try_start_b
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_6
    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "playlist id is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllItems(Ljava/lang/Long;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/Item;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, file_name, type FROM item INNER JOIN content ON item.id = content.item WHERE content.playlist = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x1

    invoke-interface {v1, p1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lsk/mimac/slideshow/database/entity/Item;

    const-string v4, "id"

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "file_name"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lsk/mimac/slideshow/enums/ItemType;->getType(I)Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/Long;Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_1

    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz v0, :cond_3

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "playlist id is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllItemsSorted(Ljava/lang/Long;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Lsk/mimac/slideshow/database/entity/Item;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, file_name, type, description, length, properties FROM item INNER JOIN content ON item.id = content.item WHERE content.playlist = ? ORDER BY content.position"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x1

    invoke-interface {v1, p1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lsk/mimac/slideshow/database/entity/Item;

    const-string v4, "id"

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "file_name"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lsk/mimac/slideshow/enums/ItemType;->getType(I)Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v6

    const-string v7, "description"

    invoke-interface {v2, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/Long;Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/entity/Item;->setProperties(Ljava/util/Map;)V

    const-string v4, "properties"

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lsk/mimac/slideshow/database/dao/AbstractDao;->stringToProperties(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v4, Lsk/mimac/slideshow/utils/Couple;

    const-string v5, "length"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_1

    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz v0, :cond_3

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "playlist id is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCount(Ljava/lang/Long;)I
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT count(*) FROM content WHERE playlist = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x1

    invoke-interface {v1, p1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "count(*)"

    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    return p1

    :goto_0
    if-eqz p1, :cond_1

    :try_start_7
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v1, :cond_2

    :try_start_9
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    :try_start_a
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz v0, :cond_3

    :try_start_b
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "playlist id is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItem(Ljava/lang/Long;I)Lsk/mimac/slideshow/utils/Couple;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "I)",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Lsk/mimac/slideshow/database/entity/Item;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, file_name, type, description, length, properties FROM item INNER JOIN content ON item.id = content.item WHERE content.playlist = ? AND content.position = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v2, 0x2

    invoke-interface {v1, v2, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/database/dao/ItemDao;->mapResultSetToItem(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v3

    new-instance v4, Lsk/mimac/slideshow/utils/Couple;

    const-string v5, "length"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lsk/mimac/slideshow/database/dao/ContentDao;->LOG:Lorg/slf4j/Logger;

    const-string v5, "There is more than one item for playlist \'{}\' and position \'{}\'"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v3, v5, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_1
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    return-object p1

    :goto_1
    if-eqz v2, :cond_2

    :try_start_7
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_9
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_5
    if-eqz v0, :cond_4

    :try_start_b
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_6
    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "playlist id is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLength(Ljava/lang/Long;I)I
    .locals 6

    const-string v0, "Content for playlist ["

    if-eqz p1, :cond_4

    iget-object v1, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v1}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    :try_start_0
    const-string v2, "SELECT length FROM content WHERE playlist = ? AND position = ?"

    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v5, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x2

    invoke-interface {v2, v3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] and position ["

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]not found"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_0
    if-eqz v3, :cond_1

    :try_start_6
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    if-eqz v2, :cond_2

    :try_start_8
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_a
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "playlist id is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateLength(Ljava/lang/Long;II)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "UPDATE content SET length = ? WHERE playlist = ? AND position = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p3, 0x2

    invoke-interface {v1, p3, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p3, 0x3

    invoke-interface {v1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    sget-object p3, Lsk/mimac/slideshow/database/dao/ContentDao;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Length for playlist [{}] and position [{}] updated"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, v2, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "playlist id is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updatePlaylist(Ljava/lang/Long;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    invoke-virtual {p0, p1, p2, v0}, Lsk/mimac/slideshow/database/dao/ContentDao;->updatePlaylist(Ljava/lang/Long;Ljava/util/List;Ljava/sql/Connection;)V

    invoke-interface {v0}, Ljava/sql/Connection;->commit()V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "playlist id is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updatePlaylist(Ljava/lang/Long;Ljava/util/List;Ljava/sql/Connection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/sql/Connection;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "DELETE FROM content WHERE playlist = ?"

    invoke-interface {p3, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    :try_start_0
    const-string v1, "INSERT INTO content (playlist, item, position, length) VALUES (?, ?, ?, ?)"

    invoke-interface {p3, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p3, v3, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-interface {p3, v6, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x3

    invoke-interface {p3, v5, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {p3, v2, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {p3}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    sget-object p2, Lsk/mimac/slideshow/database/dao/ContentDao;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Content for playlist [{}] updated"

    invoke-interface {p2, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    :try_start_2
    invoke-interface {p3}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    return-void

    :goto_2
    if-eqz p3, :cond_2

    :try_start_3
    invoke-interface {p3}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz v0, :cond_3

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1
.end method
