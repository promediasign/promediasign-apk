.class public Lsk/mimac/slideshow/database/dao/FileDataDao;
.super Lsk/mimac/slideshow/database/dao/AbstractDao;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lsk/mimac/slideshow/database/dao/FileDataDao;

.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/database/dao/FileDataDao;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/database/dao/FileDataDao;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljavax/sql/DataSource;)V
    .locals 1

    const-string v0, "file_data"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method private createInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/FileData;)V
    .locals 7

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getStartWhen()Ljava/util/Date;

    move-result-object v0

    const/4 v1, -0x5

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getStartWhen()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long/2addr v5, v2

    invoke-interface {p1, v4, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v4, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_0
    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getDeleteWhen()Ljava/util/Date;

    move-result-object v0

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getDeleteWhen()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-interface {p1, v4, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v4, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_1
    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_2
    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x5

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->propertiesToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_3
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    sget-object p1, Lsk/mimac/slideshow/database/dao/FileDataDao;->LOG:Lorg/slf4j/Logger;

    const-string v0, "New fileData for \'{}\' added"

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/dao/FileDataDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/FileDataDao;

    return-object v0
.end method

.method private mapResultSetToFileData(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/FileData;
    .locals 6

    const-string v0, "delete_when"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    const-string v0, "start_when"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long v0, v0, v2

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_1
    new-instance v0, Lsk/mimac/slideshow/database/entity/FileData;

    const-string v1, "id"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "file_name"

    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5, v4}, Lsk/mimac/slideshow/database/entity/FileData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    const-string v1, "sync_code"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/FileData;->setSyncCode(Ljava/lang/String;)V

    const-string v1, "action"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lsk/mimac/slideshow/database/dao/AbstractDao;->stringToProperties(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static setDataSource(Ljavax/sql/DataSource;)V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/database/dao/FileDataDao;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/database/dao/FileDataDao;-><init>(Ljavax/sql/DataSource;)V

    sput-object v0, Lsk/mimac/slideshow/database/dao/FileDataDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/FileDataDao;

    return-void
.end method


# virtual methods
.method public create(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/FileData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "INSERT INTO file_data (file_name, start_when, delete_when, sync_code, action) VALUES (?, ?, ?, ?, ?)"

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

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/FileData;

    invoke-direct {p0, v1, v2}, Lsk/mimac/slideshow/database/dao/FileDataDao;->createInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/FileData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-void

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

.method public create(Lsk/mimac/slideshow/database/entity/FileData;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "INSERT INTO file_data (file_name, start_when, delete_when, sync_code, action) VALUES (?, ?, ?, ?, ?)"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v1, p1}, Lsk/mimac/slideshow/database/dao/FileDataDao;->createInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/FileData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
.end method

.method public createOrUpdate(Lsk/mimac/slideshow/database/entity/FileData;)V
    .locals 2

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/dao/FileDataDao;->create(Lsk/mimac/slideshow/database/entity/FileData;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/FileData;->setAction(Ljava/util/Map;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getStartWhen()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/FileData;->setStartWhen(Ljava/util/Date;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getDeleteWhen()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/FileData;->setDeleteWhen(Ljava/util/Date;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/FileData;->setSyncCode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/dao/FileDataDao;->update(Lsk/mimac/slideshow/database/entity/FileData;)V

    :goto_0
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "DELETE FROM file_data WHERE file_name = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/dao/FileDataDao;->LOG:Lorg/slf4j/Logger;

    const-string v3, "FileData \'{}\' was deleted"

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p1
.end method

.method public getAll()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lsk/mimac/slideshow/database/entity/FileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, file_name, start_when, delete_when, sync_code, action FROM file_data"

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

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/database/dao/FileDataDao;->mapResultSetToFileData(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

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

    return-object v3

    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v2

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
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v3
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
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v2
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

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v1
.end method

.method public getAllDeleteBeforeDate(J)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection<",
            "Lsk/mimac/slideshow/database/entity/FileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, file_name, start_when, delete_when, sync_code, action FROM file_data WHERE delete_when <= ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x3e8

    :try_start_1
    div-long/2addr p1, v2

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/database/dao/FileDataDao;->mapResultSetToFileData(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V
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
    if-eqz p2, :cond_1

    :try_start_5
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw p1
.end method

.method public getFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, file_name, start_when, delete_when, sync_code, action FROM file_data WHERE LOWER(file_name) LIKE ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/database/dao/FileDataDao;->mapResultSetToFileData(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v2
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

    return-object v2

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

    return-object p1

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
.end method

.method public getFileNameBySyncCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT file_name FROM file_data WHERE sync_code = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "file_name"

    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2
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

    return-object v2

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

    return-object p1

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
.end method

.method public getFileNamesDontPlay(Ljava/util/List;J)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT file_name FROM file_data WHERE (start_when > ? OR delete_when < ?) AND LOWER(file_name) LIKE ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v2, 0x3e8

    :try_start_1
    div-long v4, p2, v2

    const/4 v6, 0x1

    invoke-interface {v1, v6, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    div-long/2addr p2, v2

    const/4 v2, 0x2

    invoke-interface {v1, v2, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "%"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x3

    invoke-interface {v1, v2, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-interface {p3}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "file_name"

    invoke-interface {p3, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_3
    invoke-interface {p3}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_2
    if-eqz p3, :cond_1

    :try_start_4
    invoke-interface {p3}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object p2

    :catchall_3
    move-exception p1

    goto :goto_6

    :goto_4
    if-eqz v1, :cond_3

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_6
    if-eqz v0, :cond_4

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    throw p1
.end method

.method public update(Lsk/mimac/slideshow/database/entity/FileData;)V
    .locals 9

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "UPDATE file_data SET file_name = ?, start_when = ?, delete_when = ?, sync_code = ?, action = ? WHERE id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getStartWhen()Ljava/util/Date;

    move-result-object v2

    const/4 v3, -0x5

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getStartWhen()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    div-long/2addr v7, v4

    invoke-interface {v1, v6, v7, v8}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    invoke-interface {v1, v6, v3}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getDeleteWhen()Ljava/util/Date;

    move-result-object v2

    const/4 v6, 0x3

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getDeleteWhen()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-interface {v1, v6, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v6, v3}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    const/4 v4, 0x4

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {v1, v4, v3}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_2
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v2

    const/4 v4, 0x5

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/database/dao/AbstractDao;->propertiesToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4, v3}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_3
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    sget-object v2, Lsk/mimac/slideshow/database/dao/FileDataDao;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Edited fileData \'{}\'"

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_6

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
