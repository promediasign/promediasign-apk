.class public Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;
.super Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/sql/DataSource;)V
    .locals 1

    const-string v0, "screen_layout_schedule"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method private createInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->mapItemToStatement(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    return-void
.end method

.method private deleteInternal(Ljava/sql/PreparedStatement;Ljava/lang/Long;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    return-void
.end method

.method public static getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    return-object v0
.end method

.method private mapItemToStatement(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V
    .locals 3

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->getScreenLayoutId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-virtual {p0, p1, p2}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->mapItemToStatementInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/AbstractSchedule;)V

    return-void
.end method

.method private mapRsToSchedule(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>()V

    const-string v1, "screen_layout_id"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->setScreenLayoutId(J)V

    invoke-virtual {p0, p1, v0}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->mapRsToScheduleInternal(Ljava/sql/ResultSet;Lsk/mimac/slideshow/database/entity/AbstractSchedule;)V

    return-object v0
.end method

.method public static setDataSource(Ljavax/sql/DataSource;)V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;-><init>(Ljavax/sql/DataSource;)V

    sput-object v0, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    return-void
.end method

.method private updateInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->mapItemToStatement(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p2, 0xe

    invoke-interface {p1, p2, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    return-void
.end method


# virtual methods
.method public deleteAllForLayout(I)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "DELETE FROM screen_layout_schedule WHERE screen_layout_id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I
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
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
.end method

.method public deleteAllWithPriority(I)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "DELETE FROM screen_layout_schedule WHERE priority = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I
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
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
.end method

.method public getAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, screen_layout_id, time_from, time_to, monday, tuesday, wednesday, thursday, friday, saturday, sunday, date_from, date_to, priority FROM screen_layout_schedule ORDER BY priority DESC, id DESC"

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

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->mapRsToSchedule(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

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

.method public getAllForLayout(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, screen_layout_id, time_from, time_to, monday, tuesday, wednesday, thursday, friday, saturday, sunday, date_from, date_to, priority FROM screen_layout_schedule WHERE screen_layout_id = ? ORDER BY id"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->mapRsToSchedule(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :goto_1
    if-eqz p1, :cond_1

    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
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
.end method

.method public getAllLayouts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT screen_layout_id FROM screen_layout_schedule"

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

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public getLayoutForDateTime(Lj$/time/LocalDateTime;)Ljava/lang/Integer;
    .locals 5

    const-string v0, "SELECT screen_layout_id FROM screen_layout_schedule WHERE time_from <= ? AND time_to >= ? AND "

    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->toTime(Lj$/time/LocalTime;)Ljava/sql/Time;

    move-result-object v1

    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/database/dao/AbstractScheduleDao;->toDate(Lj$/time/LocalDate;)Ljava/sql/Date;

    move-result-object v2

    invoke-virtual {p1}, Lj$/time/LocalDateTime;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v3}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = TRUE AND (date_from IS NULL OR date_from <= ?) AND (date_to IS NULL OR date_to >= ?) ORDER BY priority DESC, id DESC"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    const/4 v4, 0x2

    invoke-interface {p1, v4, v1}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    const/4 v1, 0x3

    invoke-interface {p1, v1, v2}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    const/4 v1, 0x4

    invoke-interface {p1, v1, v2}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    return-object p1

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
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz p1, :cond_2

    :try_start_9
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p1

    :try_start_a
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz v3, :cond_3

    :try_start_b
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
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

.method public insert(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "INSERT INTO screen_layout_schedule (screen_layout_id, time_from, time_to, monday, tuesday, wednesday, thursday, friday, saturday, sunday, date_from, date_to, priority) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v1, p1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->createInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V
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

    sget-object p1, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Added screen layout schedule"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

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

.method public insertAll(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "INSERT INTO screen_layout_schedule (screen_layout_id, time_from, time_to, monday, tuesday, wednesday, thursday, friday, saturday, sunday, date_from, date_to, priority) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

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

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-direct {p0, v1, v3}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->createInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V
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

    sget-object v0, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Inserted screen layout schedules (count={})"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

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

.method public updateAll(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "UPDATE screen_layout_schedule SET screen_layout_id = ?, time_from = ?, time_to = ?, monday = ?, tuesday = ?, wednesday = ?, thursday = ?, friday = ?, saturday = ?, sunday = ?, date_from = ?, date_to = ?, priority = ? WHERE id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v2, "INSERT INTO screen_layout_schedule (screen_layout_id, time_from, time_to, monday, tuesday, wednesday, thursday, friday, saturday, sunday, date_from, date_to, priority) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string v3, "DELETE FROM screen_layout_schedule WHERE id = ?"

    invoke-interface {v0, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v4, "SELECT id FROM screen_layout_schedule"

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    :try_start_5
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "id"

    invoke-interface {v6, v7}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :try_start_6
    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-virtual {v7}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getId()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-direct {p0, v2, v7}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->createInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_8

    :cond_1
    invoke-direct {p0, v1, v7}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->updateInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    invoke-virtual {v7}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-direct {p0, v3, v6}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->deleteInternal(Ljava/sql/PreparedStatement;Ljava/lang/Long;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :cond_3
    :try_start_7
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v3, :cond_4

    :try_start_8
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_c

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    :try_start_9
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_e

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    :try_start_a
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    goto :goto_10

    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    sget-object v0, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Updated screen layout schedules (count={})"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    return-void

    :catchall_5
    move-exception p1

    goto :goto_a

    :goto_6
    if-eqz v6, :cond_7

    :try_start_b
    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v5

    :try_start_c
    invoke-virtual {p1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_8
    if-eqz v4, :cond_8

    :try_start_d
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v4

    :try_start_e
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_9
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_a
    if-eqz v3, :cond_9

    :try_start_f
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v3

    :try_start_10
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_b
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :goto_c
    if-eqz v2, :cond_a

    :try_start_11
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_d

    :catchall_9
    move-exception v2

    :try_start_12
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_d
    throw p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :goto_e
    if-eqz v1, :cond_b

    :try_start_13
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_f

    :catchall_a
    move-exception v1

    :try_start_14
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_f
    throw p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :goto_10
    if-eqz v0, :cond_c

    :try_start_15
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_11

    :catchall_b
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_11
    throw p1
.end method
