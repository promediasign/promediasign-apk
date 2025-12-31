.class public Lsk/mimac/slideshow/gui/play/NothingToPlay;
.super Lsk/mimac/slideshow/gui/play/ToPlay;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final clearScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/play/NothingToPlay;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/play/NothingToPlay;->clearScreen:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;-><init>()V

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/play/NothingToPlay;->clearScreen:Z

    return-void
.end method


# virtual methods
.method public play(Lsk/mimac/slideshow/gui/ShowHelper;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/play/NothingToPlay;->clearScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/ShowHelper;->clearScreen()V

    :cond_0
    return-void
.end method

.method public play(Lsk/mimac/slideshow/music/MusicPlayer;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Lsk/mimac/slideshow/music/MusicPlayer;->stop()V

    invoke-static {}, Lsk/mimac/slideshow/VolumeHolder;->isMuted()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Un-muting other audio"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/VolumeHolder;->setMuted(Z)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->unMuteGuiCreator()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Nothing{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clearScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/play/NothingToPlay;->clearScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
