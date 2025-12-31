.class public Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickedFile"
.end annotation


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final finished:Z

.field private final position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;->fileName:Ljava/lang/String;

    iput p2, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;->position:I

    iput-boolean p3, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;->finished:Z

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;->position:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;->finished:Z

    return v0
.end method
