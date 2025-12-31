.class public abstract Lsk/mimac/slideshow/database/DatabaseChanger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/database/DatabaseChanger;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private static addDefaultAdmin()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;-><init>()V

    const-string v1, "Default admin"

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->setName(Ljava/lang/String;)V

    sget-object v1, Lsk/mimac/slideshow/enums/UserRole;->ADMIN:Lsk/mimac/slideshow/enums/UserRole;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->setRole(Lsk/mimac/slideshow/enums/UserRole;)V

    const-string v1, "admin"

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->setUsername(Ljava/lang/String;)V

    sget-object v2, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->INSTANCE:Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->setPassword(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->create(Lsk/mimac/slideshow/database/entity/AccessUser;)V

    return-void
.end method

.method private static addScreenLayoutTimingData(Ljava/sql/Connection;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO screen_layout_timing VALUES "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x18

    if-ge v3, v4, :cond_0

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", 0), "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V

    return-void
.end method

.method public static checkAddDefaultData()V
    .locals 7

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->hasAny()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    const-string v2, "All files in cycle"

    const-string v3, "*"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->hasAny()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;-><init>()V

    const-string v1, "Default layout"

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setName(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->create(Lsk/mimac/slideshow/database/entity/ScreenLayout;)I

    move-result v0

    new-instance v1, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-direct {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>()V

    const-string v2, "Whole screen"

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setName(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setX(F)V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setY(F)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setWidth(F)V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setHeight(F)V

    const-string v2, "#000000ff"

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setBackgroundColor(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setMainPanel(Z)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setScreenLayoutId(Ljava/lang/Integer;)V

    sget-object v2, Lsk/mimac/slideshow/enums/TransitionType;->NONE:Lsk/mimac/slideshow/enums/TransitionType;

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationType(Lsk/mimac/slideshow/enums/TransitionType;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationLength(I)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v3

    new-instance v4, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v5

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getAll()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v4, v5, v6, v1, v2}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v1

    new-instance v3, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5, v2}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>(JI)V

    invoke-virtual {v1, v3}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    :cond_1
    return-void
.end method

.method public static checkAdminUser(Ljavax/sql/DataSource;)V
    .locals 3

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "SELECT id FROM user WHERE role = \'ADMIN\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_0

    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    sget-object p0, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Creating default admin user"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseChanger;->addDefaultAdmin()V

    return-void

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    if-eqz v0, :cond_2

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    if-eqz p0, :cond_3

    :try_start_b
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v0
.end method

.method public static checkCreateDatabase(Ljavax/sql/DataSource;)Z
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "SELECT table_name FROM information_schema.tables WHERE table_name =\'ITEM\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing tables in database, creating"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-static {p0}, Lsk/mimac/slideshow/database/DatabaseChanger;->createTables(Ljava/sql/Connection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x0

    return p0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz p0, :cond_3

    :try_start_b
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v0
.end method

.method public static checkFileDataStartWhen(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'FILE_DATA\' AND column_name = \'START_WHEN\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing startWhen column in file data table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE file_data ADD (start_when bigint)"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkFileDataSyncCodeColumn(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'FILE_DATA\' AND column_name = \'SYNC_CODE\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing tag column in file data table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE file_data ADD sync_code varchar(255) DEFAULT NULL;"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkGrabberClearFolder(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'GRABBER_DATA\' AND column_name = \'CLEAR_FOLDER\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing clearFolder column in grabber table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE grabber_data ADD COLUMN clear_folder boolean DEFAULT FALSE NOT NULL;"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkGrabberDataTable(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT table_name FROM information_schema.tables WHERE table_name = \'GRABBER_DATA\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing table grabber_data in database, creating"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "DROP TABLE grabber; CREATE TABLE grabber_data (id integer PRIMARY KEY AUTO_INCREMENT, file_name varchar(150), url varchar(255)); "

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkPanelAnimationType(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'PANEL_ITEM\' AND column_name = \'ANIMATION_TYPE\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing animation columns in panel item table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE panel_item ADD (animation_type varchar(30) DEFAULT \'NONE\' NOT NULL, animation_length integer DEFAULT 0 NOT NULL)"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkPanelItemDisplayId(Ljavax/sql/DataSource;)Z
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "SELECT type_name FROM information_schema.columns WHERE table_name = \'PANEL_ITEM\' AND column_name = \'DISPLAY_ID\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing display id column in screen layout zone table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE panel_item ADD display_id INT"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x0

    return p0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz p0, :cond_3

    :try_start_b
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v0
.end method

.method public static checkPanelItemDisplayIdString(Ljavax/sql/DataSource;)Z
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "SELECT type_name FROM information_schema.columns WHERE table_name = \'PANEL_ITEM\' AND column_name = \'DISPLAY_ID\' AND type_name = \'INTEGER\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "DisplayId column in screen layout zone table in database has old type, changing"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE panel_item ALTER COLUMN display_id SET DATA TYPE varchar(255)"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x0

    return p0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz p0, :cond_3

    :try_start_b
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v0
.end method

.method public static checkPanelItemFloatDimensions(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT type_name FROM information_schema.columns WHERE table_name = \'PANEL_ITEM\' AND column_name = \'WIDTH\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "type_name"

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "integer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing float dimensions in panel item table in database, changing"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE panel_item ALTER COLUMN width SET DATA TYPE FLOAT4; ALTER TABLE panel_item ALTER COLUMN height SET DATA TYPE FLOAT4;ALTER TABLE panel_item ALTER COLUMN x SET DATA TYPE FLOAT4;ALTER TABLE panel_item ALTER COLUMN y SET DATA TYPE FLOAT4;ALTER TABLE panel_item ADD (display_order integer NOT NULL DEFAULT 0)"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkPanelItemTable(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT table_name FROM information_schema.tables WHERE table_name = \'PANEL_ITEM\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing table panel_item in database, creating"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-static {p0}, Lsk/mimac/slideshow/database/DatabaseChanger;->createPanelItemTable(Ljava/sql/Connection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkPanelProperties(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'PANEL_ITEM\' AND column_name = \'PROPERTIES\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing properties column in panel item table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE panel_item ADD (properties varchar(1023))"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkPlaylistActionColumn(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'PLAYLIST\' AND column_name = \'ACTION\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing action column in playlist table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE playlist ADD action varchar(255) DEFAULT \'LOOP_INDEFINITELY\' NOT NULL; ALTER TABLE item ALTER COLUMN file_name SET DATA TYPE varchar(1023);"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkPlaylistLinkedItemIdColumn(Ljavax/sql/DataSource;)Z
    .locals 5

    const-string v0, "ALTER TABLE playlist ADD linked_item_id bigint; ALTER TABLE playlist ADD FOREIGN KEY (linked_item_id) REFERENCES item(id);CREATE TABLE key_action (   id int PRIMARY KEY,   action_down varchar(255) NOT NULL,   action_up varchar(255),   properties varchar(1023));"

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "SELECT column_name FROM information_schema.columns WHERE table_name = \'PLAYLIST\' AND column_name = \'LINKED_ITEM_ID\'"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Missing linked item column in playlist table and key action table in database, adding"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseChanger;->getDefaultKeyActions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x0

    return p0

    :goto_0
    if-eqz v2, :cond_1

    :try_start_7
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
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
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz p0, :cond_3

    :try_start_b
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v0
.end method

.method public static checkPlaylistProperties(Ljavax/sql/DataSource;)Z
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'PLAYLIST\' AND column_name = \'PROPERTIES\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing properties column in playlist table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE playlist ADD (properties varchar(1023))"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x0

    return p0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz p0, :cond_3

    :try_start_b
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v0
.end method

.method public static checkSchedulesTable(Ljavax/sql/DataSource;)V
    .locals 5

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "SELECT column_name FROM information_schema.columns WHERE table_name = \'PLAYLIST_SCHEDULE\'"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v3, :cond_0

    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :try_start_5
    sget-object v3, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Missing schedules tables, adding"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v3, "CREATE TABLE screen_layout_schedule (   id bigint PRIMARY KEY AUTO_INCREMENT,    screen_layout_id bigint NOT NULL,    time_from time NOT NULL, time_to time NOT NULL,    monday boolean NOT NULL, tuesday boolean NOT NULL, wednesday boolean NOT NULL, thursday boolean NOT NULL,    friday boolean NOT NULL, saturday boolean NOT NULL, sunday boolean NOT NULL,    date_from date, date_to date,    priority tinyint NOT NULL,   FOREIGN KEY (screen_layout_id) REFERENCES screen_layout(id));CREATE TABLE playlist_schedule (   id bigint PRIMARY KEY AUTO_INCREMENT,    playlist_id bigint NOT NULL, panel_item_id bigint,    time_from time NOT NULL, time_to time NOT NULL,    monday boolean NOT NULL, tuesday boolean NOT NULL, wednesday boolean NOT NULL, thursday boolean NOT NULL,    friday boolean NOT NULL, saturday boolean NOT NULL, sunday boolean NOT NULL,    date_from date, date_to date,    priority tinyint NOT NULL,   FOREIGN KEY (playlist_id) REFERENCES playlist(id), FOREIGN KEY (panel_item_id) REFERENCES panel_item(id));"

    invoke-static {v0, v3}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v0

    invoke-static {p0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutTimingDao;->getForAll(Ljavax/sql/DataSource;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->convertScreenLayouts(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->updateAll(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lsk/mimac/slideshow/database/dao/PlayingDao;->getForAll(Ljavax/sql/DataSource;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->convertPlaylists(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->updateAll(Ljava/util/List;Ljava/lang/Long;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->getAllIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v3}, Lsk/mimac/slideshow/database/dao/PlayingDao;->getForAll(Ljavax/sql/DataSource;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->convertPlaylists(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->updateAll(Ljava/util/List;Ljava/lang/Long;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_8
    const-string v0, "DROP TABLE screen_layout_timing; DROP TABLE playing;"

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    :cond_2
    return-void

    :catchall_2
    move-exception v0

    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0

    :catchall_4
    move-exception p0

    if-eqz v2, :cond_4

    :try_start_a
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v2

    :try_start_b
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_3
    if-eqz v1, :cond_5

    :try_start_c
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception v1

    :try_start_d
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_5
    if-eqz v0, :cond_6

    :try_start_e
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    throw p0
.end method

.method public static checkScreenLayoutInterval(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'SCREEN_LAYOUT\' AND column_name = \'INTERVAL\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing interval column in screen layout table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE screen_layout ADD COLUMN interval int DEFAULT 0 NOT NULL"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkScreenLayoutIntervalFloat(Ljavax/sql/DataSource;)Z
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "SELECT type_name FROM information_schema.columns WHERE table_name = \'SCREEN_LAYOUT\' AND column_name = \'INTERVAL\' AND type_name = \'INTEGER\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Interval column in screen layout table in database has old type, changing"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE screen_layout ALTER COLUMN interval SET DATA TYPE real NOT NULL"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x0

    return p0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz p0, :cond_3

    :try_start_b
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v0
.end method

.method public static checkScreenLayoutPowerOffColumn(Ljavax/sql/DataSource;)Z
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'SCREEN_LAYOUT\' AND column_name = \'POWER_OFF\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing power off column in screen layout table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE screen_layout ADD power_off boolean NOT NULL DEFAULT FALSE"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x0

    return p0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz p0, :cond_3

    :try_start_b
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v0
.end method

.method public static checkScreenLayoutRotation(Ljavax/sql/DataSource;)V
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'SCREEN_LAYOUT\' AND column_name = \'ROTATION\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing rotation column in screen layout table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE screen_layout ADD COLUMN rotation smallint DEFAULT 0 NOT NULL;ALTER TABLE item MODIFY COLUMN file_name varchar(255) NOT NULL"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method

.method public static checkScreenLayoutScreenSaverColumn(Ljavax/sql/DataSource;)Z
    .locals 4

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "SELECT column_name FROM information_schema.columns WHERE table_name = \'SCREEN_LAYOUT\' AND column_name = \'SCREEN_SAVER\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsk/mimac/slideshow/database/DatabaseChanger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Missing screen saver column in screen layout table in database, adding"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE screen_layout ADD screen_saver boolean NOT NULL DEFAULT FALSE; ALTER TABLE file_data MODIFY COLUMN action varchar(8000);"

    invoke-static {p0, v2}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    const/4 p0, 0x0

    return p0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz p0, :cond_3

    :try_start_b
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v0
.end method

.method private static createPanelItemTable(Ljava/sql/Connection;)V
    .locals 1

    const-string v0, "CREATE TABLE screen_layout (id integer PRIMARY KEY AUTO_INCREMENT, name varchar(50) NOT NULL); CREATE TABLE panel_item (id integer PRIMARY KEY AUTO_INCREMENT, screen_layout_id integer NOT NULL, name varchar(150) NOT NULL, background_color varchar(20) NOT NULL, x integer NOT NULL, y integer NOT NULL, height integer NOT NULL, width integer NOT NULL, main_panel boolean NOT NULL,FOREIGN KEY (screen_layout_id) REFERENCES screen_layout(id));CREATE TABLE screen_layout_timing (day integer DEFAULT NULL, hour int NOT NULL, screen_layout integer NOT NULL);ALTER TABLE playing ADD panel_item_id integer DEFAULT 1;ALTER TABLE playing ADD FOREIGN KEY (playlist) REFERENCES playlist(id);ALTER TABLE item ADD properties varchar(1023);"

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V

    invoke-static {p0}, Lsk/mimac/slideshow/database/DatabaseChanger;->addScreenLayoutTimingData(Ljava/sql/Connection;)V

    return-void
.end method

.method private static createTables(Ljava/sql/Connection;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE item (   id integer PRIMARY KEY AUTO_INCREMENT, file_name varchar(1023) NOT NULL, type integer NOT NULL,    description varchar(255) NOT NULL, properties varchar(1023)); CREATE TABLE playlist (   id integer PRIMARY KEY AUTO_INCREMENT,    name varchar(255) NOT NULL,    music INT default 0 NOT NULL,    number integer,    action varchar(255) NOT NULL,    linked_item_id bigint,    properties varchar(1023),    FOREIGN KEY (linked_item_id) REFERENCES item(id)); CREATE TABLE content (   playlist integer NOT NULL, item integer NOT NULL, position integer NOT NULL, length integer NOT NULL,   FOREIGN KEY (playlist) REFERENCES playlist(id), FOREIGN KEY (item) REFERENCES item(id)); CREATE TABLE grabber_data (   id integer PRIMARY KEY AUTO_INCREMENT, file_name varchar(255), url varchar(255), clear_folder boolean NOT NULL); CREATE TABLE user (   id integer PRIMARY KEY AUTO_INCREMENT, name varchar(50) NOT NULL, username varchar(50) NOT NULL,    password varchar(128) NOT NULL, homeDir varchar(50) NOT NULL, role varchar(15) NOT NULL); CREATE TABLE file_data (   id integer PRIMARY KEY AUTO_INCREMENT,    file_name varchar(255) NOT NULL,    start_when bigint,    delete_when bigint,    sync_code varchar(255),    action varchar(8000)); CREATE TABLE rss_server_message (   id integer PRIMARY KEY AUTO_INCREMENT, title varchar(255) NOT NULL, description varchar(255) NOT NULL,    start_when bigint, end_when bigint);CREATE TABLE screen_layout (   id integer PRIMARY KEY AUTO_INCREMENT, name varchar(50) NOT NULL, rotation smallint NOT NULL,    interval real NOT NULL, screen_saver boolean NOT NULL DEFAULT FALSE, power_off boolean NOT NULL DEFAULT FALSE); CREATE TABLE panel_item (   id integer PRIMARY KEY AUTO_INCREMENT, screen_layout_id integer NOT NULL, name varchar(150) NOT NULL,    display_id varchar(255),    background_color varchar(20) NOT NULL, x FLOAT4 NOT NULL, y FLOAT4 NOT NULL, height FLOAT4 NOT NULL,    width FLOAT4 NOT NULL, main_panel boolean NOT NULL, animation_type varchar(30) NOT NULL, animation_length integer NOT NULL,    display_order integer NOT NULL DEFAULT 0, properties varchar(1023), FOREIGN KEY (screen_layout_id) REFERENCES screen_layout(id));CREATE TABLE screen_layout_schedule (   id bigint PRIMARY KEY AUTO_INCREMENT,    screen_layout_id bigint NOT NULL,    time_from time NOT NULL, time_to time NOT NULL,    monday boolean NOT NULL, tuesday boolean NOT NULL, wednesday boolean NOT NULL, thursday boolean NOT NULL,    friday boolean NOT NULL, saturday boolean NOT NULL, sunday boolean NOT NULL,    date_from date, date_to date,    priority tinyint NOT NULL,   FOREIGN KEY (screen_layout_id) REFERENCES screen_layout(id));CREATE TABLE playlist_schedule (   id bigint PRIMARY KEY AUTO_INCREMENT,    playlist_id bigint NOT NULL, panel_item_id bigint,    time_from time NOT NULL, time_to time NOT NULL,    monday boolean NOT NULL, tuesday boolean NOT NULL, wednesday boolean NOT NULL, thursday boolean NOT NULL,    friday boolean NOT NULL, saturday boolean NOT NULL, sunday boolean NOT NULL,    date_from date, date_to date,    priority tinyint NOT NULL,   FOREIGN KEY (playlist_id) REFERENCES playlist(id), FOREIGN KEY (panel_item_id) REFERENCES panel_item(id));CREATE TABLE key_action (   id int PRIMARY KEY,   action_down varchar(255) NOT NULL,   action_up varchar(255),   properties varchar(1023));"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseChanger;->getDefaultKeyActions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/DBUtils;->process(Ljava/sql/Connection;Ljava/lang/String;)V

    return-void
.end method

.method private static getDefaultKeyActions()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO key_action (id, action_down, action_up, properties) VALUES (47, \'SHOW_ANDROID_WIFI_SETTINGS\', null, null),(32, \'SHOW_ANDROID_DISPLAY_SETTINGS\', null, null),(34, \'TOGGLE_FULLSCREEN\', null, null),(40, \'ROTATE_SCREEN_LAYOUT\', null, null),(22, \'NEXT_ITEM\', null, null),(4, \'NEXT_ITEM\', null, null),(21, \'PREVIOUS_ITEM\', null, null),(37, \'SHOW_INFO\', null, null),(83, \'SHOW_INFO\', null, null),(92, \'CHANGE_CONTENT_LENGTH\', null, \'diff=1\'),(93, \'CHANGE_CONTENT_LENGTH\', null, \'diff=-1\'),(131, \'SHOW_HELP\', null, null),(36, \'SHOW_HELP\', null, null),(62, \'SHOW_HELP\', null, null),(23, \'SHOW_HELP\', null, null),(29, \'SHOW_BASIC_SETTINGS\', null, null),(51, \'SHOW_ADVANCED_SETTINGS\', null, null),(30, \'BEEP\', null, null),(63, \'DELETE_LAST_FILE\', null, null),(7, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=0\'),(8, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=1\'),(9, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=2\'),(10, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=3\'),(11, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=4\'),(12, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=5\'),(13, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=6\'),(14, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=7\'),(15, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=8\'),(16, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=9\'),(140, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=10\'),(141, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=11\'),(142, \'CHANGE_TO_PLAYLIST_NUMBER\', null, \'number=12\'),(111, \'OPEN_LEFT_MENU\', null, null),(66, \'OPEN_LEFT_MENU\', null, null),(160, \'OPEN_LEFT_MENU\', null, null),(20, \'OPEN_LEFT_MENU\', null, null),(46, \'RELOAD_APP\', null, null),(127, \'PAUSE\', null, null),(126, \'RESUME\', null, null),(85, \'PAUSE_OR_RESUME\', null, null),(87, \'NEXT_ITEM\', null, null),(88, \'PREVIOUS_ITEM\', null, null),(89, \'PREVIOUS_ITEM\', null, null),(90, \'NEXT_ITEM\', null, null),(19, \'PAUSE\', \'RESUME\', null);"

    return-object v0
.end method
