.class public abstract Lsk/mimac/slideshow/gui/ShowHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearScreen()V
.end method

.method public abstract close()V
.end method

.method public abstract geYouTubeDuration()I
.end method

.method public abstract getVideoCurrentPosition()I
.end method

.method public abstract getVideoDuration()I
.end method

.method public abstract getYouTubeCurrentPosition()I
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract pauseYouTube()V
.end method

.method public abstract prepareCustomPanel(Lsk/mimac/slideshow/database/entity/Item;I)V
.end method

.method public abstract prepareImage(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/ImageBackgroundType;I)V
.end method

.method public abstract preparePdf(Ljava/lang/String;II)V
.end method

.method public abstract prepareVideo(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
.end method

.method public abstract prepareYouTube(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V
.end method

.method public abstract resumeVideo()V
.end method

.method public abstract resumeYouTube()V
.end method

.method public abstract showCustomPanel(Lsk/mimac/slideshow/database/entity/Item;I)Z
.end method

.method public abstract showHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract showImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/ImageBackgroundType;IILjava/util/Set;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/enums/ImageBackgroundType;",
            "II",
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/enums/AnimationType;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract showInstructionScreen()V
.end method

.method public abstract showPdf(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/util/Set;ZI)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/enums/AnimationType;",
            ">;ZI)I"
        }
    .end annotation
.end method

.method public abstract showStream(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
.end method

.method public abstract showTextView(Lsk/mimac/slideshow/model/TextModel;I)V
.end method

.method public abstract showUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract showVideo(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
.end method

.method public abstract showVideoInput(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;IZLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract showWidget(I)V
.end method

.method public abstract showYouTube(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V
.end method
