.class public Lsk/mimac/slideshow/face/FaceDetectionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final eyesOpened:F

.field private final facesCount:I

.field private final largestFace:I

.field private final time:Lj$/time/LocalTime;

.field private final trackingIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj$/time/LocalTime;->now()Lj$/time/LocalTime;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->time:Lj$/time/LocalTime;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->trackingIds:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->facesCount:I

    iput v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->largestFace:I

    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->eyesOpened:F

    return-void
.end method

.method public constructor <init>(Lj$/time/LocalTime;IIF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->time:Lj$/time/LocalTime;

    const/4 p1, 0x0

    iput-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->trackingIds:Ljava/util/Set;

    iput p2, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->facesCount:I

    iput p3, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->largestFace:I

    iput p4, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->eyesOpened:F

    return-void
.end method

.method public constructor <init>(Lj$/time/LocalTime;Ljava/util/Set;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalTime;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;IF)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->time:Lj$/time/LocalTime;

    iput-object p2, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->trackingIds:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->facesCount:I

    iput p3, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->largestFace:I

    iput p4, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->eyesOpened:F

    return-void
.end method


# virtual methods
.method public getEyesOpened()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->eyesOpened:F

    return v0
.end method

.method public getEyesOpenedFormatted()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->eyesOpened:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "%.2f"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacesCount()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->facesCount:I

    return v0
.end method

.method public getLargestFace()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->largestFace:I

    return v0
.end method

.method public getTime()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->time:Lj$/time/LocalTime;

    return-object v0
.end method

.method public getTrackingIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/face/FaceDetectionResult;->trackingIds:Ljava/util/Set;

    return-object v0
.end method
