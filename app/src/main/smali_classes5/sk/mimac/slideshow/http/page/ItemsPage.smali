.class public Lsk/mimac/slideshow/http/page/ItemsPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# instance fields
.field private displayCameraPermissionWarning:Z

.field private displayWeatherApiWarning:Z

.field private items:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lsk/mimac/slideshow/database/entity/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final user:Lsk/mimac/slideshow/database/entity/AccessUser;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/AccessUser;)V
    .locals 2

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->displayCameraPermissionWarning:Z

    iput-boolean v0, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->displayWeatherApiWarning:Z

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    return-void
.end method

.method public static appendItemDescription(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/database/entity/Item;)V
    .locals 8

    sget-object v0, Lsk/mimac/slideshow/http/page/ItemsPage$1;->$SwitchMap$sk$mimac$slideshow$enums$ItemType:[I

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "</a>"

    const-string v2, "\'>"

    const-string v3, "/"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object p1

    const-string v0, "widgetProvider"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    const/4 v0, 0x2

    aget-object p1, p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object p1

    const-string v0, "rssReaderUrl"

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object p1

    const-string v0, "weatherCity"

    goto :goto_1

    :pswitch_3
    const-string v0, "<a class=\'link\' href=\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "**"

    if-nez v5, :cond_1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "/*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "/**"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_1
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v0

    :cond_4
    :goto_3
    new-instance v0, Ljava/io/File;

    sget-object v4, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<a class=\'link\' href=\'/file_manager#elf_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/utils/HashBase64;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v6}, Lsk/mimac/slideshow/utils/FileFilterUtils;->getFileNamesForFilter(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, " <span"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    const-string v0, " style=\'color:red\'"

    goto :goto_5

    :cond_5
    const-string v0, ""

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "file"

    invoke-static {v0, p1}, Lsk/mimac/slideshow/localization/Localization;->getStringForNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")</span>"

    goto/16 :goto_0

    :cond_6
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "item"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 5

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/ItemDao;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/dao/ItemDao;->getAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/database/entity/Item;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->VIDEO_INPUT:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->hasCameraPermission()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->displayCameraPermissionWarning:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v1

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->WEATHER:Lsk/mimac/slideshow/enums/ItemType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->WEATHER_CLASS:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v2, Lsk/mimac/slideshow/weather/WeatherReaderClass;

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    sget-object v2, Lsk/mimac/slideshow/weather/WeatherReaderClass;->OPEN_METEO:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    if-eq v1, v2, :cond_0

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->WEATHER_API_KEY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->displayWeatherApiWarning:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get list of items"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->items:Ljava/util/Collection;

    :cond_2
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->displayCameraPermissionWarning:Z

    .line 2
    .line 3
    const-string v1, "</div></div>\n"

    .line 4
    .line 5
    const-string v2, "<div><div class=\'errorBubble\'>"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "need_camera_permission"

    .line 10
    .line 11
    invoke-static {p1, v2, v0, v1}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->displayWeatherApiWarning:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "need_weather_api_key"

    .line 19
    .line 20
    invoke-static {p1, v2, v0, v1}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    const-string v0, "<i>"

    .line 24
    .line 25
    const-string v1, "items_help"

    .line 26
    .line 27
    const-string v2, "</i><br><br>"

    .line 28
    .line 29
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 33
    .line 34
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v1, "</a>"

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const-string v0, "<a class=\'button\' href=\'/items/edit\'>"

    .line 43
    .line 44
    const-string v2, "item_add"

    .line 45
    .line 46
    invoke-static {p1, v0, v2, v1}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->items:Ljava/util/Collection;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    const-string v0, "<table class=\'styledTable\'><thead><tr><th>"

    .line 58
    .line 59
    const-string v2, "name2"

    .line 60
    .line 61
    const-string v3, "</th><th>"

    .line 62
    .line 63
    const-string v4, "type"

    .line 64
    .line 65
    invoke-static {p1, v0, v2, v3, v4}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "</th>"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, "<th>"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, "path"

    .line 79
    .line 80
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, " / "

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, "details"

    .line 93
    .line 94
    const-string v2, "</th><th></th></tr></thead>"

    .line 95
    .line 96
    invoke-static {v0, v2, p1}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->items:Ljava/util/Collection;

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lsk/mimac/slideshow/database/entity/Item;

    .line 116
    .line 117
    const-string v3, "<tr><td>"

    .line 118
    .line 119
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v3}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v3, "</td><td>"

    .line 134
    .line 135
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lsk/mimac/slideshow/enums/ItemType;->getIcon()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v4, " "

    .line 150
    .line 151
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v5, "item_type_"

    .line 157
    .line 158
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-static {p1, v2}, Lsk/mimac/slideshow/http/page/ItemsPage;->appendItemDescription(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/database/entity/Item;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/ItemsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 189
    .line 190
    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_3

    .line 195
    .line 196
    const-string v3, "<a class=\'link\' href=\'/items/edit?item="

    .line 197
    .line 198
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getId()Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v2, "\'>"

    .line 209
    .line 210
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, "edit"

    .line 214
    .line 215
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    :cond_3
    const-string v2, "</td></tr>"

    .line 226
    .line 227
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_4
    const-string v0, "</table>"

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_5
    const-string v0, "<div>"

    .line 238
    .line 239
    const-string v1, "no_item"

    .line 240
    .line 241
    const-string v2, "</div>"

    .line 242
    .line 243
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :goto_1
    return-void
.end method
