.class public abstract Lsk/mimac/slideshow/database/DatabaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field public static ds:Lcom/zaxxer/hikari/HikariDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/database/DatabaseManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static backupDatabase()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SCRIPT DROP TO \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->DATABASE_FILE_BACKUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' CHARSET \'UTF-8\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseManager;->process(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private static checkChanges()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkPlaylistLinkedItemIdColumn(Ljavax/sql/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkPlaylistProperties(Ljavax/sql/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkPanelItemTable(Ljavax/sql/DataSource;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkGrabberDataTable(Ljavax/sql/DataSource;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkScreenLayoutRotation(Ljavax/sql/DataSource;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkGrabberClearFolder(Ljavax/sql/DataSource;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkPanelAnimationType(Ljavax/sql/DataSource;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkPanelProperties(Ljavax/sql/DataSource;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkScreenLayoutInterval(Ljavax/sql/DataSource;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkFileDataStartWhen(Ljavax/sql/DataSource;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkPanelItemFloatDimensions(Ljavax/sql/DataSource;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkPlaylistActionColumn(Ljavax/sql/DataSource;)V

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkSchedulesTable(Ljavax/sql/DataSource;)V

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkFileDataSyncCodeColumn(Ljavax/sql/DataSource;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkScreenLayoutScreenSaverColumn(Ljavax/sql/DataSource;)Z

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkScreenLayoutPowerOffColumn(Ljavax/sql/DataSource;)Z

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkScreenLayoutIntervalFloat(Ljavax/sql/DataSource;)Z

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkPanelItemDisplayId(Ljavax/sql/DataSource;)Z

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkPanelItemDisplayIdString(Ljavax/sql/DataSource;)Z

    return-void
.end method

.method public static closeDatabase()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zaxxer/hikari/HikariDataSource;->close()V

    const/4 v0, 0x0

    sput-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    :cond_0
    return-void
.end method

.method private static createDataSource()V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseManager;->closeDatabase()V

    new-instance v0, Lcom/zaxxer/hikari/HikariDataSource;

    invoke-direct {v0}, Lcom/zaxxer/hikari/HikariDataSource;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseManager;->getJdbcUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->setJdbcUrl(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    const-string v1, "org.h2.Driver"

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->setDriverClassName(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->setMaximumPoolSize(I)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/zaxxer/hikari/AbstractHikariConfig;->setLeakDetectionThreshold(J)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/zaxxer/hikari/AbstractHikariConfig;->setIdleTimeout(J)V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/zaxxer/hikari/AbstractHikariConfig;->setMaxLifetime(J)V

    return-void
.end method

.method private static getJdbcUrl()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jdbc:h2:retry:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->DATABASE_FILE:Ljava/lang/String;

    const-string v2, ".mv.db"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";FILE_LOCK=FS;PAGE_SIZE=1024;CACHE_SIZE=8192"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadDatabase()V
    .locals 9

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Loading database: {}"

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->DATABASE_FILE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseManager;->loadDatabaseInternal()V
    :try_end_0
    .catch Lcom/zaxxer/hikari/pool/PoolInitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load database: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->DATABASE_FILE_BACKUP:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseManager;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "Can\'t load database, trying to recover with file last modified on {}"

    invoke-interface {v2, v3, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->DATABASE_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Database file couldn\'t be deleted"

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    :try_start_1
    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseManager;->getJdbcUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lsk/mimac/slideshow/FileConstants;->DATABASE_FILE_BACKUP:Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lorg/h2/tools/RunScript;->execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseManager;->loadDatabaseInternal()V

    const-string v0, "Database was restored"

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t load database, recovery failed"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load database and backup file doesn\'t exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static loadDatabaseInternal()V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseManager;->createDataSource()V

    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkCreateDatabase(Ljavax/sql/DataSource;)Z

    move-result v0

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/ContentDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/ItemDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/GrabberDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/FileDataDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->setDataSource(Ljavax/sql/DataSource;)V

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v1}, Lsk/mimac/slideshow/database/service/ItemService;->setDataSource(Ljavax/sql/DataSource;)V

    if-nez v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseManager;->checkChanges()V

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkAdminUser(Ljavax/sql/DataSource;)V

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseChanger;->checkAddDefaultData()V

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseManager;->backupDatabase()V

    return-void
.end method

.method public static process(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "Changed columns: "

    sget-object v1, Lsk/mimac/slideshow/database/DatabaseManager;->ds:Lcom/zaxxer/hikari/HikariDataSource;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v2, p0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v2}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/database/DatabaseManager;->processSelect(Ljava/sql/ResultSet;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p0
.end method

.method private static processSelect(Ljava/sql/ResultSet;)Ljava/lang/String;
    .locals 6

    invoke-interface {p0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<table class=\'styledTable\'><thead><tr>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v1, :cond_0

    const-string v5, "<th>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</th>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "</tr></thead>"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "<tr>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_2
    if-gt v0, v1, :cond_1

    const-string v4, "<td>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "</td>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const-string v0, "</tr>"

    goto :goto_1

    :cond_2
    const-string p0, "</table>"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
