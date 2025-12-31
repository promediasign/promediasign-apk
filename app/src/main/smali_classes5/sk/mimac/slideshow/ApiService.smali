.class public abstract Lsk/mimac/slideshow/ApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/ApiService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/ApiService;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/ShowHelper;Ljava/lang/String;Lsk/mimac/slideshow/gui/ItemThread;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lsk/mimac/slideshow/ApiService;->lambda$showSentHtml$2(Lsk/mimac/slideshow/gui/ShowHelper;Ljava/lang/String;Lsk/mimac/slideshow/gui/ItemThread;I)V

    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/ApiService;->lambda$process$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->lambda$runAfterDelay$3(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static clearPlaylist(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->isSetPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->clearSetPlaylist()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method public static communicationDebug()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/communication/DeviceInfo;

    invoke-virtual {v3}, Lsk/mimac/slideshow/communication/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "devices"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getVerifiedPeers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {v3}, Lsk/mimac/slideshow/communication/Peer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string v2, "verifiedPeers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "myPeer"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getMyPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "externalIp"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getExternalIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "publicTrackerEnabled"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->isPublicTrackerEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "upnpActive"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->isUpnpActive()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "communicationCode"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private configurationImport(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p1, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/config/RestoreService;->importFromXml(Ljava/io/InputStream;Lsk/mimac/slideshow/enums/ConfigImportType;)Z

    return-void
.end method

.method public static synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/ApiService;->lambda$process$1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lsk/mimac/slideshow/gui/ItemThread;"
        }
    .end annotation

    const-string v0, "panelId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "audio"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getItemThread(I)Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "zoneId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "panelName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getItemThread(Ljava/lang/String;)Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "zoneName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getItemThread(Ljava/lang/String;)Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    return-object p0
.end method

.method private static getLayoutIdFromParams(Ljava/util/Map;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string v0, "layoutId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "layoutName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getByName(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/ScreenLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPlaylistIdFromParams(Ljava/util/Map;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 1
    const-string v0, "playlist"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string v0, "playlistId"

    .line 21
    .line 22
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "playlistNumber"

    .line 32
    .line 33
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "\' was not found"

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getByNumber(I)Lsk/mimac/slideshow/database/entity/Playlist;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_2
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    .line 63
    .line 64
    const-string v2, "Playlist with number \'"

    .line 65
    .line 66
    invoke-static {v2, v0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 71
    .line 72
    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_3
    const-string v0, "playlistName"

    .line 77
    .line 78
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Ljava/lang/String;

    .line 83
    .line 84
    if-eqz p0, :cond_5

    .line 85
    .line 86
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getByName(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/Playlist;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_4
    new-instance v0, Lsk/mimac/slideshow/exception/ApiException;

    .line 102
    .line 103
    const-string v2, "Playlist with name \'"

    .line 104
    .line 105
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 110
    .line 111
    invoke-direct {v0, p0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_5
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    .line 116
    .line 117
    const-string v0, "Missing one of \'playlistId\', \'playlistNumber\', \'playlistName\'"

    .line 118
    .line 119
    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 120
    .line 121
    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method private getZonesContent()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->isMainPanel()Z

    move-result v5

    const-string v6, "main"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v5, "playlist"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/ItemThread;->getLastFileName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "fileName"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/ItemThread;->getFormattedPosition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "zones"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method private handleHttpProxy(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    const-string v0, "requestId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "method"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "path"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v8, "headers"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "bodyEncoding"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v3, "body"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://localhost:8080"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    if-eqz p1, :cond_0

    const-string v3, "base64"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    invoke-static {p1, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    :cond_0
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    if-eqz v8, :cond_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    :cond_1
    :try_start_2
    const/4 v9, 0x0

    if-eqz v8, :cond_2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "content-type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    :cond_2
    :try_start_4
    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    goto/16 :goto_3

    :cond_3
    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p1, :cond_7

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string v9, "application/json; charset=utf-8"

    :cond_5
    invoke-static {v9}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    if-eqz v11, :cond_6

    invoke-static {v4, v11}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-static {v4, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const-string v9, "application/json"

    :cond_9
    invoke-static {v9}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    const-string v4, ""

    invoke-static {p1, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_3

    :cond_a
    const-string v4, "PUT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz p1, :cond_e

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const-string v9, "application/json; charset=utf-8"

    :cond_c
    invoke-static {v9}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    if-eqz v11, :cond_d

    invoke-static {v4, v11}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    goto :goto_2

    :cond_d
    invoke-static {v4, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    :goto_2
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_3

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    const-string v9, "application/json"

    :cond_10
    invoke-static {v9}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    const-string v4, ""

    invoke-static {p1, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_3

    :cond_11
    const-string p1, "DELETE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    :cond_12
    :goto_3
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v3, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "requestId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "statusCode"

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v3, "bodyEncoding"

    const-string v4, "base64"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_13
    const-string v0, ""

    :goto_4
    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_14

    invoke-virtual {p1, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    const-string p1, "headers"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v1

    :catch_2
    move-exception p1

    new-instance v0, Lsk/mimac/slideshow/exception/ApiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP Proxy error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {v0, p1, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw v0
.end method

.method private static synthetic lambda$process$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reloadApp()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$process$1()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reboot()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$runAfterDelay$3(Ljava/util/concurrent/Callable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lsk/mimac/slideshow/ApiService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t run action"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showSentHtml$2(Lsk/mimac/slideshow/gui/ShowHelper;Ljava/lang/String;Lsk/mimac/slideshow/gui/ItemThread;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsk/mimac/slideshow/gui/ShowHelper;->showHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string p0, "HTML"

    invoke-static {p0}, Lsk/mimac/slideshow/item/ItemCounter;->addItem(Ljava/lang/String;)V

    int-to-long p0, p3

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    invoke-virtual {p2, p0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->sleep(J)V

    return-void
.end method

.method private lastOscMessage()Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lsk/mimac/slideshow/osc/OscService;->getInstance()Lsk/mimac/slideshow/osc/OscService;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService;->getLastMessage()Lsk/mimac/slideshow/osc/OscService$LastMessage;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_1

    const-string v2, "timestamp"

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService$LastMessage;->getTimestamp()Lj$/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "address"

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService$LastMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService$LastMessage;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "arguments"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v1
.end method

.method public static next(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private panelSchedule(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "from"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    move-result-object v0

    const-string v1, "to"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    move-result-object v1

    const-string v2, "panelId"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v3

    invoke-virtual {v3, p1}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getAllForPanel(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lsk/mimac/slideshow/schedule/ScheduleResolver;->resolveSchedule(Ljava/util/List;Lj$/time/LocalDate;Lj$/time/LocalDate;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "schedules"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2
.end method

.method private parseLength(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static pause(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->pause()V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method public static previous(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->interruptAndBackward()V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private processHardwareGet()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverService;->getCurrentStatus()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v1, "status"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private processHardwareSet(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "value"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/driver/HardwareDriverService;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lsk/mimac/slideshow/ApiService;->processHardwareGet()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Name is required"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private processShell(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "command"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lsk/mimac/slideshow/utils/Shell;->processWithOutput(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Shell$Response;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "result"

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Shell$Response;->getResult()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "stdout"

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Shell$Response;->getStdout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stderr"

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Shell$Response;->getStderr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lsk/mimac/slideshow/exception/ApiException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t process command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {v0, p1, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw v0

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Command is required"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method public static resume(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->resume()V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private runAfterDelay(Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LB/c;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, LB/c;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private scheduleLayout(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lsk/mimac/slideshow/ApiService;->getLayoutIdFromParams(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->setScreenLayoutId(J)V

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeFrom(Lj$/time/LocalTime;)V

    const/16 p1, 0x17

    const/16 v1, 0x3b

    invoke-static {p1, v1}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setMonday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTuesday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setWednesday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setThursday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setFriday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSaturday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSunday(Z)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setPriority(I)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->deleteAllWithPriority(I)V

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    return-void

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Either layoutId or layoutName has to be entered"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private screenLayoutSchedule(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "from"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    move-result-object v0

    const-string v1, "to"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lsk/mimac/slideshow/schedule/ScheduleResolver;->resolveSchedule(Ljava/util/List;Lj$/time/LocalDate;Lj$/time/LocalDate;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "schedules"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method private setLayout(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lsk/mimac/slideshow/ApiService;->getLayoutIdFromParams(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "length"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/ApiService;->parseLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->setScreenLayout(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->setScreenLayout(I)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Either layoutId or layoutName has to be entered"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private setPlaylist(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lsk/mimac/slideshow/ApiService;->getPlaylistIdFromParams(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "length"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/ApiService;->parseLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Ljava/lang/Long;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Ljava/lang/Long;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p1

    if-eqz v1, :cond_0

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method public static showFile(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v0

    const-string v1, "length"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->MANUAL_PLAYLIST_TIMEOUT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    const-string v2, "file"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v4, Lsk/mimac/slideshow/enums/ItemType;->IMAGE:Lsk/mimac/slideshow/enums/ItemType;

    invoke-direct {v2, v3, p0, v4, p0}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/Long;Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v2, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v4, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    invoke-direct {v2, v3, p0, v4, p0}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/Long;Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    :goto_2
    new-instance p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    invoke-direct {p0, v2, v1, v3}, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Item;Ljava/lang/Integer;Lsk/mimac/slideshow/enums/MusicType;)V

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Lsk/mimac/slideshow/playlist/PlaylistWrapper;)V

    return-void

    :cond_3
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Missing file name"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0

    :cond_4
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private static showSentHtml(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string p1, "length"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "html"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object v1, p0

    check-cast v1, Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/DisplayItemThread;->getShowHelper()Lsk/mimac/slideshow/gui/ShowHelper;

    move-result-object v1

    new-instance v2, Le1/b;

    invoke-direct {v2, v1, v0, p0, p1}, Le1/b;-><init>(Lsk/mimac/slideshow/gui/ShowHelper;Ljava/lang/String;Lsk/mimac/slideshow/gui/ItemThread;I)V

    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/gui/ItemThread;->addToRun(Lsk/mimac/slideshow/utils/InterruptableRunnable;)V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string p1, "Requested zone was not found"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0

    :cond_1
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string p1, "Missing HTML"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0

    :cond_2
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string p1, "Only admin can call showSentHtml"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private static showStream(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "duration"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_TIMEOUT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const-string v1, "address"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "description"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p0

    new-instance v3, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v4, Lsk/mimac/slideshow/enums/ItemType;->STREAM:Lsk/mimac/slideshow/enums/ItemType;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "Stream"

    :goto_1
    const/4 v5, 0x0

    invoke-direct {v3, v5, v1, v4, v2}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/Long;Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v1, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    invoke-direct {v1, v3, v0, v2}, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Item;Ljava/lang/Integer;Lsk/mimac/slideshow/enums/MusicType;)V

    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Lsk/mimac/slideshow/playlist/PlaylistWrapper;)V

    return-void

    :cond_2
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested zone was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0

    :cond_3
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Missing address"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method


# virtual methods
.method public process(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 2
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "osc/last"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :catch_0
    move-exception p2

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "schedule/layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "configuration/import"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "showstream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "hardware/set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "hardware/get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "audio/next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "layout/clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "lastuseractivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "playlist/set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "communication/debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "showsenthtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "layout/set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "shell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "zone/content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_11
    const-string v1, "showfile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_12
    const-string v1, "schedule/panel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_13
    const-string v1, "resume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_14
    const-string v1, "reload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_15
    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_16
    const-string v1, "previous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_17
    const-string v1, "schedule/layout/set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_18
    const-string v1, "playlist/clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_19
    const-string v1, "schedule/screenlayout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_1a
    const-string v1, "httpproxy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lsk/mimac/slideshow/ApiService;->processInternal(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-direct {p0}, Lsk/mimac/slideshow/ApiService;->getZonesContent()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->processShell(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-direct {p0}, Lsk/mimac/slideshow/ApiService;->processHardwareGet()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->processHardwareSet(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->configurationImport(Ljava/util/Map;)V

    return-object v1

    :pswitch_5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "secondsSinceLastActivity"

    invoke-static {}, Lsk/mimac/slideshow/UserActivityHolder;->getSecondsSinceLastActivity()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {}, Lsk/mimac/slideshow/ApiService;->communicationDebug()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-direct {p0}, Lsk/mimac/slideshow/ApiService;->lastOscMessage()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->panelSchedule(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->scheduleLayout(Ljava/util/Map;)V

    return-object v1

    :pswitch_a
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->screenLayoutSchedule(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_b
    new-instance p2, Le1/a;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Le1/a;-><init>(I)V

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->runAfterDelay(Ljava/util/concurrent/Callable;)V

    return-object v1

    :pswitch_c
    new-instance p2, Le1/a;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Le1/a;-><init>(I)V

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->runAfterDelay(Ljava/util/concurrent/Callable;)V

    return-object v1

    :pswitch_d
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->clearSetScreenLayout()V

    return-object v1

    :pswitch_e
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->setLayout(Ljava/util/Map;)V

    return-object v1

    :pswitch_f
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->clearPlaylist(Ljava/util/Map;)V

    return-object v1

    :pswitch_10
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->setPlaylist(Ljava/util/Map;)V

    return-object v1

    :pswitch_11
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p2

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    return-object v1

    :pswitch_12
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->resume(Ljava/util/Map;)V

    return-object v1

    :pswitch_13
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->pause(Ljava/util/Map;)V

    return-object v1

    :pswitch_14
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->showStream(Ljava/util/Map;)V

    return-object v1

    :pswitch_15
    invoke-static {p2, p3}, Lsk/mimac/slideshow/ApiService;->showSentHtml(Ljava/util/Map;Z)V

    return-object v1

    :pswitch_16
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->showFile(Ljava/util/Map;)V

    return-object v1

    :pswitch_17
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->previous(Ljava/util/Map;)V

    return-object v1

    :pswitch_18
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->next(Ljava/util/Map;)V
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    sget-object p3, Lsk/mimac/slideshow/ApiService;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while executing API command \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, p2, p3}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1

    :pswitch_19
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->handleHttpProxy(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :goto_3
    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7a3778f2 -> :sswitch_19
        -0x6de82830 -> :sswitch_18
        -0x6dc4058b -> :sswitch_17
        -0x4bec4509 -> :sswitch_16
        -0x37ba085b -> :sswitch_15
        -0x37b57e67 -> :sswitch_14
        -0x37b237d3 -> :sswitch_13
        -0x35f62b74 -> :sswitch_12
        -0x1429f607 -> :sswitch_11
        -0x490d6ea -> :sswitch_10
        0x338af3 -> :sswitch_f
        0x65825f6 -> :sswitch_e
        0x6855e30 -> :sswitch_d
        0xba6d6e6 -> :sswitch_1a
        0x144c6ffd -> :sswitch_c
        0x14a2d940 -> :sswitch_b
        0x1b0d72da -> :sswitch_a
        0x228462a5 -> :sswitch_9
        0x2b594570 -> :sswitch_8
        0x3211ef28 -> :sswitch_7
        0x59b2358c -> :sswitch_6
        0x5b599eaf -> :sswitch_5
        0x5b59cbbb -> :sswitch_4
        0x654838bd -> :sswitch_3
        0x67c97ede -> :sswitch_2
        0x706281a2 -> :sswitch_1
        0x79c7bba6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_19
    .end packed-switch
.end method

.method public abstract processInternal(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation
.end method
