.class public Lsk/mimac/slideshow/face/FaceDetectionStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final faceCurrentCount:I

.field private final faceUniqueCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/face/FaceDetectionStatistics;->faceCurrentCount:I

    iput v0, p0, Lsk/mimac/slideshow/face/FaceDetectionStatistics;->faceUniqueCount:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsk/mimac/slideshow/face/FaceDetectionStatistics;->faceCurrentCount:I

    iput p2, p0, Lsk/mimac/slideshow/face/FaceDetectionStatistics;->faceUniqueCount:I

    return-void
.end method


# virtual methods
.method public getFaceCurrentCount()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/face/FaceDetectionStatistics;->faceCurrentCount:I

    return v0
.end method

.method public getFaceUniqueCount()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/face/FaceDetectionStatistics;->faceUniqueCount:I

    return v0
.end method
