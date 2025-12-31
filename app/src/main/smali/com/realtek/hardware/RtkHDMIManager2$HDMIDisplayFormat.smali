.class public Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HDMIDisplayFormat"
.end annotation


# instance fields
.field public m3DFormat:I

.field public mColor:I

.field public mColorDepth:I

.field public mColorModeEnum:I

.field public mEdidAutoMode:I

.field private mFmt:Lcom/realtek/hardware/OutputFormat;

.field private mFormat:Lcom/realtek/hardware/OutputFormat;

.field public mHDMIIsOn:I

.field public mHDR:I

.field private mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

.field public mTVSystem:I

.field public mVIC:I

.field final synthetic this$0:Lcom/realtek/hardware/RtkHDMIManager2;


# direct methods
.method public constructor <init>(Lcom/realtek/hardware/RtkHDMIManager2;Lcom/realtek/hardware/OutputFormat;)V
    .locals 7

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDMIIsOn:I

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mTVSystem:I

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColor:I

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColorDepth:I

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->m3DFormat:I

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDR:I

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mVIC:I

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mEdidAutoMode:I

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColorModeEnum:I

    iput-object p2, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mFmt:Lcom/realtek/hardware/OutputFormat;

    iget v1, p2, Lcom/realtek/hardware/OutputFormat;->mMode:I

    const-string v2, "RtkHDMIManager2"

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    const/4 v1, 0x1

    iput v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDMIIsOn:I

    invoke-static {p1, p2}, Lcom/realtek/hardware/RtkHDMIManager2;->access$000(Lcom/realtek/hardware/RtkHDMIManager2;Lcom/realtek/hardware/OutputFormat;)Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iput-object p2, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mFormat:Lcom/realtek/hardware/OutputFormat;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIManager2;->access$100(Lcom/realtek/hardware/RtkHDMIManager2;)I

    move-result v4

    iput v4, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mEdidAutoMode:I

    iget-object v4, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v4, v4, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mSettingValue:I

    iput v4, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mTVSystem:I

    invoke-virtual {p1}, Lcom/realtek/hardware/RtkHDMIManager2;->checkIfHDMIPlugged()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mEdidAutoMode:I

    if-ne v4, v3, :cond_0

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIManager2;->access$200(Lcom/realtek/hardware/RtkHDMIManager2;)Z

    move-result v3

    if-nez v3, :cond_0

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mTVSystem:I

    :cond_0
    iget v3, p2, Lcom/realtek/hardware/OutputFormat;->mColor:I

    iput v3, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColor:I

    iget v3, p2, Lcom/realtek/hardware/OutputFormat;->mColorDepth:I

    iput v3, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColorDepth:I

    iget v3, p2, Lcom/realtek/hardware/OutputFormat;->m3DFormat:I

    iput v3, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->m3DFormat:I

    iget v3, p2, Lcom/realtek/hardware/OutputFormat;->mHDR:I

    iput v3, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDR:I

    const/4 v3, 0x4

    invoke-static {p1, v3}, Lcom/realtek/hardware/RtkHDMIManager2;->access$300(Lcom/realtek/hardware/RtkHDMIManager2;I)I

    move-result v3

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIManager2;->access$400(Lcom/realtek/hardware/RtkHDMIManager2;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "auto:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " input:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v1, :cond_1

    const-string v4, "HDMIDisplayFormat report HDR AUTO ENUM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDR:I

    :cond_1
    if-ne v3, v1, :cond_2

    const/4 v0, 0x6

    iput v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDR:I

    :cond_2
    iget p2, p2, Lcom/realtek/hardware/OutputFormat;->mVIC:I

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mVIC:I

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIManager2;->access$500(Lcom/realtek/hardware/RtkHDMIManager2;)I

    move-result p1

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColorModeEnum:I

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "HDMI-HIDL HDMIDisplayFormat: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$1300(Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;)Lcom/realtek/hardware/OutputFormat;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mFormat:Lcom/realtek/hardware/OutputFormat;

    return-object p0
.end method


# virtual methods
.method public getBandwidth()I
    .locals 3

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v1, v0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mWidth:I

    iget v2, v0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mHeight:I

    mul-int v1, v1, v2

    iget v0, v0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFps:I

    mul-int v1, v1, v0

    return v1
.end method

.method public getColorModeSummary()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDMIIsOn:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColorModeEnum:I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/16 v2, 0xd

    .line 13
    .line 14
    if-ne v0, v2, :cond_2

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    .line 17
    .line 18
    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColor:I

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/realtek/hardware/RtkHDMIManager2;->access$600(Lcom/realtek/hardware/RtkHDMIManager2;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, " ("

    .line 25
    .line 26
    const-string v2, ","

    .line 27
    .line 28
    invoke-static {v1, v0, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColorDepth:I

    .line 33
    .line 34
    const-string v2, "Bit)"

    .line 35
    .line 36
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_2
    return-object v1
.end method

.method public getHDRSummary()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDMIIsOn:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDR:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mFmt:Lcom/realtek/hardware/OutputFormat;

    .line 15
    .line 16
    iget v1, v1, Lcom/realtek/hardware/OutputFormat;->mHDR:I

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/realtek/hardware/RtkHDMIManager2;->access$700(Lcom/realtek/hardware/RtkHDMIManager2;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, " ("

    .line 23
    .line 24
    const-string v2, ")"

    .line 25
    .line 26
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_1
    return-object v1
.end method

.method public getTVSystemSummary()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDMIIsOn:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mTVSystem:I

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, " ("

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    .line 20
    .line 21
    iget v1, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mWidth:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "x"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    .line 32
    .line 33
    iget v1, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mHeight:I

    .line 34
    .line 35
    const-string v2, ","

    .line 36
    .line 37
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    .line 42
    .line 43
    iget-boolean v1, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mProgress:Z

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const-string v1, "progressive"

    .line 48
    .line 49
    :goto_0
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string v1, "interlace"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    invoke-static {v0, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    .line 66
    .line 67
    iget v1, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFps:I

    .line 68
    .line 69
    const-string v2, "Hz)"

    .line 70
    .line 71
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDMIIsOn:I

    const/4 v1, 0x1

    const-string v2, "HDMI:"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColor:I

    invoke-static {v0, v1}, Lcom/realtek/hardware/RtkHDMIManager2;->access$600(Lcom/realtek/hardware/RtkHDMIManager2;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    iget v3, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDR:I

    invoke-static {v1, v3}, Lcom/realtek/hardware/RtkHDMIManager2;->access$700(Lcom/realtek/hardware/RtkHDMIManager2;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDMIIsOn:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTVSystem:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mTVSystem:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v4, v4, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v4, v4, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColorDepth:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " HDR:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ColorMode:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mColorModeEnum:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " EDID Auto:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mEdidAutoMode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->mHDMIIsOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
