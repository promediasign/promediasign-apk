.class public abstract Lsk/mimac/slideshow/gui/play/ToPlay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PLAY_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private content:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private item:Lsk/mimac/slideshow/database/entity/Item;

.field private itemClickResolver:Lsk/mimac/slideshow/gui/click/ItemClickResolver;

.field private length:I

.field private musicType:Lsk/mimac/slideshow/enums/MusicType;

.field private final playId:I

.field private playlistSyncCode:Ljava/lang/String;

.field private position:I

.field private syncCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/gui/play/ToPlay;->PLAY_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsk/mimac/slideshow/gui/play/ToPlay;->PLAY_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->playId:I

    return-void
.end method


# virtual methods
.method public canGoBackward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnimationTypes(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lsk/mimac/slideshow/enums/AnimationType;",
            ">;"
        }
    .end annotation

    const-class v0, Lsk/mimac/slideshow/enums/AnimationType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-static {v3}, Lsk/mimac/slideshow/enums/AnimationType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/AnimationType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Lsk/mimac/slideshow/database/entity/Item;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->item:Lsk/mimac/slideshow/database/entity/Item;

    return-object v0
.end method

.method public getItemClickResolver()Lsk/mimac/slideshow/gui/click/ItemClickResolver;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->itemClickResolver:Lsk/mimac/slideshow/gui/click/ItemClickResolver;

    return-object v0
.end method

.method public getItemTextColor()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->item:Lsk/mimac/slideshow/database/entity/Item;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "textColor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->length:I

    return v0
.end method

.method public getMusicType()Lsk/mimac/slideshow/enums/MusicType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->musicType:Lsk/mimac/slideshow/enums/MusicType;

    return-object v0
.end method

.method public getPlayId()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->playId:I

    return v0
.end method

.method public getPlayIdObject()Lsk/mimac/slideshow/gui/play/PlayId;
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/gui/play/PlayId;

    iget v1, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->playId:I

    iget v2, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->position:I

    iget-object v3, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->syncCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->playlistSyncCode:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lsk/mimac/slideshow/gui/play/PlayId;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->position:I

    return v0
.end method

.method public getSyncCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->syncCode:Ljava/lang/String;

    return-object v0
.end method

.method public abstract play(Lsk/mimac/slideshow/gui/ShowHelper;)V
.end method

.method public abstract play(Lsk/mimac/slideshow/music/MusicPlayer;)V
.end method

.method public prepare(Lsk/mimac/slideshow/gui/ShowHelper;)V
    .locals 0

    return-void
.end method

.method public processClickAreas(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/gui/click/ItemClickResolver;

    invoke-direct {v0, p1, p2}, Lsk/mimac/slideshow/gui/click/ItemClickResolver;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->itemClickResolver:Lsk/mimac/slideshow/gui/click/ItemClickResolver;

    return-void
.end method

.method public resolveDescText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->item:Lsk/mimac/slideshow/database/entity/Item;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/play/DescTextResolver;->resolveDescText(Lsk/mimac/slideshow/database/entity/Item;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->item:Lsk/mimac/slideshow/database/entity/Item;

    return-object p0
.end method

.method public setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->length:I

    return-object p0
.end method

.method public setMusicType(Lsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->musicType:Lsk/mimac/slideshow/enums/MusicType;

    return-object p0
.end method

.method public setPlaylistSyncCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->playlistSyncCode:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->position:I

    return-object p0
.end method

.method public setSyncCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/play/ToPlay;->syncCode:Ljava/lang/String;

    return-void
.end method
