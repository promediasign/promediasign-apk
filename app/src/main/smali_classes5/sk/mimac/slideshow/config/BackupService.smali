.class public abstract Lsk/mimac/slideshow/config/BackupService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/config/BackupService$CommentVisitor;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/config/BackupService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/config/BackupService;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static exportToXml(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/config/BackupService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Exporting configuration to XML"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance v0, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/Configuration;-><init>()V

    new-instance v1, Lorg/simpleframework/xml/transform/RegistryMatcher;

    invoke-direct {v1}, Lorg/simpleframework/xml/transform/RegistryMatcher;-><init>()V

    new-instance v2, Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;

    invoke-direct {v2}, Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;-><init>()V

    const-class v3, Lj$/time/LocalTime;

    invoke-virtual {v1, v3, v2}, Lorg/simpleframework/xml/transform/RegistryMatcher;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/transform/Transform;)V

    new-instance v2, Lsk/mimac/slideshow/config/format/LocalDateFormatTransformer;

    invoke-direct {v2}, Lsk/mimac/slideshow/config/format/LocalDateFormatTransformer;-><init>()V

    const-class v3, Lj$/time/LocalDate;

    invoke-virtual {v1, v3, v2}, Lorg/simpleframework/xml/transform/RegistryMatcher;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/transform/Transform;)V

    new-instance v2, Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;

    invoke-direct {v2}, Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;-><init>()V

    const-class v3, Lj$/time/LocalDateTime;

    invoke-virtual {v1, v3, v2}, Lorg/simpleframework/xml/transform/RegistryMatcher;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/transform/Transform;)V

    new-instance v2, Lorg/simpleframework/xml/strategy/VisitorStrategy;

    new-instance v3, Lsk/mimac/slideshow/config/BackupService$CommentVisitor;

    invoke-direct {v3}, Lsk/mimac/slideshow/config/BackupService$CommentVisitor;-><init>()V

    invoke-direct {v2, v3}, Lorg/simpleframework/xml/strategy/VisitorStrategy;-><init>(Lorg/simpleframework/xml/strategy/Visitor;)V

    new-instance v3, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v3, v2, v1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {v0, p0, p1}, Lsk/mimac/slideshow/config/BackupService;->fillFields(Lsk/mimac/slideshow/config/model/Configuration;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lsk/mimac/slideshow/config/ConfigurationException;

    const-string v0, "Can\'t export configuration"

    invoke-direct {p1, v0, p0}, Lsk/mimac/slideshow/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static exportToXmlExceptName()[B
    .locals 3

    .line 1
    const-string v0, "settings"

    .line 2
    .line 3
    const-string v1, "true"

    .line 4
    .line 5
    const-string v2, "screenLayouts"

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v1}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "downloads"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v2, "users"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v2, "fileDatas"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string v2, "triggers"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v2, "keyMapping"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string v1, "withDeviceName"

    .line 37
    .line 38
    const-string v2, "false"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v1, "Other devices configuration synchronization"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lsk/mimac/slideshow/config/BackupService;->exportToXml(Ljava/util/Map;Ljava/lang/String;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method private static fillFields(Lsk/mimac/slideshow/config/model/Configuration;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/config/model/Configuration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lsk/mimac/slideshow/config/BackupService;->getInfoType(Ljava/lang/String;)Lsk/mimac/slideshow/config/model/InfoType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setInfo(Lsk/mimac/slideshow/config/model/InfoType;)V

    const-string p2, "settings"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "withDeviceName"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "false"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lsk/mimac/slideshow/config/BackupService;->getSettingsType(Z)Lsk/mimac/slideshow/config/model/SettingsType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setSettings(Lsk/mimac/slideshow/config/model/SettingsType;)V

    :cond_0
    const-string p2, "screenLayouts"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getItemsType()Lsk/mimac/slideshow/config/model/ItemsType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setItems(Lsk/mimac/slideshow/config/model/ItemsType;)V

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getPlaylistsType()Lsk/mimac/slideshow/config/model/PlaylistsType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setPlaylists(Lsk/mimac/slideshow/config/model/PlaylistsType;)V

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getScreenLayoutsType()Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setScreenLayouts(Lsk/mimac/slideshow/config/model/ScreenLayoutsType;)V

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getAudioScheduleType()Lsk/mimac/slideshow/config/model/AudioScheduleType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setAudioSchedule(Lsk/mimac/slideshow/config/model/AudioScheduleType;)V

    :cond_1
    const-string p2, "downloads"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getGrabbersType()Lsk/mimac/slideshow/config/model/GrabbersType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setDownloads(Lsk/mimac/slideshow/config/model/GrabbersType;)V

    :cond_2
    const-string p2, "users"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getUsersType()Lsk/mimac/slideshow/config/model/UsersType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setUsers(Lsk/mimac/slideshow/config/model/UsersType;)V

    :cond_3
    const-string p2, "rssMessages"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getRssMessagesType()Lsk/mimac/slideshow/config/model/RssServerMessagesType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setRssMessages(Lsk/mimac/slideshow/config/model/RssServerMessagesType;)V

    :cond_4
    const-string p2, "fileDatas"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getFileDatasType()Lsk/mimac/slideshow/config/model/FileDatasType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setFileDatas(Lsk/mimac/slideshow/config/model/FileDatasType;)V

    :cond_5
    const-string p2, "triggers"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getTriggersType()Lsk/mimac/slideshow/config/model/TriggersType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setTriggers(Lsk/mimac/slideshow/config/model/TriggersType;)V

    :cond_6
    const-string p2, "keyMapping"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getKeyMappingsType()Lsk/mimac/slideshow/config/model/KeyMappingsType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/config/model/Configuration;->setKeyMappings(Lsk/mimac/slideshow/config/model/KeyMappingsType;)V

    :cond_7
    const-string p2, "additionalData"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lsk/mimac/slideshow/config/BackupService;->getAdditionalDataType()Lsk/mimac/slideshow/config/model/AdditionalDatasType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/config/model/Configuration;->setAdditionalData(Lsk/mimac/slideshow/config/model/AdditionalDatasType;)V

    :cond_8
    return-void
.end method

.method private static getAdditionalDataType()Lsk/mimac/slideshow/config/model/AdditionalDatasType;
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->HARDWARE_DRIVER_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/config/model/AdditionalDataType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/AdditionalDataType;-><init>()V

    const-string v1, "HARDWARE_DRIVER"

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/AdditionalDataType;->setType(Ljava/lang/String;)V

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->HARDWARE_DRIVER_FILE:Ljava/lang/String;

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lsk/mimac/slideshow/utils/FileUtils2;->loadFileToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/AdditionalDataType;->setValue(Ljava/lang/String;)V

    new-instance v1, Lsk/mimac/slideshow/config/model/AdditionalDatasType;

    invoke-direct {v1}, Lsk/mimac/slideshow/config/model/AdditionalDatasType;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/config/model/AdditionalDatasType;->setData(Ljava/util/List;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/AdditionalDatasType;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getAudioScheduleType()Lsk/mimac/slideshow/config/model/AudioScheduleType;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getAllForPanel(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-static {v2}, Lsk/mimac/slideshow/config/BackupService;->getPlaylistScheduleType(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)Lsk/mimac/slideshow/config/model/PlaylistScheduleType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lsk/mimac/slideshow/config/model/AudioScheduleType;

    invoke-direct {v1}, Lsk/mimac/slideshow/config/model/AudioScheduleType;-><init>()V

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/config/model/AudioScheduleType;->setSchedule(Ljava/util/List;)V

    return-object v1
.end method

.method private static getFileDatasType()Lsk/mimac/slideshow/config/model/FileDatasType;
    .locals 6

    new-instance v0, Lsk/mimac/slideshow/config/model/FileDatasType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/FileDatasType;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/FileDatasType;->setFileData(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getAll()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/FileData;

    new-instance v3, Lsk/mimac/slideshow/config/model/FileDataType;

    invoke-direct {v3}, Lsk/mimac/slideshow/config/model/FileDataType;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lsk/mimac/slideshow/config/model/FileDataType;->setId(J)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/FileDataType;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getStartWhen()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getStartWhen()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Lj$/time/Instant;

    move-result-object v4

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/ZonedDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/FileDataType;->setStartWhen(Lj$/time/LocalDateTime;)V

    :cond_0
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getDeleteWhen()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getDeleteWhen()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Lj$/time/Instant;

    move-result-object v4

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/ZonedDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/FileDataType;->setDeleteWhen(Lj$/time/LocalDateTime;)V

    :cond_1
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/config/BackupService;->mapProperties(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/FileDataType;->setProperty(Ljava/util/List;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/FileDataType;->getProperty()Ljava/util/List;

    move-result-object v4

    const-string v5, "syncCode"

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lsk/mimac/slideshow/config/BackupService;->mapProperty(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/config/model/PropertyType;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/FileDatasType;->getFileData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method private static getGrabbersType()Lsk/mimac/slideshow/config/model/GrabbersType;
    .locals 6

    new-instance v0, Lsk/mimac/slideshow/config/model/GrabbersType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/GrabbersType;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/GrabbersType;->setDownload(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/GrabberData;

    new-instance v3, Lsk/mimac/slideshow/config/model/GrabberType;

    invoke-direct {v3}, Lsk/mimac/slideshow/config/model/GrabberType;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lsk/mimac/slideshow/config/model/GrabberType;->setId(J)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/GrabberType;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/GrabberType;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/config/model/GrabberType;->setClearFolder(Z)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/GrabbersType;->getDownload()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getInfoType(Ljava/lang/String;)Lsk/mimac/slideshow/config/model/InfoType;
    .locals 2

    new-instance v0, Lsk/mimac/slideshow/config/model/InfoType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/InfoType;-><init>()V

    sget-object v1, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/InfoType;->setVersion(Ljava/lang/String;)V

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/InfoType;->setExported(Lj$/time/LocalDateTime;)V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/config/model/InfoType;->setDescription(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static getItemsType()Lsk/mimac/slideshow/config/model/ItemsType;
    .locals 6

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemsType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/ItemsType;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ItemsType;->setItem(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/ItemDao;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/Item;

    new-instance v3, Lsk/mimac/slideshow/config/model/ItemType;

    invoke-direct {v3}, Lsk/mimac/slideshow/config/model/ItemType;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lsk/mimac/slideshow/config/model/ItemType;->setId(J)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ItemType;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ItemType;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/config/model/ItemTypeType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/config/model/ItemTypeType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ItemType;->setItemType(Lsk/mimac/slideshow/config/model/ItemTypeType;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/config/BackupService;->mapProperties(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/config/model/ItemType;->setProperty(Ljava/util/List;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/ItemsType;->getItem()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getKeyMappingsType()Lsk/mimac/slideshow/config/model/KeyMappingsType;
    .locals 5

    new-instance v0, Lsk/mimac/slideshow/config/model/KeyMappingsType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/KeyMappingsType;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/KeyMappingsType;->setKeyMapping(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getInstance()Lsk/mimac/slideshow/database/dao/KeyActionDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/KeyAction;

    new-instance v3, Lsk/mimac/slideshow/config/model/KeyMappingType;

    invoke-direct {v3}, Lsk/mimac/slideshow/config/model/KeyMappingType;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/KeyAction;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/KeyMappingType;->setKeyCode(I)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/KeyAction;->getActionDown()Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/KeyMappingType;->setActionDown(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/KeyAction;->getActionUp()Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/KeyAction;->getActionUp()Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/KeyMappingType;->setActionUp(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/KeyAction;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/config/BackupService;->mapProperties(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/config/model/KeyMappingType;->setProperty(Ljava/util/List;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/KeyMappingsType;->getKeyMapping()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getPlaylistScheduleType(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)Lsk/mimac/slideshow/config/model/PlaylistScheduleType;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;-><init>()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeFrom()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setTimeFrom(Lj$/time/LocalTime;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeTo()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setTimeTo(Lj$/time/LocalTime;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isMonday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setMonday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isTuesday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setTuesday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isWednesday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setWednesday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isThursday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setThursday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isFriday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setFriday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isSaturday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setSaturday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isSunday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setSunday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setPriority(I)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;->getPlaylistId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setPlaylistId(J)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateFrom()Lj$/time/LocalDate;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateFrom()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setDateFrom(Lj$/time/LocalDate;)V

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateTo()Lj$/time/LocalDate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateTo()Lj$/time/LocalDate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->setDateTo(Lj$/time/LocalDate;)V

    :cond_1
    return-object v0
.end method

.method private static getPlaylistsType()Lsk/mimac/slideshow/config/model/PlaylistsType;
    .locals 8

    new-instance v0, Lsk/mimac/slideshow/config/model/PlaylistsType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/PlaylistsType;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/PlaylistsType;->setPlaylist(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/Playlist;

    new-instance v3, Lsk/mimac/slideshow/config/model/PlaylistType;

    invoke-direct {v3}, Lsk/mimac/slideshow/config/model/PlaylistType;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lsk/mimac/slideshow/config/model/PlaylistType;->setId(J)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/PlaylistType;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getNumber()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/PlaylistType;->setNumber(Ljava/lang/Integer;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/config/model/MusicTypeType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/config/model/MusicTypeType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/PlaylistType;->setMusicType(Lsk/mimac/slideshow/config/model/MusicTypeType;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getAction()Lsk/mimac/slideshow/enums/PlaylistAction;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/config/model/PlaylistActionType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/config/model/PlaylistActionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/PlaylistType;->setAction(Lsk/mimac/slideshow/config/model/PlaylistActionType;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/PlaylistType;->setContent(Ljava/util/List;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/config/BackupService;->mapProperties(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/PlaylistType;->setProperty(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v4

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lsk/mimac/slideshow/database/dao/ContentDao;->getAllItemsSorted(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/utils/Couple;

    new-instance v5, Lsk/mimac/slideshow/config/model/ContentType;

    invoke-direct {v5}, Lsk/mimac/slideshow/config/model/ContentType;-><init>()V

    invoke-virtual {v4}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/database/entity/Item;

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/Item;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lsk/mimac/slideshow/config/model/ContentType;->setItemId(J)V

    invoke-virtual {v4}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lsk/mimac/slideshow/config/model/ContentType;->setLength(I)V

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/PlaylistType;->getContent()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistsType;->getPlaylist()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method private static getRssMessagesType()Lsk/mimac/slideshow/config/model/RssServerMessagesType;
    .locals 6

    new-instance v0, Lsk/mimac/slideshow/config/model/RssServerMessagesType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/RssServerMessagesType;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/RssServerMessagesType;->setRssMessage(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getInstance()Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/RssServerMessage;

    new-instance v3, Lsk/mimac/slideshow/config/model/RssServerMessageType;

    invoke-direct {v3}, Lsk/mimac/slideshow/config/model/RssServerMessageType;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lsk/mimac/slideshow/config/model/RssServerMessageType;->setId(J)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/RssServerMessageType;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/config/model/RssServerMessageType;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/RssServerMessagesType;->getRssMessage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getScreenLayoutScheduleType(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;
    .locals 2

    new-instance v0, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;-><init>()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeFrom()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setTimeFrom(Lj$/time/LocalTime;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getTimeTo()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setTimeTo(Lj$/time/LocalTime;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isMonday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setMonday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isTuesday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setTuesday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isWednesday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setWednesday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isThursday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setThursday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isFriday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setFriday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isSaturday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setSaturday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->isSunday()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setSunday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setPriority(I)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateFrom()Lj$/time/LocalDate;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateFrom()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setDateFrom(Lj$/time/LocalDate;)V

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateTo()Lj$/time/LocalDate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->getDateTo()Lj$/time/LocalDate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->setDateTo(Lj$/time/LocalDate;)V

    :cond_1
    return-object v0
.end method

.method private static getScreenLayoutsType()Lsk/mimac/slideshow/config/model/ScreenLayoutsType;
    .locals 9

    new-instance v0, Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/ScreenLayoutsType;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutsType;->setScreenLayout(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    new-instance v3, Lsk/mimac/slideshow/config/model/ScreenLayoutType;

    invoke-direct {v3}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->setId(I)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getRotation()S

    move-result v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->setRotation(I)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getInterval()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->setInterval(Ljava/lang/Double;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->setPanel(Ljava/util/List;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->isScreenSaver()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->setScreensaver(Ljava/lang/Boolean;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->isPowerOff()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->setPowerOff(Ljava/lang/Boolean;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v4

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getAllForLayout(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/database/entity/PanelItem;

    new-instance v6, Lsk/mimac/slideshow/config/model/PanelType;

    invoke-direct {v6}, Lsk/mimac/slideshow/config/model/PanelType;-><init>()V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/config/model/PanelType;->setId(I)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/config/model/PanelType;->setName(Ljava/lang/String;)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getBackgroundColor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/config/model/PanelType;->setBackgroundColor(Ljava/lang/String;)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lsk/mimac/slideshow/config/model/PanelType;->setX(D)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getY()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lsk/mimac/slideshow/config/model/PanelType;->setY(D)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getWidth()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lsk/mimac/slideshow/config/model/PanelType;->setWidth(D)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getHeight()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lsk/mimac/slideshow/config/model/PanelType;->setHeight(D)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->isMainPanel()Z

    move-result v7

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/config/model/PanelType;->setMainPanel(Z)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationLength()I

    move-result v7

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/config/model/PanelType;->setAnimationLength(I)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationType()Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsk/mimac/slideshow/config/model/AnimationTypeType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/config/model/AnimationTypeType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/config/model/PanelType;->setAnimationType(Lsk/mimac/slideshow/config/model/AnimationTypeType;)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lsk/mimac/slideshow/config/BackupService;->mapProperties(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/config/model/PanelType;->setProperty(Ljava/util/List;)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getDisplayId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/config/model/PanelType;->setDisplayId(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/config/model/PanelType;->setSchedule(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v7

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getAllForPanel(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v6}, Lsk/mimac/slideshow/config/model/PanelType;->getSchedule()Ljava/util/List;

    move-result-object v8

    invoke-static {v7}, Lsk/mimac/slideshow/config/BackupService;->getPlaylistScheduleType(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)Lsk/mimac/slideshow/config/model/PlaylistScheduleType;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getPanel()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v4

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getAllForLayout(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->setSchedule(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getSchedule()Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Lsk/mimac/slideshow/config/BackupService;->getScreenLayoutScheduleType(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/ScreenLayoutsType;->getScreenLayout()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method private static getSettingsType(Z)Lsk/mimac/slideshow/config/model/SettingsType;
    .locals 8

    new-instance v0, Lsk/mimac/slideshow/config/model/SettingsType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/SettingsType;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/SettingsType;->setSetting(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->values()[Lsk/mimac/slideshow/settings/UserSettings;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    new-instance v5, Lsk/mimac/slideshow/config/model/SettingType;

    invoke-direct {v5}, Lsk/mimac/slideshow/config/model/SettingType;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsk/mimac/slideshow/config/model/SettingType;->setKey(Ljava/lang/String;)V

    sget-object v6, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_PASSWORD:Lsk/mimac/slideshow/settings/UserSettings;

    if-ne v4, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CRYPT:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lsk/mimac/slideshow/settings/UserSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/utils/CryptUtils;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Lsk/mimac/slideshow/config/model/SettingType;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    sget-object v6, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    if-ne v4, v6, :cond_1

    if-nez p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Lsk/mimac/slideshow/settings/UserSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/SettingsType;->getSetting()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getTriggersType()Lsk/mimac/slideshow/config/model/TriggersType;
    .locals 2

    new-instance v0, Lsk/mimac/slideshow/config/model/TriggersType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/TriggersType;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/triggers/TriggersUtils;->loadWorkspace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/TriggersType;->setWorkspace(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/triggers/TriggersUtils;->loadCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/TriggersType;->setCode(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getUsersType()Lsk/mimac/slideshow/config/model/UsersType;
    .locals 6

    new-instance v0, Lsk/mimac/slideshow/config/model/UsersType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/UsersType;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/config/model/UsersType;->setUser(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/AccessUser;

    new-instance v3, Lsk/mimac/slideshow/config/model/UserType;

    invoke-direct {v3}, Lsk/mimac/slideshow/config/model/UserType;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lsk/mimac/slideshow/config/model/UserType;->setId(J)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/UserType;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/UserType;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/config/model/UserType;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getRole()Lsk/mimac/slideshow/enums/UserRole;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/config/model/UserRoleType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/config/model/UserRoleType;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/config/model/UserType;->setRole(Lsk/mimac/slideshow/config/model/UserRoleType;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/UsersType;->getUser()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static mapProperties(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lsk/mimac/slideshow/config/BackupService;->mapProperty(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/config/model/PropertyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static mapProperty(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/config/model/PropertyType;
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/config/model/PropertyType;

    invoke-direct {v0}, Lsk/mimac/slideshow/config/model/PropertyType;-><init>()V

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/config/model/PropertyType;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/config/model/PropertyType;->setValue(Ljava/lang/String;)V

    return-object v0
.end method
