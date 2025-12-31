.class Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkDPTxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DPTxFormatSupport"
.end annotation


# instance fields
.field mInfo:Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

.field mVIC:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mInfo:Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    iput p1, p0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mVIC:I

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->resolveTVSystemInfo(I)V

    return-void
.end method

.method private resolveTVSystemInfo(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/realtek/hardware/RtkDPTxManager;->access$000()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/realtek/hardware/RtkDPTxManager;->access$000()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    iget v2, v1, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mVIC:I

    if-ne v2, p1, :cond_0

    iput-object v1, p0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mInfo:Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VIC:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mVIC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mInfo:Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    iget v1, v1, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mInfo:Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    iget v1, v1, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mInfo:Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    iget v1, v1, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkDPTXManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public source()I
    .locals 3

    iget-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mInfo:Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DPTxFormatSupport source null error VIC:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mVIC:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RtkDPTXManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v2, v0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mFreqShift:I

    if-lez v2, :cond_1

    return v1

    :cond_1
    iget v1, v0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mHeight:I

    mul-int v1, v1, v1

    iget v2, v0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mFps:I

    mul-int v1, v1, v2

    iget-boolean v0, v0, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mProgress:Z

    if-nez v0, :cond_2

    div-int/lit8 v1, v1, 0x2

    :cond_2
    return v1
.end method
