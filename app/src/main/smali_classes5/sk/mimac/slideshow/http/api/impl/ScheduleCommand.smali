.class public Lsk/mimac/slideshow/http/api/impl/ScheduleCommand;
.super Lsk/mimac/slideshow/http/api/JsonCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/api/JsonCommand;-><init>()V

    return-void
.end method

.method private parseDate(Ljava/util/List;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Date;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/http/api/Command;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public processToJson(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "startDate"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/http/api/impl/ScheduleCommand;->parseDate(Ljava/util/List;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "deleteDate"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/http/api/impl/ScheduleCommand;->parseDate(Ljava/util/List;)Ljava/util/Date;

    move-result-object v2

    const-string v3, "targets[]"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lsk/mimac/slideshow/utils/FileHashUtils;->resolveHash(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v5

    invoke-virtual {v5, v4}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Lsk/mimac/slideshow/database/entity/FileData;

    invoke-direct {v5, v4}, Lsk/mimac/slideshow/database/entity/FileData;-><init>(Ljava/lang/String;)V

    :cond_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v5

    invoke-virtual {v5, v4}, Lsk/mimac/slideshow/database/dao/FileDataDao;->delete(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v1}, Lsk/mimac/slideshow/database/entity/FileData;->setStartWhen(Ljava/util/Date;)V

    invoke-virtual {v5, v2}, Lsk/mimac/slideshow/database/entity/FileData;->setDeleteWhen(Ljava/util/Date;)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/FileData;->getId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v4

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/dao/FileDataDao;->update(Lsk/mimac/slideshow/database/entity/FileData;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v4

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/dao/FileDataDao;->create(Lsk/mimac/slideshow/database/entity/FileData;)V

    :goto_1
    invoke-virtual {p0, v3}, Lsk/mimac/slideshow/http/api/Command;->getFileInfo(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "changed"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
