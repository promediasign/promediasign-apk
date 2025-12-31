.class public Lsk/mimac/slideshow/http/api/impl/PropertiesCommand;
.super Lsk/mimac/slideshow/http/api/JsonCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/api/JsonCommand;-><init>()V

    return-void
.end method

.method private getFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/database/entity/FileData;

    invoke-direct {v0, p1}, Lsk/mimac/slideshow/database/entity/FileData;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getFirstValue(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private saveFileData(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/FileData;)V
    .locals 1

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getStartWhen()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getDeleteWhen()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object p2

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/database/dao/FileDataDao;->delete(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/FileData;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/dao/FileDataDao;->update(Lsk/mimac/slideshow/database/entity/FileData;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/dao/FileDataDao;->create(Lsk/mimac/slideshow/database/entity/FileData;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public processToJson(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 8
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

    const-string v1, "targets[]"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lsk/mimac/slideshow/utils/FileHashUtils;->resolveHash(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/http/api/impl/PropertiesCommand;->getFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v4

    const-string v5, "click"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v6}, Lsk/mimac/slideshow/http/api/impl/PropertiesCommand;->getFirstValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_0
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1
    const-string v5, "mute"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v6}, Lsk/mimac/slideshow/http/api/impl/PropertiesCommand;->getFirstValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v6

    const-string v7, "true"

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v5, "playLength"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5}, Lsk/mimac/slideshow/http/api/impl/PropertiesCommand;->getFirstValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "length"

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v5, "syncCode"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5}, Lsk/mimac/slideshow/http/api/impl/PropertiesCommand;->getFirstValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_3
    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/entity/FileData;->setSyncCode(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :goto_4
    invoke-direct {p0, v3, v4}, Lsk/mimac/slideshow/http/api/impl/PropertiesCommand;->saveFileData(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/FileData;)V

    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/http/api/Command;->getFileInfo(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "changed"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
