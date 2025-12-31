.class public Lsk/mimac/slideshow/database/dao/KeyActionDao;
.super Lsk/mimac/slideshow/database/dao/AbstractDao;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lsk/mimac/slideshow/database/dao/KeyActionDao;

.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/database/dao/KeyActionDao;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/database/dao/KeyActionDao;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljavax/sql/DataSource;)V
    .locals 1

    const-string v0, "key_action"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lsk/mimac/slideshow/database/dao/KeyActionDao;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/dao/KeyActionDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/KeyActionDao;

    return-object v0
.end method

.method public static setDataSource(Ljavax/sql/DataSource;)V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/database/dao/KeyActionDao;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/database/dao/KeyActionDao;-><init>(Ljavax/sql/DataSource;)V

    sput-object v0, Lsk/mimac/slideshow/database/dao/KeyActionDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/KeyActionDao;

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/KeyAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, action_down, action_up, properties FROM key_action ORDER BY id"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lsk/mimac/slideshow/database/entity/KeyAction;

    invoke-direct {v4}, Lsk/mimac/slideshow/database/entity/KeyAction;-><init>()V

    const-string v5, "id"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/entity/KeyAction;->setKeyCode(I)V

    const-string v5, "action_down"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/entity/KeyAction;->setActionDown(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)V

    const-string v5, "action_up"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/entity/KeyAction;->setActionUp(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    :goto_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/entity/KeyAction;->setProperties(Ljava/util/Map;)V

    const-string v5, "properties"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/KeyAction;->getProperties()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5, v6}, Lsk/mimac/slideshow/database/dao/AbstractDao;->stringToProperties(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
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
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v2

    goto :goto_4

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    if-eqz v1, :cond_3

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_6
    if-eqz v0, :cond_4

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    throw v1
.end method

.method public insertOrUpdate(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/KeyAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "MERGE INTO key_action (id, action_down, action_up, properties) KEY(id) VALUES (?, ?, ?, ?)"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/database/entity/KeyAction;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/KeyAction;->getKeyCode()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v1, v5, v4}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/KeyAction;->getActionDown()Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v1, v5, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/KeyAction;->getActionUp()Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v4

    const/16 v5, 0xc

    const/4 v6, 0x3

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/KeyAction;->getActionUp()Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-interface {v1, v6, v5}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_1
    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/KeyAction;->getProperties()Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/KeyAction;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/KeyAction;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/database/dao/AbstractDao;->propertiesToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v6, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-interface {v1, v6, v5}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    goto :goto_0

    :cond_2
    sget-object v2, Lsk/mimac/slideshow/database/dao/KeyActionDao;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Updated key mapping with {} entries"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-void

    :goto_4
    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    if-eqz v0, :cond_5

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    throw p1
.end method
