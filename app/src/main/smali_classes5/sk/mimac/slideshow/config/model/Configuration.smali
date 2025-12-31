.class public Lsk/mimac/slideshow/config/model/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "configuration"
.end annotation


# instance fields
.field private additionalData:Lsk/mimac/slideshow/config/model/AdditionalDatasType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "additionalData"
        required = false
    .end annotation
.end field

.field private audioSchedule:Lsk/mimac/slideshow/config/model/AudioScheduleType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "audioSchedule"
        required = false
    .end annotation
.end field

.field private downloads:Lsk/mimac/slideshow/config/model/GrabbersType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "downloads"
        required = false
    .end annotation
.end field

.field private fileDatas:Lsk/mimac/slideshow/config/model/FileDatasType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "fileDatas"
        required = false
    .end annotation
.end field

.field private info:Lsk/mimac/slideshow/config/model/InfoType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "info"
        required = false
    .end annotation
.end field

.field private items:Lsk/mimac/slideshow/config/model/ItemsType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "items"
        required = false
    .end annotation
.end field

.field private keyMappings:Lsk/mimac/slideshow/config/model/KeyMappingsType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "keyMappings"
        required = false
    .end annotation
.end field

.field private playlists:Lsk/mimac/slideshow/config/model/PlaylistsType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "playlists"
        required = false
    .end annotation
.end field

.field private rssMessages:Lsk/mimac/slideshow/config/model/RssServerMessagesType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "rssMessages"
        required = false
    .end annotation
.end field

.field private screenLayouts:Lsk/mimac/slideshow/config/model/ScreenLayoutsType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "screenLayouts"
        required = false
    .end annotation
.end field

.field private settings:Lsk/mimac/slideshow/config/model/SettingsType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "settings"
        required = false
    .end annotation
.end field

.field private triggers:Lsk/mimac/slideshow/config/model/TriggersType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "triggers"
        required = false
    .end annotation
.end field

.field private users:Lsk/mimac/slideshow/config/model/UsersType;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "users"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalData()Lsk/mimac/slideshow/config/model/AdditionalDatasType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->additionalData:Lsk/mimac/slideshow/config/model/AdditionalDatasType;

    return-object v0
.end method

.method public getAudioSchedule()Lsk/mimac/slideshow/config/model/AudioScheduleType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->audioSchedule:Lsk/mimac/slideshow/config/model/AudioScheduleType;

    return-object v0
.end method

.method public getDownloads()Lsk/mimac/slideshow/config/model/GrabbersType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->downloads:Lsk/mimac/slideshow/config/model/GrabbersType;

    return-object v0
.end method

.method public getFileDatas()Lsk/mimac/slideshow/config/model/FileDatasType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->fileDatas:Lsk/mimac/slideshow/config/model/FileDatasType;

    return-object v0
.end method

.method public getInfo()Lsk/mimac/slideshow/config/model/InfoType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->info:Lsk/mimac/slideshow/config/model/InfoType;

    return-object v0
.end method

.method public getItems()Lsk/mimac/slideshow/config/model/ItemsType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->items:Lsk/mimac/slideshow/config/model/ItemsType;

    return-object v0
.end method

.method public getKeyMappings()Lsk/mimac/slideshow/config/model/KeyMappingsType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->keyMappings:Lsk/mimac/slideshow/config/model/KeyMappingsType;

    return-object v0
.end method

.method public getPlaylists()Lsk/mimac/slideshow/config/model/PlaylistsType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->playlists:Lsk/mimac/slideshow/config/model/PlaylistsType;

    return-object v0
.end method

.method public getRssMessages()Lsk/mimac/slideshow/config/model/RssServerMessagesType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->rssMessages:Lsk/mimac/slideshow/config/model/RssServerMessagesType;

    return-object v0
.end method

.method public getScreenLayouts()Lsk/mimac/slideshow/config/model/ScreenLayoutsType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->screenLayouts:Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    return-object v0
.end method

.method public getSettings()Lsk/mimac/slideshow/config/model/SettingsType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->settings:Lsk/mimac/slideshow/config/model/SettingsType;

    return-object v0
.end method

.method public getTriggers()Lsk/mimac/slideshow/config/model/TriggersType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->triggers:Lsk/mimac/slideshow/config/model/TriggersType;

    return-object v0
.end method

.method public getUsers()Lsk/mimac/slideshow/config/model/UsersType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/Configuration;->users:Lsk/mimac/slideshow/config/model/UsersType;

    return-object v0
.end method

.method public setAdditionalData(Lsk/mimac/slideshow/config/model/AdditionalDatasType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->additionalData:Lsk/mimac/slideshow/config/model/AdditionalDatasType;

    return-void
.end method

.method public setAudioSchedule(Lsk/mimac/slideshow/config/model/AudioScheduleType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->audioSchedule:Lsk/mimac/slideshow/config/model/AudioScheduleType;

    return-void
.end method

.method public setDownloads(Lsk/mimac/slideshow/config/model/GrabbersType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->downloads:Lsk/mimac/slideshow/config/model/GrabbersType;

    return-void
.end method

.method public setFileDatas(Lsk/mimac/slideshow/config/model/FileDatasType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->fileDatas:Lsk/mimac/slideshow/config/model/FileDatasType;

    return-void
.end method

.method public setInfo(Lsk/mimac/slideshow/config/model/InfoType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->info:Lsk/mimac/slideshow/config/model/InfoType;

    return-void
.end method

.method public setItems(Lsk/mimac/slideshow/config/model/ItemsType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->items:Lsk/mimac/slideshow/config/model/ItemsType;

    return-void
.end method

.method public setKeyMappings(Lsk/mimac/slideshow/config/model/KeyMappingsType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->keyMappings:Lsk/mimac/slideshow/config/model/KeyMappingsType;

    return-void
.end method

.method public setPlaylists(Lsk/mimac/slideshow/config/model/PlaylistsType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->playlists:Lsk/mimac/slideshow/config/model/PlaylistsType;

    return-void
.end method

.method public setRssMessages(Lsk/mimac/slideshow/config/model/RssServerMessagesType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->rssMessages:Lsk/mimac/slideshow/config/model/RssServerMessagesType;

    return-void
.end method

.method public setScreenLayouts(Lsk/mimac/slideshow/config/model/ScreenLayoutsType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->screenLayouts:Lsk/mimac/slideshow/config/model/ScreenLayoutsType;

    return-void
.end method

.method public setSettings(Lsk/mimac/slideshow/config/model/SettingsType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->settings:Lsk/mimac/slideshow/config/model/SettingsType;

    return-void
.end method

.method public setTriggers(Lsk/mimac/slideshow/config/model/TriggersType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->triggers:Lsk/mimac/slideshow/config/model/TriggersType;

    return-void
.end method

.method public setUsers(Lsk/mimac/slideshow/config/model/UsersType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/Configuration;->users:Lsk/mimac/slideshow/config/model/UsersType;

    return-void
.end method
