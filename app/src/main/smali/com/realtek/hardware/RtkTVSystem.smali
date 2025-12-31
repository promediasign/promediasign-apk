.class public Lcom/realtek/hardware/RtkTVSystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ANALOG_AND_DIGITAL:I = 0x0

.field public static final ANALOG_ONLY:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/realtek/hardware/RtkTVSystem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIGITAL_ONLY:I = 0x2

.field public static final DISPLAY_PORT_AND_CVBS_SAME_SOURCE:I = 0x6

.field public static final DISPLAY_PORT_ONLY:I = 0x3

.field public static final FORCE_DP_OFF:I = 0x8

.field public static final HDMI_AND_DISPLAY_PORT_DIFF_SOURCE:I = 0x5

.field public static final HDMI_AND_DISPLAY_PORT_SAME_SOURCE:I = 0x4

.field public static final HDMI_AND_DP_DIFF_SOURCE_WITH_CVBS:I = 0x7

.field public static final HDMI_MODE:I = 0x1

.field public static final INTERFACE_TYPE_NA:I = -0x1

.field public static final MHL_MODE:I = 0x2

.field public static final MODE_3D_OFF:I = 0x0

.field public static final MODE_3D_ON:I = 0x1

.field public static final MODE_3D_UNKNOWN:I = -0x1

.field public static final TV_SYSTEM_AUTO_MODE_HDMI_EDID:I = 0x2

.field public static final TV_SYSTEM_AUTO_MODE_OFF:I = 0x0

.field public static final TV_SYSTEM_AUTO_MODE_PLAYBACK:I = 0x1

.field public static final TV_SYS_1024_768P_60HZ:I = 0x1f

.field public static final TV_SYS_1080I_50HZ:I = 0x7

.field public static final TV_SYS_1080I_59HZ:I = 0x11

.field public static final TV_SYS_1080I_60HZ:I = 0x8

.field public static final TV_SYS_1080P_23HZ:I = 0x12

.field public static final TV_SYS_1080P_24HZ:I = 0xf

.field public static final TV_SYS_1080P_25HZ:I = 0x1d

.field public static final TV_SYS_1080P_30HZ:I = 0x1e

.field public static final TV_SYS_1080P_50HZ:I = 0x9

.field public static final TV_SYS_1080P_59HZ:I = 0x13

.field public static final TV_SYS_1080P_60HZ:I = 0xa

.field public static final TV_SYS_1280_800P_60HZ:I = 0x22

.field public static final TV_SYS_1440_768P_60HZ:I = 0x20

.field public static final TV_SYS_1440_900P_60HZ:I = 0x21

.field public static final TV_SYS_2160P_23HZ:I = 0x14

.field public static final TV_SYS_2160P_24HZ:I = 0xb

.field public static final TV_SYS_2160P_25HZ:I = 0xc

.field public static final TV_SYS_2160P_29HZ:I = 0x15

.field public static final TV_SYS_2160P_30HZ:I = 0xd

.field public static final TV_SYS_2160P_50HZ:I = 0x17

.field public static final TV_SYS_2160P_59HZ:I = 0x1c

.field public static final TV_SYS_2160P_60HZ:I = 0x16

.field public static final TV_SYS_4096_2160P_24HZ:I = 0xe

.field public static final TV_SYS_4096_2160P_25HZ:I = 0x1a

.field public static final TV_SYS_4096_2160P_30HZ:I = 0x1b

.field public static final TV_SYS_4096_2160P_50HZ:I = 0x18

.field public static final TV_SYS_4096_2160P_60HZ:I = 0x19

.field public static final TV_SYS_480P:I = 0x3

.field public static final TV_SYS_576P:I = 0x4

.field public static final TV_SYS_720P_50HZ:I = 0x5

.field public static final TV_SYS_720P_59HZ:I = 0x10

.field public static final TV_SYS_720P_60HZ:I = 0x6

.field public static final TV_SYS_960_544P_60HZ:I = 0x23

.field public static final TV_SYS_COLORSPACE_AUTO_DETECT:I = 0x0

.field public static final TV_SYS_DEEPCOLOR_AUTO_DETECT:I = 0xd

.field public static final TV_SYS_HDMI_AUTO_DETECT:I = 0x0

.field public static final TV_SYS_NTSC:I = 0x1

.field public static final TV_SYS_NUM:I = 0x24

.field public static final TV_SYS_PAL:I = 0x2

.field public static final TV_SYS_RGB444_10BIT:I = 0x2

.field public static final TV_SYS_RGB444_12BIT:I = 0x3

.field public static final TV_SYS_RGB444_8BIT:I = 0x1

.field public static final TV_SYS_YCbCr420_10BIT:I = 0xb

.field public static final TV_SYS_YCbCr420_12BIT:I = 0xc

.field public static final TV_SYS_YCbCr420_8BIT:I = 0xa

.field public static final TV_SYS_YCbCr422_10BIT:I = 0x8

.field public static final TV_SYS_YCbCr422_12BIT:I = 0x9

.field public static final TV_SYS_YCbCr422_8BIT:I = 0x7

.field public static final TV_SYS_YCbCr444_10BIT:I = 0x5

.field public static final TV_SYS_YCbCr444_12BIT:I = 0x6

.field public static final TV_SYS_YCbCr444_8BIT:I = 0x4

.field public static final VIC_1024_768P_60HZ:I = 0xe7

.field public static final VIC_1280_720P_50HZ:I = 0x13

.field public static final VIC_1280_720P_60HZ:I = 0x4

.field public static final VIC_1280_800P_60HZ:I = 0xea

.field public static final VIC_1440_768P_60HZ:I = 0xe8

.field public static final VIC_1440_900P_60HZ:I = 0xe9

.field public static final VIC_1920_1080I_50HZ:I = 0x14

.field public static final VIC_1920_1080I_60HZ:I = 0x5

.field public static final VIC_1920_1080P_24HZ:I = 0x20

.field public static final VIC_1920_1080P_25HZ:I = 0x21

.field public static final VIC_1920_1080P_30HZ:I = 0x22

.field public static final VIC_1920_1080P_50HZ:I = 0x1f

.field public static final VIC_1920_1080P_60HZ:I = 0x10

.field public static final VIC_3840_2160P_24HZ:I = 0x5d

.field public static final VIC_3840_2160P_25HZ:I = 0x5e

.field public static final VIC_3840_2160P_30HZ:I = 0x5f

.field public static final VIC_3840_2160P_50HZ:I = 0x60

.field public static final VIC_3840_2160P_60HZ:I = 0x61

.field public static final VIC_4096_2160P_24HZ:I = 0x62

.field public static final VIC_4096_2160P_25HZ:I = 0x63

.field public static final VIC_4096_2160P_30HZ:I = 0x64

.field public static final VIC_4096_2160P_50HZ:I = 0x65

.field public static final VIC_4096_2160P_60HZ:I = 0x66

.field public static final VIC_720_480I_60HZ:I = 0x6

.field public static final VIC_720_480P_60HZ:I = 0x2

.field public static final VIC_720_576I_50HZ:I = 0x15

.field public static final VIC_720_576P_50HZ:I = 0x11

.field public static final VIC_960_544P_60HZ:I = 0xeb

.field public static final VIC_NA:I = 0x3e7

.field public static final VIDEO_HD1024_768P_60HZ:I = 0x1c

.field public static final VIDEO_HD1080_23HZ:I = 0xe

.field public static final VIDEO_HD1080_24HZ:I = 0x6

.field public static final VIDEO_HD1080_25HZ:I = 0x1b

.field public static final VIDEO_HD1080_30HZ:I = 0x12

.field public static final VIDEO_HD1080_50HZ:I = 0x4

.field public static final VIDEO_HD1080_59HZ:I = 0xd

.field public static final VIDEO_HD1080_60HZ:I = 0x5

.field public static final VIDEO_HD1280_800P_60HZ:I = 0x1f

.field public static final VIDEO_HD1440_768P_60HZ:I = 0x1d

.field public static final VIDEO_HD1440_900P_60HZ:I = 0x1e

.field public static final VIDEO_HD2160_23HZ:I = 0xf

.field public static final VIDEO_HD2160_24HZ:I = 0x7

.field public static final VIDEO_HD2160_25HZ:I = 0x8

.field public static final VIDEO_HD2160_29HZ:I = 0x10

.field public static final VIDEO_HD2160_30HZ:I = 0x9

.field public static final VIDEO_HD2160_50HZ:I = 0x13

.field public static final VIDEO_HD2160_59HZ:I = 0x1a

.field public static final VIDEO_HD2160_60HZ:I = 0x11

.field public static final VIDEO_HD4096_2160_24HZ:I = 0xa

.field public static final VIDEO_HD4096_2160_25HZ:I = 0x16

.field public static final VIDEO_HD4096_2160_30HZ:I = 0x17

.field public static final VIDEO_HD4096_2160_50HZ:I = 0x14

.field public static final VIDEO_HD4096_2160_60HZ:I = 0x15

.field public static final VIDEO_HD720_50HZ:I = 0x2

.field public static final VIDEO_HD720_59HZ:I = 0xc

.field public static final VIDEO_HD720_60HZ:I = 0x3

.field public static final VIDEO_HD960_544P_60HZ:I = 0x20

.field public static final VIDEO_INTERLACED:I = 0x0

.field public static final VIDEO_NTSC:I = 0x0

.field public static final VIDEO_PAL:I = 0x1

.field public static final VIDEO_PROGRESSIVE:I = 0x1

.field public static final VIDEO_SVGA800x600:I = 0xb

.field public static final VIDEO_SYSTEM_NUM:I = 0x21

.field public static final VO_HDR_CTRL_AUTO:I = 0x0

.field public static final VO_HDR_CTRL_CURRENT:I = 0xf0

.field public static final VO_HDR_CTRL_DV_LOW_LATENCY_10b_RGB444:I = 0x9

.field public static final VO_HDR_CTRL_DV_LOW_LATENCY_10b_YUV444:I = 0x8

.field public static final VO_HDR_CTRL_DV_LOW_LATENCY_12b_RGB444:I = 0xb

.field public static final VO_HDR_CTRL_DV_LOW_LATENCY_12b_YUV422:I = 0x7

.field public static final VO_HDR_CTRL_DV_LOW_LATENCY_12b_YUV444:I = 0xa

.field public static final VO_HDR_CTRL_DV_ON:I = 0x1

.field public static final VO_HDR_CTRL_DV_ON_INPUT:I = 0xc

.field public static final VO_HDR_CTRL_DV_ON_LOW_LATENCY_12b422_INPUT:I = 0xd

.field public static final VO_HDR_CTRL_FACTORY:I = 0xf1

.field public static final VO_HDR_CTRL_FUTURE:I = 0x5

.field public static final VO_HDR_CTRL_HDR_CTRL_INPUT_BT2020:I = 0xe

.field public static final VO_HDR_CTRL_HDR_GAMMA:I = 0x3

.field public static final VO_HDR_CTRL_INPUT:I = 0x6

.field public static final VO_HDR_CTRL_NONE:I = 0x0

.field public static final VO_HDR_CTRL_PQHDR:I = 0x4

.field public static final VO_HDR_CTRL_SDR:I = 0x2


# instance fields
.field public intIsWideScreen:I

.field public intVideoStandard:I

.field public intVideoSystem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/realtek/hardware/RtkTVSystem$1;

    invoke-direct {v0}, Lcom/realtek/hardware/RtkTVSystem$1;-><init>()V

    sput-object v0, Lcom/realtek/hardware/RtkTVSystem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIsWideScreen()I
    .locals 1

    iget v0, p0, Lcom/realtek/hardware/RtkTVSystem;->intIsWideScreen:I

    return v0
.end method

.method public final synthetic getStability()I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/os/Parcelable$-CC;->$default$getStability(Landroid/os/Parcelable;)I

    move-result v0

    return v0
.end method

.method public getVideoStandard()I
    .locals 1

    iget v0, p0, Lcom/realtek/hardware/RtkTVSystem;->intVideoStandard:I

    return v0
.end method

.method public getVideoSystem()I
    .locals 1

    iget v0, p0, Lcom/realtek/hardware/RtkTVSystem;->intVideoSystem:I

    return v0
.end method

.method public print(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/realtek/hardware/RtkTVSystem;->intVideoSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/realtek/hardware/RtkTVSystem;->intVideoStandard:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/realtek/hardware/RtkTVSystem;->intIsWideScreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "print: intVideoSystem=%d, intVideoStandard=%d, intIsWildScreen=%d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIsWideScreen(I)V
    .locals 0

    iput p1, p0, Lcom/realtek/hardware/RtkTVSystem;->intIsWideScreen:I

    return-void
.end method

.method public setVideoStandard(I)V
    .locals 0

    iput p1, p0, Lcom/realtek/hardware/RtkTVSystem;->intVideoStandard:I

    return-void
.end method

.method public setVideoSystem(I)V
    .locals 0

    iput p1, p0, Lcom/realtek/hardware/RtkTVSystem;->intVideoSystem:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/realtek/hardware/RtkTVSystem;->intVideoSystem:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/realtek/hardware/RtkTVSystem;->intVideoStandard:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/realtek/hardware/RtkTVSystem;->intIsWideScreen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
