.class public Lsk/mimac/slideshow/config/model/PlaylistType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "PlaylistType"
.end annotation


# instance fields
.field private action:Lsk/mimac/slideshow/config/model/PlaylistActionType;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "action"
        required = false
    .end annotation
.end field

.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/ContentType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "content"
        inline = true
        name = "content"
        required = false
    .end annotation
.end field

.field private id:J
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
        required = true
    .end annotation
.end field

.field private musicType:Lsk/mimac/slideshow/config/model/MusicTypeType;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "musicType"
        required = true
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "name"
        required = true
    .end annotation
.end field

.field private number:Ljava/lang/Integer;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "number"
        required = false
    .end annotation
.end field

.field private property:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "property"
        inline = true
        name = "property"
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
.method public getAction()Lsk/mimac/slideshow/config/model/PlaylistActionType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->action:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/ContentType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->content:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->id:J

    return-wide v0
.end method

.method public getMusicType()Lsk/mimac/slideshow/config/model/MusicTypeType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->musicType:Lsk/mimac/slideshow/config/model/MusicTypeType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->number:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProperty()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->property:Ljava/util/List;

    return-object v0
.end method

.method public setAction(Lsk/mimac/slideshow/config/model/PlaylistActionType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->action:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/ContentType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->content:Ljava/util/List;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->id:J

    return-void
.end method

.method public setMusicType(Lsk/mimac/slideshow/config/model/MusicTypeType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->musicType:Lsk/mimac/slideshow/config/model/MusicTypeType;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->number:Ljava/lang/Integer;

    return-void
.end method

.method public setProperty(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistType;->property:Ljava/util/List;

    return-void
.end method
