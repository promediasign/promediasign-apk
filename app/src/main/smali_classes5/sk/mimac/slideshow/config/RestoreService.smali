.class public abstract Lsk/mimac/slideshow/config/RestoreService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/config/RestoreService$IdMapper;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/config/RestoreService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/config/RestoreService;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private static checkExistingPlaylistLinkedItemId(Lsk/mimac/slideshow/config/model/PlaylistType;Lsk/mimac/slideshow/database/entity/Playlist;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)V
    .locals 2

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getContent()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lsk/mimac/slideshow/config/RestoreService$IdMapper;->access$100(Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getContent()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/config/model/ContentType;

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/ContentType;->getItemId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/dao/ItemDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object p0

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->updateLinkedItemId(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Playlist;->getLinkedItemId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object p0

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->updateLinkedItemId(Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_1
    return-void
.end method

.method private static getPlaylistScheduleType(Lsk/mimac/slideshow/config/model/PlaylistScheduleType;Ljava/lang/Long;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Lsk/mimac/slideshow/database/entity/PlaylistSchedule;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>()V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;->setPanelItemId(Ljava/lang/Long;)V

    invoke-static {p2}, Lsk/mimac/slideshow/config/RestoreService$IdMapper;->access$200(Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->getPlaylistId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;->setPlaylistId(J)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->getTimeFrom()Lj$/time/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeFrom(Lj$/time/LocalTime;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->getTimeTo()Lj$/time/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->isMonday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setMonday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->isTuesday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTuesday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->isWednesday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setWednesday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->isThursday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setThursday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->isFriday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setFriday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->isSaturday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSaturday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->isSunday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSunday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->getPriority()I

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setPriority(I)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->getDateFrom()Lj$/time/LocalDate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->getDateFrom()Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setDateFrom(Lj$/time/LocalDate;)V

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->getDateTo()Lj$/time/LocalDate;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;->getDateTo()Lj$/time/LocalDate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setDateTo(Lj$/time/LocalDate;)V

    :cond_1
    return-object v0
.end method

.method private static getScreenLayoutScheduleType(Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;I)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>()V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->setScreenLayoutId(J)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->getTimeFrom()Lj$/time/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeFrom(Lj$/time/LocalTime;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->getTimeTo()Lj$/time/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->isMonday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setMonday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->isTuesday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTuesday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->isWednesday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setWednesday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->isThursday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setThursday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->isFriday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setFriday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->isSaturday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSaturday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->isSunday()Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSunday(Z)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->getPriority()I

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setPriority(I)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->getDateFrom()Lj$/time/LocalDate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->getDateFrom()Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setDateFrom(Lj$/time/LocalDate;)V

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->getDateTo()Lj$/time/LocalDate;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;->getDateTo()Lj$/time/LocalDate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setDateTo(Lj$/time/LocalDate;)V

    :cond_1
    return-object v0
.end method

.method private static getSerializer()Lorg/simpleframework/xml/Serializer;
    .locals 3

    new-instance v0, Lorg/simpleframework/xml/transform/RegistryMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/RegistryMatcher;-><init>()V

    new-instance v1, Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;

    invoke-direct {v1}, Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;-><init>()V

    const-class v2, Lj$/time/LocalTime;

    invoke-virtual {v0, v2, v1}, Lorg/simpleframework/xml/transform/RegistryMatcher;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/transform/Transform;)V

    new-instance v1, Lsk/mimac/slideshow/config/format/LocalDateFormatTransformer;

    invoke-direct {v1}, Lsk/mimac/slideshow/config/format/LocalDateFormatTransformer;-><init>()V

    const-class v2, Lj$/time/LocalDate;

    invoke-virtual {v0, v2, v1}, Lorg/simpleframework/xml/transform/RegistryMatcher;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/transform/Transform;)V

    new-instance v1, Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;

    invoke-direct {v1}, Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;-><init>()V

    const-class v2, Lj$/time/LocalDateTime;

    invoke-virtual {v0, v2, v1}, Lorg/simpleframework/xml/transform/RegistryMatcher;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/transform/Transform;)V

    new-instance v1, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/transform/Matcher;)V

    return-object v1
.end method

.method private static hashConfiguration(Lsk/mimac/slideshow/config/model/Configuration;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/config/RestoreService;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/config/model/Configuration;->setInfo(Lsk/mimac/slideshow/config/model/InfoType;)V

    invoke-interface {v0, p0, v1}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/codec/digest/DigestUtils;->sha256([B)[B

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array p0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "%064x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static importFromXml(Ljava/io/File;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lsk/mimac/slideshow/config/RestoreService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Restoring configuration from XML"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/config/RestoreService;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    const-class v1, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-interface {v0, v1, p0}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/File;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-static {p0, p1}, Lsk/mimac/slideshow/config/RestoreService;->processFields(Lsk/mimac/slideshow/config/model/Configuration;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lsk/mimac/slideshow/config/ConfigurationException;

    const-string v0, "Can\'t import configuration"

    invoke-direct {p1, v0, p0}, Lsk/mimac/slideshow/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static importFromXml(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lsk/mimac/slideshow/config/RestoreService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Restoring configuration from XML"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/config/RestoreService;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    const-class v1, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-interface {v0, v1, p0}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-static {p0, p1}, Lsk/mimac/slideshow/config/RestoreService;->processFields(Lsk/mimac/slideshow/config/model/Configuration;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lsk/mimac/slideshow/config/ConfigurationException;

    const-string v0, "Can\'t import configuration"

    invoke-direct {p1, v0, p0}, Lsk/mimac/slideshow/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static importFromXml(Ljava/io/File;Lsk/mimac/slideshow/enums/ConfigImportType;)Z
    .locals 2

    .line 3
    sget-object v0, Lsk/mimac/slideshow/config/RestoreService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Restoring configuration from XML"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/config/RestoreService;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    const-class v1, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-interface {v0, v1, p0}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/File;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-static {p0, p1}, Lsk/mimac/slideshow/config/RestoreService;->processFields(Lsk/mimac/slideshow/config/model/Configuration;Lsk/mimac/slideshow/enums/ConfigImportType;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lsk/mimac/slideshow/config/RestoreService;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t import configuration"

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static importFromXml(Ljava/io/InputStream;Lsk/mimac/slideshow/enums/ConfigImportType;)Z
    .locals 2

    .line 4
    sget-object v0, Lsk/mimac/slideshow/config/RestoreService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Restoring configuration from XML"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/config/RestoreService;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    const-class v1, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-interface {v0, v1, p0}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-static {p0, p1}, Lsk/mimac/slideshow/config/RestoreService;->processFields(Lsk/mimac/slideshow/config/model/Configuration;Lsk/mimac/slideshow/enums/ConfigImportType;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lsk/mimac/slideshow/config/RestoreService;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t import configuration"

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static mapProperties(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/config/model/PropertyType;

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/PropertyType;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/PropertyType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static processAdditionalData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/AdditionalDataType;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/config/model/AdditionalDataType;

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/AdditionalDataType;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HARDWARE_DRIVER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->HARDWARE_DRIVER_FILE:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->HARDWARE_DRIVER_FILE:Ljava/lang/String;

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lsk/mimac/slideshow/utils/FileUtils2;->loadFileToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/AdditionalDataType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/AdditionalDataType;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverService;->start()V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/io/File;

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->HARDWARE_DRIVER_FILE:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverService;->stop()V

    :cond_4
    return-void
.end method

.method private static processAudioSchedule(Lsk/mimac/slideshow/config/model/AudioScheduleType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)V
    .locals 3

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/AudioScheduleType;->getSchedule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->deleteAllForPanel(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/AudioScheduleType;->getSchedule()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v2

    invoke-static {v0, v1, p1}, Lsk/mimac/slideshow/config/RestoreService;->getPlaylistScheduleType(Lsk/mimac/slideshow/config/model/PlaylistScheduleType;Ljava/lang/Long;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static processDownloadsType(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/GrabberType;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/config/model/GrabberType;

    new-instance v2, Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/GrabberType;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/GrabberType;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/GrabberType;->isClearFolder()Z

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lsk/mimac/slideshow/database/entity/GrabberData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->deleteAll()V

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/dao/GrabberDao;->create(Ljava/util/List;)V

    return-void
.end method

.method private static processFields(Lsk/mimac/slideshow/config/model/Configuration;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/config/model/Configuration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "import-settings"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getSettings()Lsk/mimac/slideshow/config/model/SettingsType;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/config/RestoreService;->processSettingsType(Lsk/mimac/slideshow/config/model/SettingsType;)V

    :cond_0
    const-string v0, "import-screen_layouts_playlists_items"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "delete-screen_layouts_playlists_items"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    goto :goto_0

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/enums/ConfigImportType;->KEEP:Lsk/mimac/slideshow/enums/ConfigImportType;

    :goto_0
    invoke-static {p0, v0}, Lsk/mimac/slideshow/config/RestoreService;->processScreenLayoutsPlaylistsItems(Lsk/mimac/slideshow/config/model/Configuration;Lsk/mimac/slideshow/enums/ConfigImportType;)Z

    :cond_2
    const-string v0, "import-grabber"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getDownloads()Lsk/mimac/slideshow/config/model/GrabbersType;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/GrabbersType;->getDownload()Ljava/util/List;

    move-result-object v0

    const-string v1, "delete-grabber"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/config/RestoreService;->processDownloadsType(Ljava/util/List;Z)V

    :cond_3
    const-string v0, "import-users"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getUsers()Lsk/mimac/slideshow/config/model/UsersType;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/UsersType;->getUser()Ljava/util/List;

    move-result-object v0

    const-string v1, "delete-users"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/config/RestoreService;->processUsersType(Ljava/util/List;Z)V

    :cond_4
    const-string v0, "import-rss_messages"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getRssMessages()Lsk/mimac/slideshow/config/model/RssServerMessagesType;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/RssServerMessagesType;->getRssMessage()Ljava/util/List;

    move-result-object v0

    const-string v1, "delete-rss_messages"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/config/RestoreService;->processRssMessagesType(Ljava/util/List;Z)V

    :cond_5
    const-string v0, "import-file_datas"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getFileDatas()Lsk/mimac/slideshow/config/model/FileDatasType;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/FileDatasType;->getFileData()Ljava/util/List;

    move-result-object v0

    const-string v1, "delete-file_datas"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/config/RestoreService;->processFileDatas(Ljava/util/List;Z)V

    :cond_6
    const-string v0, "import-triggers"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getTriggers()Lsk/mimac/slideshow/config/model/TriggersType;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/config/RestoreService;->processTriggers(Lsk/mimac/slideshow/config/model/TriggersType;)V

    :cond_7
    const-string v0, "import-key_mapping"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getKeyMappings()Lsk/mimac/slideshow/config/model/KeyMappingsType;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/KeyMappingsType;->getKeyMapping()Ljava/util/List;

    move-result-object p0

    const-string v0, "delete-key_mapping"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lsk/mimac/slideshow/config/RestoreService;->processKeyMappings(Ljava/util/List;Z)V

    :cond_8
    return-void
.end method

.method private static processFields(Lsk/mimac/slideshow/config/model/Configuration;Lsk/mimac/slideshow/enums/ConfigImportType;)Z
    .locals 7

    .line 2
    sget-object v0, Lsk/mimac/slideshow/enums/ConfigImportType;->KEEP:Lsk/mimac/slideshow/enums/ConfigImportType;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Lsk/mimac/slideshow/config/RestoreService;->hashConfiguration(Lsk/mimac/slideshow/config/model/Configuration;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lsk/mimac/slideshow/settings/SystemSettings;->getImportedConfigHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p0, Lsk/mimac/slideshow/config/RestoreService;->LOG:Lorg/slf4j/Logger;

    const-string p1, "Skipping configuration import, because it hasn\'t changed since the last time"

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getSettings()Lsk/mimac/slideshow/config/model/SettingsType;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getSettings()Lsk/mimac/slideshow/config/model/SettingsType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/SettingsType;->getSetting()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getSettings()Lsk/mimac/slideshow/config/model/SettingsType;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/config/RestoreService;->processSettingsType(Lsk/mimac/slideshow/config/model/SettingsType;)V

    :cond_2
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getScreenLayouts()Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getScreenLayouts()Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/ScreenLayoutsType;->getScreenLayout()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {p0, p1}, Lsk/mimac/slideshow/config/RestoreService;->processScreenLayoutsPlaylistsItems(Lsk/mimac/slideshow/config/model/Configuration;Lsk/mimac/slideshow/enums/ConfigImportType;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getDownloads()Lsk/mimac/slideshow/config/model/GrabbersType;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getDownloads()Lsk/mimac/slideshow/config/model/GrabbersType;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/config/model/GrabbersType;->getDownload()Ljava/util/List;

    move-result-object v4

    sget-object v6, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-ne p1, v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-static {v4, v6}, Lsk/mimac/slideshow/config/RestoreService;->processDownloadsType(Ljava/util/List;Z)V

    :cond_5
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getUsers()Lsk/mimac/slideshow/config/model/UsersType;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getUsers()Lsk/mimac/slideshow/config/model/UsersType;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/config/model/UsersType;->getUser()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getUsers()Lsk/mimac/slideshow/config/model/UsersType;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/config/model/UsersType;->getUser()Ljava/util/List;

    move-result-object v4

    sget-object v6, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-ne p1, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    invoke-static {v4, v6}, Lsk/mimac/slideshow/config/RestoreService;->processUsersType(Ljava/util/List;Z)V

    :cond_7
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getRssMessages()Lsk/mimac/slideshow/config/model/RssServerMessagesType;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getRssMessages()Lsk/mimac/slideshow/config/model/RssServerMessagesType;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/config/model/RssServerMessagesType;->getRssMessage()Ljava/util/List;

    move-result-object v4

    sget-object v6, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-ne p1, v6, :cond_8

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    invoke-static {v4, v6}, Lsk/mimac/slideshow/config/RestoreService;->processRssMessagesType(Ljava/util/List;Z)V

    :cond_9
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getFileDatas()Lsk/mimac/slideshow/config/model/FileDatasType;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getFileDatas()Lsk/mimac/slideshow/config/model/FileDatasType;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/config/model/FileDatasType;->getFileData()Ljava/util/List;

    move-result-object v4

    sget-object v6, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-ne p1, v6, :cond_a

    const/4 v6, 0x1

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    invoke-static {v4, v6}, Lsk/mimac/slideshow/config/RestoreService;->processFileDatas(Ljava/util/List;Z)V

    :cond_b
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getTriggers()Lsk/mimac/slideshow/config/model/TriggersType;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getTriggers()Lsk/mimac/slideshow/config/model/TriggersType;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/config/RestoreService;->processTriggers(Lsk/mimac/slideshow/config/model/TriggersType;)V

    :cond_c
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getKeyMappings()Lsk/mimac/slideshow/config/model/KeyMappingsType;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getKeyMappings()Lsk/mimac/slideshow/config/model/KeyMappingsType;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/config/model/KeyMappingsType;->getKeyMapping()Ljava/util/List;

    move-result-object v4

    sget-object v6, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-ne p1, v6, :cond_d

    const/4 v1, 0x1

    :cond_d
    invoke-static {v4, v1}, Lsk/mimac/slideshow/config/RestoreService;->processKeyMappings(Ljava/util/List;Z)V

    :cond_e
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getAdditionalData()Lsk/mimac/slideshow/config/model/AdditionalDatasType;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getAdditionalData()Lsk/mimac/slideshow/config/model/AdditionalDatasType;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/AdditionalDatasType;->getData()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/config/RestoreService;->processAdditionalData(Ljava/util/List;)V

    :cond_f
    if-eq p1, v0, :cond_10

    invoke-static {v2}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    :cond_10
    return v3
.end method

.method private static processFileDatas(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/FileDataType;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/config/model/FileDataType;

    new-instance v2, Lsk/mimac/slideshow/database/entity/FileData;

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/FileDataType;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/FileDataType;->getStartWhen()Lj$/time/LocalDateTime;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/FileDataType;->getStartWhen()Lj$/time/LocalDateTime;

    move-result-object v4

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v6

    invoke-virtual {v4, v6}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v4

    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    move-result-object v4

    invoke-static {v4}, Lj$/util/DesugarDate;->from(Lj$/time/Instant;)Ljava/util/Date;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v5

    :goto_1
    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/FileDataType;->getDeleteWhen()Lj$/time/LocalDateTime;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/FileDataType;->getDeleteWhen()Lj$/time/LocalDateTime;

    move-result-object v5

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v6

    invoke-virtual {v5, v6}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v5

    invoke-interface {v5}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    move-result-object v5

    invoke-static {v5}, Lj$/util/DesugarDate;->from(Lj$/time/Instant;)Ljava/util/Date;

    move-result-object v5

    :cond_1
    invoke-direct {v2, v3, v4, v5}, Lsk/mimac/slideshow/database/entity/FileData;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/FileDataType;->getProperty()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/config/RestoreService;->mapProperties(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/entity/FileData;->setAction(Ljava/util/Map;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v1

    const-string v3, "syncCode"

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/entity/FileData;->setSyncCode(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->deleteAll()V

    :cond_3
    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/dao/FileDataDao;->create(Ljava/util/List;)V

    return-void
.end method

.method private static processItemsType(Lsk/mimac/slideshow/config/model/ItemsType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)V
    .locals 5

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ItemsType;->getItem()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/config/model/ItemType;

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/ItemType;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/ItemType;->getItemType()Lsk/mimac/slideshow/config/model/ItemTypeType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/enums/ItemType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v3

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/ItemType;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/ItemType;->getProperty()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/config/RestoreService;->mapProperties(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/Item;->setProperties(Ljava/util/Map;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/dao/ItemDao;->create(Lsk/mimac/slideshow/database/entity/Item;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1}, Lsk/mimac/slideshow/config/RestoreService$IdMapper;->access$100(Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/ItemType;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static processKeyMappings(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/KeyMappingType;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getInstance()Lsk/mimac/slideshow/database/dao/KeyActionDao;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->getAllIds()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/config/model/KeyMappingType;

    new-instance v3, Lsk/mimac/slideshow/database/entity/KeyAction;

    invoke-direct {v3}, Lsk/mimac/slideshow/database/entity/KeyAction;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/KeyMappingType;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/entity/KeyAction;->setKeyCode(I)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/KeyMappingType;->getActionDown()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/entity/KeyAction;->setActionDown(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/KeyMappingType;->getActionUp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/KeyMappingType;->getActionUp()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/entity/KeyAction;->setActionUp(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)V

    :cond_1
    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/KeyMappingType;->getProperty()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/config/RestoreService;->mapProperties(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/database/entity/KeyAction;->setProperties(Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/KeyAction;->getKeyCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getInstance()Lsk/mimac/slideshow/database/dao/KeyActionDao;

    move-result-object p0

    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->insertOrUpdate(Ljava/util/List;)V

    if-eqz p1, :cond_3

    invoke-static {}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getInstance()Lsk/mimac/slideshow/database/dao/KeyActionDao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->delete(Ljava/util/List;)V

    :cond_3
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->initKeyboardListener()V

    return-void
.end method

.method private static processPanelType(Lsk/mimac/slideshow/config/model/PanelType;ILsk/mimac/slideshow/config/RestoreService$IdMapper;I)V
    .locals 13

    new-instance v12, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getBackgroundColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getY()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getWidth()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getHeight()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->isMainPanel()Z

    move-result v8

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getAnimationType()Lsk/mimac/slideshow/config/model/AnimationTypeType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/enums/TransitionType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v9

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getAnimationLength()I

    move-result v10

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getDisplayId()Ljava/lang/String;

    move-result-object v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lsk/mimac/slideshow/database/entity/PanelItem;->setDisplayOrder(I)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getProperty()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getProperty()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/config/model/PropertyType;

    invoke-virtual {v12}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/PropertyType;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/PropertyType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v0

    invoke-virtual {v0, v12}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getSchedule()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PanelType;->getSchedule()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v3

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, p2

    invoke-static {v2, v4, p2}, Lsk/mimac/slideshow/config/RestoreService;->getPlaylistScheduleType(Lsk/mimac/slideshow/config/model/PlaylistScheduleType;Ljava/lang/Long;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static processPlaylistsType(Lsk/mimac/slideshow/config/model/PlaylistsType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/config/model/PlaylistsType;",
            "Lsk/mimac/slideshow/config/RestoreService$IdMapper;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/PlaylistsType;->getPlaylist()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/config/model/PlaylistType;

    new-instance v1, Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getMusicType()Lsk/mimac/slideshow/config/model/MusicTypeType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/enums/MusicType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v3

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getAction()Lsk/mimac/slideshow/config/model/PlaylistActionType;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getAction()Lsk/mimac/slideshow/config/model/PlaylistActionType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsk/mimac/slideshow/enums/PlaylistAction;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/PlaylistAction;

    move-result-object v5

    goto :goto_1

    :cond_0
    sget-object v5, Lsk/mimac/slideshow/enums/PlaylistAction;->LOOP_INDEFINITELY:Lsk/mimac/slideshow/enums/PlaylistAction;

    :goto_1
    invoke-direct {v1, v2, v3, v4, v5}, Lsk/mimac/slideshow/database/entity/Playlist;-><init>(Ljava/lang/Integer;Lsk/mimac/slideshow/enums/MusicType;Ljava/lang/String;Lsk/mimac/slideshow/enums/PlaylistAction;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getProperty()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/config/RestoreService;->mapProperties(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/Playlist;->setProperties(Ljava/util/Map;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v2

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getByName(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsk/mimac/slideshow/database/entity/Playlist;->setId(Ljava/lang/Long;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->update(Lsk/mimac/slideshow/database/entity/Playlist;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v2, p1}, Lsk/mimac/slideshow/config/RestoreService;->checkExistingPlaylistLinkedItemId(Lsk/mimac/slideshow/config/model/PlaylistType;Lsk/mimac/slideshow/database/entity/Playlist;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getContent()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-static {p1}, Lsk/mimac/slideshow/config/RestoreService$IdMapper;->access$100(Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getContent()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/config/model/ContentType;

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/ContentType;->getItemId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/database/dao/ItemDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/Playlist;->setLinkedItemId(Ljava/lang/Long;)V

    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->create(Lsk/mimac/slideshow/database/entity/Playlist;)J

    move-result-wide v3

    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getContent()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/config/model/ContentType;

    new-instance v6, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {p1}, Lsk/mimac/slideshow/config/RestoreService$IdMapper;->access$100(Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lsk/mimac/slideshow/config/model/ContentType;->getItemId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v5}, Lsk/mimac/slideshow/config/model/ContentType;->getLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lsk/mimac/slideshow/database/dao/ContentDao;->updatePlaylist(Ljava/lang/Long;Ljava/util/List;)V

    invoke-static {p1}, Lsk/mimac/slideshow/config/RestoreService$IdMapper;->access$200(Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lsk/mimac/slideshow/config/model/PlaylistType;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private static processRssMessagesType(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/RssServerMessageType;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/config/model/RssServerMessageType;

    new-instance v2, Lsk/mimac/slideshow/database/entity/RssServerMessage;

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/RssServerMessageType;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/RssServerMessageType;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v4}, Lsk/mimac/slideshow/database/entity/RssServerMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getInstance()Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->deleteAll()V

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getInstance()Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->create(Ljava/util/List;)V

    return-void
.end method

.method private static processScreenLayoutType(Lsk/mimac/slideshow/config/model/ScreenLayoutType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/config/model/ScreenLayoutType;",
            "Lsk/mimac/slideshow/config/RestoreService$IdMapper;",
            ")",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;",
            ">;"
        }
    .end annotation

    new-instance v6, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getRotation()I

    move-result v0

    int-to-short v2, v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getInterval()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getInterval()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    move v3, v0

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getPowerOff()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lsk/mimac/slideshow/database/entity/ScreenLayout;-><init>(Ljava/lang/String;SFZZ)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0, v6}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->create(Lsk/mimac/slideshow/database/entity/ScreenLayout;)I

    move-result v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getPanel()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/config/model/PanelType;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v0, p1, v2}, Lsk/mimac/slideshow/config/RestoreService;->processPanelType(Lsk/mimac/slideshow/config/model/PanelType;ILsk/mimac/slideshow/config/RestoreService$IdMapper;I)V

    move v2, v4

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getScreensaver()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object p1

    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->setScreenSaver(Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getSchedule()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getSchedule()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;

    invoke-static {v1, v0}, Lsk/mimac/slideshow/config/RestoreService;->getScreenLayoutScheduleType(Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;I)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p1

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static processScreenLayoutsPlaylistsItems(Lsk/mimac/slideshow/config/model/Configuration;Lsk/mimac/slideshow/enums/ConfigImportType;)Z
    .locals 11

    sget-object v0, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/AbstractDao;->getAllIds()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/dao/AbstractDao;->getAllIds()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/dao/AbstractDao;->getAllIds()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v2, Lsk/mimac/slideshow/enums/ConfigImportType;->CLOUD:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-ne p1, v2, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/ItemDao;->getCloudIds()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/dao/AbstractDao;->getCloudIds()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/dao/AbstractDao;->getCloudIds()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    new-instance v5, Lsk/mimac/slideshow/config/RestoreService$IdMapper;

    invoke-direct {v5, v1}, Lsk/mimac/slideshow/config/RestoreService$IdMapper;-><init>(Lsk/mimac/slideshow/config/RestoreService$1;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getItems()Lsk/mimac/slideshow/config/model/ItemsType;

    move-result-object v6

    invoke-static {v6, v5}, Lsk/mimac/slideshow/config/RestoreService;->processItemsType(Lsk/mimac/slideshow/config/model/ItemsType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getPlaylists()Lsk/mimac/slideshow/config/model/PlaylistsType;

    move-result-object v6

    invoke-static {v6, v5, v3}, Lsk/mimac/slideshow/config/RestoreService;->processPlaylistsType(Lsk/mimac/slideshow/config/model/PlaylistsType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;Ljava/util/List;)V

    sget-object v6, Lsk/mimac/slideshow/enums/ConfigImportType;->CLOUD:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-ne p1, v6, :cond_3

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getScreenLayouts()Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    move-result-object v7

    invoke-static {v7, v4, v5}, Lsk/mimac/slideshow/config/RestoreService;->processScreenLayoutsTypeCloud(Lsk/mimac/slideshow/config/model/ScreenLayoutsType;Ljava/util/List;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Z

    move-result v7

    sget-object v8, Lsk/mimac/slideshow/config/RestoreService;->LOG:Lorg/slf4j/Logger;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "Cloud screen layout was already created, reloading={}"

    invoke-interface {v8, v10, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getScreenLayouts()Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    move-result-object v7

    invoke-static {v7, v5, p1}, Lsk/mimac/slideshow/config/RestoreService;->processScreenLayoutsType(Lsk/mimac/slideshow/config/model/ScreenLayoutsType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;Lsk/mimac/slideshow/enums/ConfigImportType;)V

    sget-object v7, Lsk/mimac/slideshow/enums/ConfigImportType;->KEEP:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-eq p1, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getAudioSchedule()Lsk/mimac/slideshow/config/model/AudioScheduleType;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getAudioSchedule()Lsk/mimac/slideshow/config/model/AudioScheduleType;

    move-result-object p0

    invoke-static {p0, v5}, Lsk/mimac/slideshow/config/RestoreService;->processAudioSchedule(Lsk/mimac/slideshow/config/model/AudioScheduleType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)V

    goto :goto_3

    :cond_5
    if-ne p1, v0, :cond_6

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object p0

    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->deleteAllForPanel(Ljava/lang/Long;)V

    :cond_6
    :goto_3
    if-eq p1, v6, :cond_7

    if-ne p1, v0, :cond_8

    :cond_7
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object p0

    invoke-virtual {p0, v4}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->delete(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object p0

    invoke-virtual {p0, v3}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->delete(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object p0

    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/database/dao/ItemDao;->delete(Ljava/util/List;)V

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseManager;->backupDatabase()V

    :cond_8
    return v7
.end method

.method private static processScreenLayoutsType(Lsk/mimac/slideshow/config/model/ScreenLayoutsType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;Lsk/mimac/slideshow/enums/ConfigImportType;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutsType;->getScreenLayout()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/config/model/ScreenLayoutType;

    invoke-static {v1, p1}, Lsk/mimac/slideshow/config/RestoreService;->processScreenLayoutType(Lsk/mimac/slideshow/config/model/ScreenLayoutType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lsk/mimac/slideshow/enums/ConfigImportType;->KEEP:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-ne p2, p0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->insertAll(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    sget-object p0, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-eq p2, p0, :cond_2

    sget-object p0, Lsk/mimac/slideshow/enums/ConfigImportType;->CLOUD:Lsk/mimac/slideshow/enums/ConfigImportType;

    if-ne p2, p0, :cond_3

    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->updateAll(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static processScreenLayoutsTypeCloud(Lsk/mimac/slideshow/config/model/ScreenLayoutsType;Ljava/util/List;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/config/model/ScreenLayoutsType;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lsk/mimac/slideshow/config/RestoreService$IdMapper;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->unsetScreenSaver()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/config/model/ScreenLayoutsType;->getScreenLayout()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/config/model/ScreenLayoutType;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v6

    invoke-virtual {v5}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getByName(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/ScreenLayout;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {v5, v0}, Lsk/mimac/slideshow/config/RestoreService;->processScreenLayoutType(Lsk/mimac/slideshow/config/model/ScreenLayoutType;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v9, p1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-interface {v9, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getRotation()S

    move-result v8

    invoke-virtual {v5}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getRotation()I

    move-result v10

    int-to-short v10, v10

    if-eq v8, v10, :cond_2

    invoke-virtual {v5}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getRotation()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v6, v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setRotation(S)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v4

    invoke-virtual {v4, v6}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->update(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    const/4 v4, 0x1

    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v8

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getAllForLayout(I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getPanel()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsk/mimac/slideshow/config/model/PanelType;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_5

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v11, 0x1

    invoke-static {v12, v3, v0, v11}, Lsk/mimac/slideshow/config/RestoreService;->processPanelType(Lsk/mimac/slideshow/config/model/PanelType;ILsk/mimac/slideshow/config/RestoreService$IdMapper;I)V

    move v13, v4

    move-object v15, v8

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationLength()I

    move-result v3

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getAnimationLength()I

    move-result v13

    if-eq v3, v13, :cond_6

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getAnimationLength()I

    move-result v3

    invoke-virtual {v14, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationLength(I)V

    const/4 v4, 0x1

    :cond_6
    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationType()Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getAnimationType()Lsk/mimac/slideshow/config/model/AnimationTypeType;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getAnimationType()Lsk/mimac/slideshow/config/model/AnimationTypeType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/enums/TransitionType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v3

    invoke-virtual {v14, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationType(Lsk/mimac/slideshow/enums/TransitionType;)V

    const/4 v4, 0x1

    :cond_7
    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getProperty()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/config/RestoreService;->mapProperties(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v14, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setProperties(Ljava/util/Map;)V

    const/4 v4, 0x1

    :cond_8
    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getDisplayOrder()I

    move-result v3

    add-int/lit8 v13, v11, 0x1

    if-eq v3, v11, :cond_9

    invoke-virtual {v14, v11}, Lsk/mimac/slideshow/database/entity/PanelItem;->setDisplayOrder(I)V

    const/4 v4, 0x1

    :cond_9
    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getBackgroundColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getBackgroundColor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getBackgroundColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setBackgroundColor(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_a
    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getHeight()F

    move-result v3

    move-object v15, v8

    float-to-double v7, v3

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getHeight()D

    move-result-wide v16

    sub-double v7, v7, v16

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v16, 0x3f70624dd2f1a9fcL    # 0.004

    cmpl-double v3, v7, v16

    if-lez v3, :cond_b

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getHeight()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v14, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setHeight(F)V

    const/4 v4, 0x1

    :cond_b
    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getWidth()F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getWidth()D

    move-result-wide v18

    sub-double v7, v7, v18

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v3, v7, v16

    if-lez v3, :cond_c

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getWidth()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v14, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setWidth(F)V

    const/4 v4, 0x1

    :cond_c
    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getX()F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getX()D

    move-result-wide v18

    sub-double v7, v7, v18

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v3, v7, v16

    if-lez v3, :cond_d

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v14, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setX(F)V

    const/4 v4, 0x1

    :cond_d
    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getY()F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getY()D

    move-result-wide v18

    sub-double v7, v7, v18

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v3, v7, v16

    if-lez v3, :cond_e

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getY()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v14, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setY(F)V

    const/4 v4, 0x1

    :cond_e
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v3

    invoke-virtual {v3, v14}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->update(Lsk/mimac/slideshow/database/entity/PanelItem;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v3

    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->deleteAllForPanel(Ljava/lang/Long;)V

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getSchedule()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v12}, Lsk/mimac/slideshow/config/model/PanelType;->getSchedule()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsk/mimac/slideshow/config/model/PlaylistScheduleType;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v8

    invoke-virtual {v14}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v7, v12, v0}, Lsk/mimac/slideshow/config/RestoreService;->getPlaylistScheduleType(Lsk/mimac/slideshow/config/model/PlaylistScheduleType;Ljava/lang/Long;Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    move-result-object v7

    invoke-virtual {v8, v7}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    goto :goto_3

    :cond_f
    :goto_4
    move v11, v13

    move-object v8, v15

    goto/16 :goto_1

    :cond_10
    move-object v15, v8

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v7

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v12, v4

    invoke-virtual {v7, v12, v13}, Lsk/mimac/slideshow/database/dao/AbstractDao;->delete(J)V

    const/4 v4, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {v5}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getSchedule()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v5}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getSchedule()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lsk/mimac/slideshow/config/RestoreService;->getScreenLayoutScheduleType(Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;I)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->getScreensaver()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v3

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->setScreenSaver(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->updateAll(Ljava/util/List;)V

    return v4
.end method

.method private static processSettingsType(Lsk/mimac/slideshow/config/model/SettingsType;)V
    .locals 6

    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->names()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/SettingsType;->getSetting()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/config/model/SettingType;

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/SettingType;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lsk/mimac/slideshow/settings/UserSettings;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/settings/UserSettings;

    move-result-object v3

    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->COMMUNICATION_SERVER_CODE:Lsk/mimac/slideshow/settings/UserSettings;

    if-ne v3, v4, :cond_1

    invoke-virtual {v4}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/SettingType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_PASSWORD:Lsk/mimac/slideshow/settings/UserSettings;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/SettingType;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CRYPT:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/SettingType;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/utils/CryptUtils;->decryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/SettingType;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->save()V

    if-eqz v1, :cond_4

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->start()V

    :cond_4
    return-void
.end method

.method private static processTriggers(Lsk/mimac/slideshow/config/model/TriggersType;)V
    .locals 1

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/TriggersType;->getWorkspace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/triggers/TriggersUtils;->saveWorkspace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/TriggersType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/triggers/TriggersUtils;->saveCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/TriggersType;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->init(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Couple;

    return-void
.end method

.method private static processUsersType(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/UserType;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/config/model/UserType;

    new-instance v3, Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/UserType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/UserType;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/UserType;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/UserType;->getRole()Lsk/mimac/slideshow/config/model/UserRoleType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsk/mimac/slideshow/enums/UserRole;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/UserRole;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lsk/mimac/slideshow/database/entity/AccessUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/UserRole;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/UserType;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->deleteAll()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->deleteByUsernames(Ljava/util/List;)V

    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->create(Ljava/util/List;)V

    return-void
.end method

.method public static validateContent(Ljava/io/File;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/config/RestoreService;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    const-class v1, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-interface {v0, v1, p0}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/File;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-static {p0}, Lsk/mimac/slideshow/config/RestoreService;->validateContent(Lsk/mimac/slideshow/config/model/Configuration;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lsk/mimac/slideshow/config/ConfigurationException;

    const-string v1, "Invalid configuration"

    invoke-direct {v0, v1, p0}, Lsk/mimac/slideshow/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static validateContent(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/config/RestoreService;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    const-class v1, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-interface {v0, v1, p0}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/config/model/Configuration;

    invoke-static {p0}, Lsk/mimac/slideshow/config/RestoreService;->validateContent(Lsk/mimac/slideshow/config/model/Configuration;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lsk/mimac/slideshow/config/ConfigurationException;

    const-string v1, "Invalid configuration"

    invoke-direct {v0, v1, p0}, Lsk/mimac/slideshow/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static validateContent(Lsk/mimac/slideshow/config/model/Configuration;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/config/model/Configuration;",
            ")",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getInfo()Lsk/mimac/slideshow/config/model/InfoType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getInfo()Lsk/mimac/slideshow/config/model/InfoType;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/InfoType;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getInfo()Lsk/mimac/slideshow/config/model/InfoType;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/InfoType;->getDescription()Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    invoke-direct {v1, v3, v2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getSettings()Lsk/mimac/slideshow/config/model/SettingsType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getSettings()Lsk/mimac/slideshow/config/model/SettingsType;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/SettingsType;->getSetting()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getSettings()Lsk/mimac/slideshow/config/model/SettingsType;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/SettingsType;->getSetting()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "settings"

    invoke-direct {v1, v3, v2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getScreenLayouts()Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getScreenLayouts()Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/ScreenLayoutsType;->getScreenLayout()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getScreenLayouts()Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/config/model/ScreenLayoutsType;->getScreenLayout()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "screen_layouts_playlists_items"

    invoke-direct {v1, v3, v2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getDownloads()Lsk/mimac/slideshow/config/model/GrabbersType;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getDownloads()Lsk/mimac/slideshow/config/model/GrabbersType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/GrabbersType;->getDownload()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getDownloads()Lsk/mimac/slideshow/config/model/GrabbersType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/GrabbersType;->getDownload()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "grabber"

    invoke-direct {v1, v4, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getUsers()Lsk/mimac/slideshow/config/model/UsersType;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getUsers()Lsk/mimac/slideshow/config/model/UsersType;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/config/model/UsersType;->getUser()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getUsers()Lsk/mimac/slideshow/config/model/UsersType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/UsersType;->getUser()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "users"

    invoke-direct {v1, v4, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getRssMessages()Lsk/mimac/slideshow/config/model/RssServerMessagesType;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getRssMessages()Lsk/mimac/slideshow/config/model/RssServerMessagesType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/RssServerMessagesType;->getRssMessage()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getRssMessages()Lsk/mimac/slideshow/config/model/RssServerMessagesType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/RssServerMessagesType;->getRssMessage()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "rss_messages"

    invoke-direct {v1, v4, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getFileDatas()Lsk/mimac/slideshow/config/model/FileDatasType;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getFileDatas()Lsk/mimac/slideshow/config/model/FileDatasType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/FileDatasType;->getFileData()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getFileDatas()Lsk/mimac/slideshow/config/model/FileDatasType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/FileDatasType;->getFileData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "file_datas"

    invoke-direct {v1, v4, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getTriggers()Lsk/mimac/slideshow/config/model/TriggersType;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getTriggers()Lsk/mimac/slideshow/config/model/TriggersType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/TriggersType;->getWorkspace()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\"type\":\"main_block\""

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "triggers"

    invoke-direct {v1, v4, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getKeyMappings()Lsk/mimac/slideshow/config/model/KeyMappingsType;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getKeyMappings()Lsk/mimac/slideshow/config/model/KeyMappingsType;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/config/model/KeyMappingsType;->getKeyMapping()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/Configuration;->getKeyMappings()Lsk/mimac/slideshow/config/model/KeyMappingsType;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/config/model/KeyMappingsType;->getKeyMapping()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "key_mapping"

    invoke-direct {v1, v2, p0}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v0
.end method
