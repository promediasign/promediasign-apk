.class public Lsk/mimac/slideshow/config/model/PlaylistsType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "PlaylistsType"
.end annotation


# instance fields
.field private playlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PlaylistType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "playlist"
        inline = true
        name = "playlist"
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
.method public getPlaylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PlaylistType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PlaylistsType;->playlist:Ljava/util/List;

    return-object v0
.end method

.method public setPlaylist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PlaylistType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PlaylistsType;->playlist:Ljava/util/List;

    return-void
.end method
