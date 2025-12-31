.class public Lsk/mimac/slideshow/utils/DisplayInfoDto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private displayId:Ljava/lang/String;

.field private dpi:I

.field private hdcpEnabled:Z

.field private height:I

.field private main:Z

.field private name:Ljava/lang/String;

.field private physicalHeight:I

.field private physicalWidth:I

.field private refreshRate:F

.field private supportedHdrTypes:Ljava/lang/String;

.field private uniqueId:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public desc()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->displayId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, " px)"

    .line 8
    .line 9
    const-string v2, " x "

    .line 10
    .line 11
    const-string v3, " ("

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v4, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->name:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v3, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->width:I

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->height:I

    .line 37
    .line 38
    :goto_0
    invoke-static {v1, v2, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, " - "

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->name:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v3, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->width:I

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v2, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->height:I

    .line 77
    .line 78
    goto :goto_0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getDpi()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->dpi:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->uniqueId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->uniqueId:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicalHeight()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->physicalHeight:I

    return v0
.end method

.method public getPhysicalWidth()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->physicalWidth:I

    return v0
.end method

.method public getRefreshRate()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->refreshRate:F

    return v0
.end method

.method public getSupportedHdrTypes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->supportedHdrTypes:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->width:I

    return v0
.end method

.method public isHdcpEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->hdcpEnabled:Z

    return v0
.end method

.method public isMain()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->main:Z

    return v0
.end method

.method public setDisplayId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->displayId:Ljava/lang/String;

    return-void
.end method

.method public setDpi(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->dpi:I

    return-void
.end method

.method public setHdcpEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->hdcpEnabled:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->height:I

    return-void
.end method

.method public setMain(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->main:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhysicalHeight(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->physicalHeight:I

    return-void
.end method

.method public setPhysicalWidth(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->physicalWidth:I

    return-void
.end method

.method public setRefreshRate(F)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->refreshRate:F

    return-void
.end method

.method public setSupportedHdrTypes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->supportedHdrTypes:Ljava/lang/String;

    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->displayId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " - "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->name:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " ("

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->width:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " x "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->height:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " px / "

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v3, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->dpi:I

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " DPI / "

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v3, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->physicalWidth:I

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->physicalHeight:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-instance v1, Ljava/text/DecimalFormat;

    .line 73
    .line 74
    const-string v2, "0.##"

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v2, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->refreshRate:F

    .line 80
    .line 81
    float-to-double v2, v2

    .line 82
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, " Hz / "

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lsk/mimac/slideshow/utils/DisplayInfoDto;->supportedHdrTypes:Ljava/lang/String;

    .line 95
    .line 96
    const-string v2, ")"

    .line 97
    .line 98
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0
.end method
