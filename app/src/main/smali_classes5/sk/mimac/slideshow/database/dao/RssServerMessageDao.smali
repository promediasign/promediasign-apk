.class public Lsk/mimac/slideshow/database/dao/RssServerMessageDao;
.super Lsk/mimac/slideshow/database/dao/AbstractDao;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljavax/sql/DataSource;)V
    .locals 1

    const-string v0, "rss_server_message"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lsk/mimac/slideshow/database/dao/RssServerMessageDao;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    return-object v0
.end method

.method public static setDataSource(Ljavax/sql/DataSource;)V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;-><init>(Ljavax/sql/DataSource;)V

    sput-object v0, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    return-void
.end method


# virtual methods
.method public create(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/RssServerMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "INSERT INTO rss_server_message (title, description, start_when, end_when) VALUES (?, ?, ?, ?)"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/RssServerMessage;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v4, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getStartWhen()Ljava/util/Date;

    move-result-object v3

    const/4 v4, -0x5

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getStartWhen()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    div-long/2addr v8, v5

    invoke-interface {v1, v7, v8, v9}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-interface {v1, v7, v4}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_1
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getEndWhen()Ljava/util/Date;

    move-result-object v3

    const/4 v7, 0x4

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getEndWhen()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-interface {v1, v7, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_2

    :cond_1
    invoke-interface {v1, v7, v4}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    sget-object v3, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->LOG:Lorg/slf4j/Logger;

    const-string v4, "New RssServerMessage \'{}\' added"

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
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

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

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

.method public create(Lsk/mimac/slideshow/database/entity/RssServerMessage;)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->create(Ljava/util/List;)V

    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/RssServerMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v2

    :try_start_0
    const-string v0, "SELECT id, title, description, start_when, end_when FROM rss_server_message"

    invoke-interface {v2, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "start_when"

    invoke-interface {v4, v5}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-interface {v4}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    move-object v15, v10

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    move-object v15, v9

    :goto_1
    const-string v5, "end_when"

    invoke-interface {v4, v5}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long v5, v5, v7

    invoke-interface {v4}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_2
    move-object/from16 v16, v10

    goto :goto_3

    :cond_1
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :goto_3
    new-instance v5, Lsk/mimac/slideshow/database/entity/RssServerMessage;

    const-string v6, "id"

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v6, "title"

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "description"

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v11, v5

    invoke-direct/range {v11 .. v16}, Lsk/mimac/slideshow/database/entity/RssServerMessage;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_4

    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v2}, Ljava/sql/Connection;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v4, v0

    goto :goto_6

    :goto_4
    if-eqz v4, :cond_3

    :try_start_5
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    if-eqz v3, :cond_4

    :try_start_7
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_8
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_8
    if-eqz v2, :cond_5

    :try_start_9
    invoke-interface {v2}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_9
    throw v3
.end method

.method public getAllCurrent()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/RssServerMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v2

    :try_start_0
    const-string v0, "SELECT id, title, description, start_when, end_when FROM rss_server_message WHERE (start_when IS NULL OR start_when < ?) AND (end_when IS NULL OR end_when > ?)"

    invoke-interface {v2, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x1

    invoke-interface {v3, v0, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v0, 0x2

    invoke-interface {v3, v0, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "start_when"

    invoke-interface {v4, v5}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-interface {v4}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    move-object v15, v10

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    move-object v15, v9

    :goto_1
    const-string v5, "end_when"

    invoke-interface {v4, v5}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long v5, v5, v7

    invoke-interface {v4}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_2
    move-object/from16 v16, v10

    goto :goto_3

    :cond_1
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :goto_3
    new-instance v5, Lsk/mimac/slideshow/database/entity/RssServerMessage;

    const-string v6, "id"

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v6, "title"

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "description"

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v11, v5

    invoke-direct/range {v11 .. v16}, Lsk/mimac/slideshow/database/entity/RssServerMessage;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_4

    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v2}, Ljava/sql/Connection;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v4, v0

    goto :goto_6

    :goto_4
    if-eqz v4, :cond_3

    :try_start_5
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    if-eqz v3, :cond_4

    :try_start_7
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_8
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_8
    if-eqz v2, :cond_5

    :try_start_9
    invoke-interface {v2}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_9
    throw v3
.end method

.method public getById(J)Lsk/mimac/slideshow/database/entity/RssServerMessage;
    .locals 13

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, title, description, start_when, end_when FROM rss_server_message WHERE id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const-string p2, "start_when"

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p2

    if-eqz p2, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v3, v4}, Ljava/util/Date;-><init>(J)V

    move-object v11, p2

    :goto_0
    const-string p2, "end_when"

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long v3, v3, v5

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_1
    move-object v12, v2

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :goto_2
    new-instance p2, Lsk/mimac/slideshow/database/entity/RssServerMessage;

    const-string v2, "id"

    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v2, "title"

    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "description"

    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, p2

    invoke-direct/range {v7 .. v12}, Lsk/mimac/slideshow/database/entity/RssServerMessage;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
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

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p2

    goto :goto_3

    :cond_2
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v2

    :goto_3
    if-eqz p1, :cond_3

    :try_start_7
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz v1, :cond_4

    :try_start_9
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_6
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_7
    if-eqz v0, :cond_5

    :try_start_b
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_8
    throw p1
.end method

.method public update(Lsk/mimac/slideshow/database/entity/RssServerMessage;)V
    .locals 9

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "UPDATE rss_server_message SET title = ?, description = ?, start_when = ?, end_when = ? WHERE id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getStartWhen()Ljava/util/Date;

    move-result-object v2

    const/4 v3, -0x5

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getStartWhen()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    div-long/2addr v7, v4

    invoke-interface {v1, v6, v7, v8}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-interface {v1, v6, v3}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getEndWhen()Ljava/util/Date;

    move-result-object v2

    const/4 v6, 0x4

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getEndWhen()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-interface {v1, v6, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v6, v3}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    sget-object v2, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Edited RssServerMessage \'{}\'"

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz v0, :cond_3

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1
.end method
