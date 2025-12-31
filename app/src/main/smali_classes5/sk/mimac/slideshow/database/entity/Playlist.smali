.class public Lsk/mimac/slideshow/database/entity/Playlist;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private action:Lsk/mimac/slideshow/enums/PlaylistAction;

.field private id:Ljava/lang/Long;

.field private linkedItemId:Ljava/lang/Long;

.field private music:Lsk/mimac/slideshow/enums/MusicType;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/Integer;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->properties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lsk/mimac/slideshow/enums/MusicType;Ljava/lang/String;Lsk/mimac/slideshow/enums/PlaylistAction;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->properties:Ljava/util/Map;

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/Playlist;->number:Ljava/lang/Integer;

    iput-object p2, p0, Lsk/mimac/slideshow/database/entity/Playlist;->music:Lsk/mimac/slideshow/enums/MusicType;

    iput-object p3, p0, Lsk/mimac/slideshow/database/entity/Playlist;->name:Ljava/lang/String;

    iput-object p4, p0, Lsk/mimac/slideshow/database/entity/Playlist;->action:Lsk/mimac/slideshow/enums/PlaylistAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;Lsk/mimac/slideshow/enums/PlaylistAction;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->properties:Ljava/util/Map;

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/Playlist;->id:Ljava/lang/Long;

    iput-object p2, p0, Lsk/mimac/slideshow/database/entity/Playlist;->number:Ljava/lang/Integer;

    iput-object p4, p0, Lsk/mimac/slideshow/database/entity/Playlist;->music:Lsk/mimac/slideshow/enums/MusicType;

    iput-object p3, p0, Lsk/mimac/slideshow/database/entity/Playlist;->name:Ljava/lang/String;

    iput-object p5, p0, Lsk/mimac/slideshow/database/entity/Playlist;->action:Lsk/mimac/slideshow/enums/PlaylistAction;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lsk/mimac/slideshow/database/entity/Playlist;

    iget-object v2, p0, Lsk/mimac/slideshow/database/entity/Playlist;->id:Ljava/lang/Long;

    iget-object p1, p1, Lsk/mimac/slideshow/database/entity/Playlist;->id:Ljava/lang/Long;

    if-nez v2, :cond_4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAction()Lsk/mimac/slideshow/enums/PlaylistAction;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->action:Lsk/mimac/slideshow/enums/PlaylistAction;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLinkedItemId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->linkedItemId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMusic()Lsk/mimac/slideshow/enums/MusicType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->music:Lsk/mimac/slideshow/enums/MusicType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->number:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/Playlist;->id:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/Playlist;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLinkedItemId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/Playlist;->linkedItemId:Ljava/lang/Long;

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/Playlist;->properties:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Playlist{id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/Playlist;->id:Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", number="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/Playlist;->number:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", music="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/Playlist;->music:Lsk/mimac/slideshow/enums/MusicType;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", name="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/Playlist;->name:Ljava/lang/String;

    .line 39
    .line 40
    const/16 v2, 0x7d

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
