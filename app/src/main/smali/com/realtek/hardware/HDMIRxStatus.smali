.class public Lcom/realtek/hardware/HDMIRxStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_HDMIRX_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMIRX_PLUGGED"

.field public static final ACTTION_HDMIRX_AUDIO_CHANGED:Ljava/lang/String; = "android.intent.action.HDMIRX_AUDIO_CHANGED"

.field public static final ACTTION_HDMIRX_HDCP_CHANGED:Ljava/lang/String; = "android.intent.action.HDMIRX_HDCP_STATUS"

.field public static final COLOR_RGB:I = 0x0

.field public static final COLOR_YUV411:I = 0x3

.field public static final COLOR_YUV422:I = 0x1

.field public static final COLOR_YUV444:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/realtek/hardware/HDMIRxStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_HDMIRX_AUDIO_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_HDMIRX_HDCP_STATUS:Ljava/lang/String; = "state"

.field public static final EXTRA_HDMIRX_PLUGGED_STATE:Ljava/lang/String; = "state"

.field private static final HDMIRX_AUDIO_INFO:Ljava/lang/String; = "/sys/class/video4linux/video250/hdmirx_audio_info"

.field private static final HDMIRX_VIDEO_INFO:Ljava/lang/String; = "/sys/class/video4linux/video250/hdmirx_video_info"

.field public static final SCANMODE_INTERLACED:I = 0x1

.field public static final SCANMODE_PROGRESSIVE:I = 0x0

.field public static final SPDIF_LPCM:I = 0x0

.field public static final SPDIF_RAW:I = 0x1

.field public static final STATUS_NOT_READY:I = 0x0

.field public static final STATUS_READY:I = 0x1

.field public static final TYPE_HDMI_RX:I = 0x0

.field public static final TYPE_MIPI:I = 0x1

.field public static final UNKNOWN:I = -0x1


# instance fields
.field public audioStatus:I

.field public color:I

.field public freq:I

.field public height:I

.field public scanMode:I

.field public spdif:I

.field public status:I

.field public type:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/realtek/hardware/HDMIRxStatus$1;

    invoke-direct {v0}, Lcom/realtek/hardware/HDMIRxStatus$1;-><init>()V

    sput-object v0, Lcom/realtek/hardware/HDMIRxStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->type:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->status:I

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->width:I

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->height:I

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->scanMode:I

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->color:I

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->freq:I

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->spdif:I

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->audioStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->scanMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->color:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->freq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/realtek/hardware/HDMIRxStatus;->spdif:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/realtek/hardware/HDMIRxStatus;->audioStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic getStability()I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/os/Parcelable$-CC;->$default$getStability(Landroid/os/Parcelable;)I

    move-result v0

    return v0
.end method

.method public updateHDMIRxInfo()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/video4linux/video250/hdmirx_video_info"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3a

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "HDMIRx"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iput v2, p0, Lcom/realtek/hardware/HDMIRxStatus;->type:I

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/realtek/hardware/HDMIRxStatus;->type:I

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Ready"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iput v4, p0, Lcom/realtek/hardware/HDMIRxStatus;->status:I

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/realtek/hardware/HDMIRxStatus;->status:I

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->width:I

    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->height:I

    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Progressive"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    iput v2, p0, Lcom/realtek/hardware/HDMIRxStatus;->scanMode:I

    goto :goto_2

    :cond_6
    iput v4, p0, Lcom/realtek/hardware/HDMIRxStatus;->scanMode:I

    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "RGB"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    iput v2, p0, Lcom/realtek/hardware/HDMIRxStatus;->color:I

    goto :goto_3

    :cond_8
    const-string v5, "YUV422"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_9

    iput v4, p0, Lcom/realtek/hardware/HDMIRxStatus;->color:I

    goto :goto_3

    :cond_9
    const-string v5, "YUV444"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x2

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->color:I

    goto :goto_3

    :cond_a
    const/4 v1, 0x3

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->color:I

    :cond_b
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->freq:I

    :cond_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v5, "/sys/class/video4linux/video250/hdmirx_audio_info"

    invoke-direct {v1, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_d

    iput v4, p0, Lcom/realtek/hardware/HDMIRxStatus;->audioStatus:I

    goto :goto_4

    :cond_d
    iput v2, p0, Lcom/realtek/hardware/HDMIRxStatus;->audioStatus:I

    :cond_e
    :goto_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/realtek/hardware/HDMIRxStatus;->freq:I

    :cond_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Non-LPCM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    iput v4, p0, Lcom/realtek/hardware/HDMIRxStatus;->spdif:I

    goto :goto_5

    :cond_10
    iput v2, p0, Lcom/realtek/hardware/HDMIRxStatus;->spdif:I

    :cond_11
    :goto_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/realtek/hardware/HDMIRxStatus;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/realtek/hardware/HDMIRxStatus;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/realtek/hardware/HDMIRxStatus;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/realtek/hardware/HDMIRxStatus;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/realtek/hardware/HDMIRxStatus;->scanMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/realtek/hardware/HDMIRxStatus;->color:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/realtek/hardware/HDMIRxStatus;->freq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/realtek/hardware/HDMIRxStatus;->spdif:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/realtek/hardware/HDMIRxStatus;->audioStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
