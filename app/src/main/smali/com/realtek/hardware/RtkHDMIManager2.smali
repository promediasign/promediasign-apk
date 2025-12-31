.class public Lcom/realtek/hardware/RtkHDMIManager2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;,
        Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;,
        Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;,
        Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;,
        Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;,
        Lcom/realtek/hardware/RtkHDMIManager2$EventListener;
    }
.end annotation


# static fields
.field public static final COLOR_POLICY_AUTO:I = 0x1

.field public static final COLOR_POLICY_DEEP_AUTO:I = 0x2

.field public static final ColorNone:I = 0xff

.field public static final ColorRGB444:I = 0x0

.field public static final ColorYUV420:I = 0x3

.field public static final ColorYUV422:I = 0x1

.field public static final ColorYUV444:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEEP_COLOR_GOOD:I = 0x1

.field private static final DEEP_COLOR_MUST:I = 0x2

.field private static final DEEP_COLOR_NO:I = 0x0

.field private static final DEPTH_10BIT_MASK:I = 0x4

.field private static final DEPTH_12BIT_MASK:I = 0x8

.field private static final DEPTH_8BIT_MASK:I = 0x2

.field private static final DEPTH_NONE_MASK:I = 0xf

.field public static final DIFF_SOURCE_OFF_VALUE:I = 0x0

.field public static final DIFF_SOURCE_ON_VALUE:I = 0x1

.field public static final DUAL_DISPLAY_MODE_FORCE_SAME:I = 0x0

.field public static final DUAL_DISPLAY_MODE_RESTORE:I = 0x1

.field public static final DVI_OUTPUT_MODE:I = 0x1

.field public static final Depth10Bit:I = 0xa

.field public static final Depth12Bit:I = 0xc

.field public static final Depth8Bit:I = 0x8

.field public static final DepthAuto:I = 0x8

.field public static final DepthNone:I = 0xff

.field public static final EVENT_PLUG_IN:I = 0x1

.field public static final EVENT_PLUG_OUT:I = 0x0

.field private static final EXTRA_FORCE_OUTPUT_FORMAT:I = 0x2

.field private static final EXTRA_IGNORE_CURRENT:I = 0x4

.field private static final EXTRA_PLAYER_DV_HDR:I = 0x100

.field private static final EXTRA_RESET_COLOR_MODE:I = 0x10

.field private static final EXTRA_RESET_TV_SYSTEM:I = 0x20

.field private static final EXTRA_RESTORE_FROM_VD_CHANGED:I = 0x2000

.field private static final EXTRA_SAVE_TO_FACTORY:I = 0x1

.field private static final EXTRA_SET_UNDER_NO_HDMI:I = 0x200

.field private static final EXTRA_TRY_TO_USE_CURRENT_COLOR:I = 0x40

.field private static final EXTRA_USE_NOW_COLOR_IF_SDR:I = 0x8

.field private static final FPS_FS_NOT_DEFINE:I = -0x1

.field private static final GET_MODE_CURRENT:I = 0x1

.field private static final GET_MODE_FACTORY:I = 0x2

.field public static final HDCP_14:I = 0xe

.field public static final HDCP_22:I = 0x16

.field public static final HDCP_NONE:I = 0x0

.field public static final HDMI_OUTPUT_MODE:I = 0x2

.field private static final Mode_3D_FP:I = 0x1

.field private static final Mode_3D_Off:I = 0x0

.field private static final Mode_3D_SS:I = 0x2

.field private static final Mode_3D_TB:I = 0x3

.field public static final NO_OUTPUT_MODE:I = 0x0

.field private static final PROP_AUTO_TVSYSTEM_POLICY_IDX:I = 0x2

.field private static final PROP_DISPLAY_STATE_IDX:I = 0x3

.field private static final PROP_HDR_INPUT_IDX:I = 0x4

.field private static final PROP_IGNORE_EDID_IDX:I = 0x0

.field private static final PROP_IGNORE_HOTPLUG_IDX:I = 0x1

.field private static final SUPPORT_3D_MASK:I = 0x1

.field private static final SYNC_SETTING:Z = false

.field private static final TAG:Ljava/lang/String; = "RtkHDMIManager2"

.field private static final TV_SYS_COLOR_USE_DEFAULT:I = 0xab

.field private static final VD_DBG:Z

.field private static mEDIDSupportList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;",
            ">;"
        }
    .end annotation
.end field

.field private static sColorModes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDeepColorHDRs:[I

.field private static sInstance:Lcom/realtek/hardware/RtkHDMIManager2;

.field private static final sLock:Ljava/lang/Object;

.field private static sTVSystemInfos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoColorSetIgnoreEDID:Lcom/realtek/hardware/ColorSet;

.field private mAutoDeepColorSetIgnoreEDID:Lcom/realtek/hardware/ColorSet;

.field private mContext:Landroid/content/Context;

.field private mHDRSupportList:[I

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/realtek/hardware/RtkHDMIManager2$EventListener;

.field private sDoviHDRCheckList:[Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->sLock:Ljava/lang/Object;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x5

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sput-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sDeepColorHDRs:[I

    const-string v3, "rtk-display_ctrl_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sput-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sput-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/16 v8, 0x2d0

    const/16 v9, 0x1e0

    const/4 v10, 0x0

    const/16 v11, 0x3c

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x15

    const/16 v9, 0x240

    const/16 v11, 0x32

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v9, 0x1e0

    const/4 v10, 0x1

    const/16 v11, 0x3c

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x1

    const/4 v5, 0x4

    const/16 v6, 0x11

    const/16 v9, 0x240

    const/16 v11, 0x32

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v5, 0x5

    const/16 v6, 0x13

    const/16 v8, 0x500

    const/16 v9, 0x2d0

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x3

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/16 v11, 0x3c

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x4

    const/4 v5, 0x7

    const/16 v6, 0x14

    const/16 v8, 0x780

    const/16 v9, 0x438

    const/4 v10, 0x0

    const/16 v11, 0x32

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x5

    const/16 v5, 0x8

    const/4 v6, 0x5

    const/16 v11, 0x3c

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x4

    const/16 v5, 0x9

    const/16 v6, 0x1f

    const/4 v10, 0x1

    const/16 v11, 0x32

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x5

    const/16 v5, 0xa

    const/16 v6, 0x10

    const/16 v11, 0x3c

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x7

    const/16 v5, 0xb

    const/16 v6, 0x5d

    const/16 v8, 0xf00

    const/16 v9, 0x870

    const/16 v11, 0x18

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x8

    const/16 v5, 0xc

    const/16 v6, 0x5e

    const/16 v11, 0x19

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x9

    const/16 v5, 0xd

    const/16 v6, 0x5f

    const/16 v11, 0x1e

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0xa

    const/16 v5, 0xe

    const/16 v6, 0x62

    const/16 v8, 0x1000

    const/16 v11, 0x18

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v12, 0x6

    const/16 v5, 0xf

    const/16 v6, 0x20

    const/16 v8, 0x780

    const/16 v9, 0x438

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0xc

    const/16 v5, 0x10

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/16 v8, 0x500

    const/16 v9, 0x2d0

    const/16 v11, 0x3c

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0xd

    const/16 v5, 0x11

    const/4 v6, 0x5

    const/16 v8, 0x780

    const/16 v9, 0x438

    const/4 v10, 0x0

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0xe

    const/16 v5, 0x12

    const/16 v6, 0x20

    const/4 v10, 0x1

    const/16 v11, 0x18

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0xd

    const/16 v5, 0x13

    const/16 v6, 0x10

    const/16 v11, 0x3c

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0xf

    const/16 v5, 0x14

    const/16 v6, 0x5d

    const/16 v8, 0xf00

    const/16 v9, 0x870

    const/16 v11, 0x18

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x10

    const/16 v5, 0x15

    const/16 v6, 0x5f

    const/16 v11, 0x1e

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x11

    const/16 v5, 0x16

    const/16 v6, 0x61

    const/4 v7, 0x0

    const/16 v11, 0x3c

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x13

    const/16 v5, 0x17

    const/16 v6, 0x60

    const/16 v11, 0x32

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x14

    const/16 v5, 0x18

    const/16 v6, 0x65

    const/16 v8, 0x1000

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x15

    const/16 v5, 0x19

    const/16 v6, 0x66

    const/16 v11, 0x3c

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x16

    const/16 v5, 0x1a

    const/16 v6, 0x63

    const/16 v11, 0x19

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x17

    const/16 v5, 0x1b

    const/16 v6, 0x64

    const/16 v11, 0x1e

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x1a

    const/16 v5, 0x1c

    const/16 v6, 0x61

    const/4 v7, 0x1

    const/16 v8, 0xf00

    const/16 v11, 0x3c

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x1b

    const/16 v5, 0x1d

    const/16 v6, 0x21

    const/4 v7, 0x0

    const/16 v8, 0x780

    const/16 v9, 0x438

    const/16 v11, 0x19

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v14, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/16 v12, 0x12

    const/16 v5, 0x1e

    const/16 v6, 0x22

    const/16 v11, 0x1e

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v3, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v4, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v5, Lcom/realtek/hardware/ColorSet;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-direct {v5, v6, v7}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    const/4 v8, 0x1

    invoke-direct {v4, v8, v5}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v4, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v5, Lcom/realtek/hardware/ColorSet;

    const/16 v9, 0xa

    invoke-direct {v5, v6, v9}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    const/4 v10, 0x2

    invoke-direct {v4, v10, v5}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v4, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v5, Lcom/realtek/hardware/ColorSet;

    const/16 v11, 0xc

    invoke-direct {v5, v6, v11}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-direct {v4, v0, v5}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v4, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v5, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v5, v10, v7}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-direct {v4, v1, v5}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v3, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v4, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v4, v10, v9}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-direct {v3, v2, v4}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v2, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v3, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v3, v10, v11}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    const/4 v4, 0x6

    invoke-direct {v2, v4, v3}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v2, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v3, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v3, v8, v7}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v2, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v3, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v3, v8, v9}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-direct {v2, v7, v3}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v2, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v3, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v3, v8, v11}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    const/16 v4, 0x9

    invoke-direct {v2, v4, v3}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v2, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v3, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v3, v0, v7}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-direct {v2, v9, v3}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v2, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v3, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v3, v0, v9}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    const/16 v4, 0xb

    invoke-direct {v2, v4, v3}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    new-instance v2, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    new-instance v3, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v3, v0, v11}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-direct {v2, v11, v3}, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;-><init>(ILcom/realtek/hardware/ColorSet;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    const/4 v0, 0x0

    sput-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->sInstance:Lcom/realtek/hardware/RtkHDMIManager2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mListener:Lcom/realtek/hardware/RtkHDMIManager2$EventListener;

    new-instance v1, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;III)V

    new-instance v2, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-direct {v2, p0, v5, v6, v7}, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;III)V

    new-instance v8, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;

    const/16 v9, 0x9

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10, v7}, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;III)V

    new-instance v9, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;

    invoke-direct {v9, p0, v7, v6, v4}, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;III)V

    new-instance v7, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;

    const/16 v11, 0xb

    invoke-direct {v7, p0, v11, v10, v4}, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;III)V

    const/4 v11, 0x5

    new-array v11, v11, [Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;

    aput-object v1, v11, v10

    aput-object v2, v11, v3

    aput-object v8, v11, v6

    const/4 v1, 0x3

    aput-object v9, v11, v1

    const/4 v2, 0x4

    aput-object v7, v11, v2

    iput-object v11, p0, Lcom/realtek/hardware/RtkHDMIManager2;->sDoviHDRCheckList:[Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;

    new-instance v2, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v2, v1, v4}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mAutoDeepColorSetIgnoreEDID:Lcom/realtek/hardware/ColorSet;

    new-instance v1, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v1, v10, v5}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    iput-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mAutoColorSetIgnoreEDID:Lcom/realtek/hardware/ColorSet;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mHDRSupportList:[I

    const-string v0, "RtkHDMIManager2"

    const-string v1, "RtkHDMIManager2()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->initHDMIInfo()V

    return-void
.end method

.method public static synthetic access$000(Lcom/realtek/hardware/RtkHDMIManager2;Lcom/realtek/hardware/OutputFormat;)Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->findTVSystemInfoViaOutputFormat(Lcom/realtek/hardware/OutputFormat;)Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/realtek/hardware/RtkHDMIManager2;)I
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_readEdidAutoMode()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lcom/realtek/hardware/RtkHDMIManager2;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/realtek/hardware/RtkHDMIManager2;->asyncChangeTVSystem(IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lcom/realtek/hardware/RtkHDMIManager2;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->asyncChangeTVSystemUnderNoHDMI(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lcom/realtek/hardware/RtkHDMIManager2;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->asyncChangeTVSystemIgnoreEDID(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lcom/realtek/hardware/RtkHDMIManager2;)I
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getEDIDSupportList()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lcom/realtek/hardware/RtkHDMIManager2;)Lcom/realtek/hardware/RtkHDMIManager2$EventListener;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mListener:Lcom/realtek/hardware/RtkHDMIManager2$EventListener;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/realtek/hardware/RtkHDMIManager2;)V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->clearEDIDSupportList()V

    return-void
.end method

.method public static synthetic access$200(Lcom/realtek/hardware/RtkHDMIManager2;)Z
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->isIgnoreEDID()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/realtek/hardware/RtkHDMIManager2;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getPropValue(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/realtek/hardware/RtkHDMIManager2;)I
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_readHDRAutoProperty()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/realtek/hardware/RtkHDMIManager2;)I
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_readColorModeEnum()I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/realtek/hardware/RtkHDMIManager2;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->getColorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/realtek/hardware/RtkHDMIManager2;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->getHDRString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic access$900(I)Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;
    .locals 0

    invoke-static {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getFormatSupport(I)Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    move-result-object p0

    return-object p0
.end method

.method private asyncChangeTVSystem(IZ)I
    .locals 8

    const-string v0, "Call native_setOutputFormat vic:"

    const-string v1, "Can not find HDMIFormatSupport of VIC:"

    const-string v2, "Can not find TVSystemInfo of "

    monitor-enter p0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/realtek/hardware/RtkHDMIManager2;->native_saveEdidAutoMode(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/realtek/hardware/RtkHDMIManager2;->native_saveEdidAutoMode(I)V

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->findTVSystemInfo(I)Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_2

    const-string p2, "RtkHDMIManager2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v4

    :cond_2
    iget p1, v3, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIManager2;->getFormatSupport(I)Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "RtkHDMIManager2"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v3, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v4

    :cond_3
    iget v1, v3, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    iget v2, v3, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFreqShift:I

    if-eqz p2, :cond_4

    const/16 p1, 0x45

    const/16 v7, 0x45

    goto :goto_1

    :cond_4
    const/16 p1, 0x44

    const/16 v7, 0x44

    :goto_1
    const-string p1, "RtkHDMIManager2"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xf0

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setOutputFormat(IIIIIII)I

    move-result p1

    monitor-exit p0

    return p1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private asyncChangeTVSystemIgnoreEDID(I)I
    .locals 10

    const/4 v0, 0x1

    const-string v1, "RtkHDMIManager2"

    if-nez p1, :cond_0

    const-string p1, "asyncChangeTVSystemIgnoreEDID does not support auto mode"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->findTVSystemInfo(I)Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "asyncChangeTVSystemIgnoreEDID no tv system info for : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_readColorModeEnum()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mAutoDeepColorSetIgnoreEDID:Lcom/realtek/hardware/ColorSet;

    goto :goto_1

    :cond_2
    const/16 v3, 0xd

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mAutoColorSetIgnoreEDID:Lcom/realtek/hardware/ColorSet;

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->getColorEnumInfo(I)Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;->mColorSet:Lcom/realtek/hardware/ColorSet;

    :goto_1
    if-nez p1, :cond_4

    const-string p1, "asyncChangeTVSystemIgnoreEDID color set is null"

    goto :goto_0

    :cond_4
    iget v3, v2, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    iget v4, v2, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFreqShift:I

    iget v5, p1, Lcom/realtek/hardware/ColorSet;->mColorMode:I

    iget v6, p1, Lcom/realtek/hardware/ColorSet;->mColorDepth:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "asyncChangeTVSystemIgnoreEDID call native_setOutputFormat vic:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x6

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setOutputFormat(IIIIIII)I

    move-result p1

    return p1
.end method

.method private asyncChangeTVSystemUnderNoHDMI(I)I
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "asyncChangeTVSystemUnderNoHDMI tvSystem:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "asyncChangeTVSystemUnderNoHDMI : bad tv system"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_0
    if-ne p1, v0, :cond_3

    const/4 p1, 0x6

    const/4 v2, 0x6

    goto :goto_1

    :cond_3
    const/16 p1, 0x15

    const/16 v2, 0x15

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x200

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setOutputFormat(IIIIIII)I

    :goto_2
    return v0
.end method

.method private clearEDIDSupportList()V
    .locals 2

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpTVSystemInfoMap()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SettingVal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mSettingValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " VIC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " freqShift:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFreqShift:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtkHDMIManager2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private envSupportsDv()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_envSupportsDv()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private findColorModeEnum(II)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    iget-object v2, v1, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;->mColorSet:Lcom/realtek/hardware/ColorSet;

    iget v3, v2, Lcom/realtek/hardware/ColorSet;->mColorMode:I

    if-ne v3, p1, :cond_0

    iget v2, v2, Lcom/realtek/hardware/ColorSet;->mColorDepth:I

    if-ne v2, p2, :cond_0

    iget p1, v1, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;->mSettingValue:I

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findTVSystemInfo(I)Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;
    .locals 3

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getAutoTVSystemInfo()Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mSettingValue:I

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private findTVSystemInfoViaOutputFormat(Lcom/realtek/hardware/OutputFormat;)Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    iget v3, p1, Lcom/realtek/hardware/OutputFormat;->mVIC:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFreqShift:I

    iget v3, p1, Lcom/realtek/hardware/OutputFormat;->mFreqShift:I

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private from_native_addEDIDSupportListItem(IIIIIIII)V
    .locals 10

    new-instance v9, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;-><init>(IIIIIIII)V

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAutoTVSystemInfo()Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;
    .locals 5

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    :goto_0
    sget-object v2, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->ranking()I

    move-result v3

    invoke-virtual {v2}, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->ranking()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getColorEnumInfo(I)Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;->mSettingValue:I

    if-ne v1, p1, :cond_0

    sget-object p1, Lcom/realtek/hardware/RtkHDMIManager2;->sColorModes:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getColorString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "YUV420"

    return-object p1

    :cond_1
    const-string p1, "YUV444"

    return-object p1

    :cond_2
    const-string p1, "YUV422"

    return-object p1

    :cond_3
    const-string p1, "RGB444"

    return-object p1
.end method

.method private getCurrentHDRMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentOutputFormat()Lcom/realtek/hardware/OutputFormat;

    move-result-object v0

    iget v0, v0, Lcom/realtek/hardware/OutputFormat;->mHDR:I

    return v0
.end method

.method private getEDIDSupportList()I
    .locals 5

    const-string v0, "getEDIDSupportList size "

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "RtkHDMIManager2"

    const-string v3, "Calling getEDIDSupportList, clear existing list first"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getEDIDSupportList()I

    move-result v2

    const-string v3, "RtkHDMIManager2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    invoke-static {v3}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->access$1400(Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v1

    return v2

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFactoryOutputFormat()Lcom/realtek/hardware/OutputFormat;
    .locals 2

    new-instance v0, Lcom/realtek/hardware/OutputFormat;

    invoke-direct {v0}, Lcom/realtek/hardware/OutputFormat;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getOutputFormat(Lcom/realtek/hardware/OutputFormat;I)I

    return-object v0
.end method

.method private static getFormatSupport(I)Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;
    .locals 3

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    iget v2, v2, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mVIC:I

    if-ne p0, v2, :cond_0

    sget-object p0, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getHDRString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, "VO_HDR_CTRL_DV_ON_LOW_LATENCY_12b422_INPUT"

    return-object p1

    :pswitch_1
    const-string p1, "VO_HDR_CTRL_DV_ON_INPUT"

    return-object p1

    :pswitch_2
    const-string p1, "VO_HDR_CTRL_DV_LOW_LATENCY_12b_RGB444"

    return-object p1

    :pswitch_3
    const-string p1, "VO_HDR_CTRL_DV_LOW_LATENCY_12b_YUV444"

    return-object p1

    :pswitch_4
    const-string p1, "VO_HDR_CTRL_DV_LOW_LATENCY_10b_RGB444"

    return-object p1

    :pswitch_5
    const-string p1, "VO_HDR_CTRL_DV_LOW_LATENCY_10b_YUV444"

    return-object p1

    :pswitch_6
    const-string p1, "VO_HDR_CTRL_DV_LOW_LATENCY_12b_YUV422"

    return-object p1

    :pswitch_7
    const-string p1, "INPUT"

    return-object p1

    :pswitch_8
    const-string p1, "FUTURE"

    return-object p1

    :pswitch_9
    const-string p1, "PQHDR"

    return-object p1

    :pswitch_a
    const-string p1, "GAMMA"

    return-object p1

    :pswitch_b
    const-string p1, "SDR"

    return-object p1

    :pswitch_c
    const-string p1, "DV"

    return-object p1

    :pswitch_d
    const-string p1, "AUTO"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getItemValueFromSettings(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getItemValueFromSettings itemName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " itemValue: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getRtkHDMIManager(Landroid/content/Context;)Lcom/realtek/hardware/RtkHDMIManager2;
    .locals 1

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->sInstance:Lcom/realtek/hardware/RtkHDMIManager2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/realtek/hardware/RtkHDMIManager2;

    invoke-direct {v0, p0}, Lcom/realtek/hardware/RtkHDMIManager2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->sInstance:Lcom/realtek/hardware/RtkHDMIManager2;

    :cond_0
    sget-object p0, Lcom/realtek/hardware/RtkHDMIManager2;->sInstance:Lcom/realtek/hardware/RtkHDMIManager2;

    return-object p0
.end method

.method private getSetupIDViaVICNoFreqShift(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFreqShift:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    if-ne v2, p1, :cond_0

    iget p1, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mSettingValue:I

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private hdrColorSetExtraCheck(ILcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;)Z
    .locals 6

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->needDeepColor()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->isUnderDoviMode()Z

    move-result v4

    invoke-direct {p0, p2, v0}, Lcom/realtek/hardware/RtkHDMIManager2;->passColorCheck(Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v0

    :cond_1
    if-eqz v4, :cond_4

    if-eq p1, v2, :cond_3

    const/16 v4, 0xd

    const/16 v5, 0xc

    if-eq p1, v4, :cond_2

    const/16 v4, 0xa

    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "hdrColorSetExtraCheck unhandled hdr:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->getHDRString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RtkHDMIManager2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2, v1, v5}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->isColorModeDepthSupported(II)Z

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2, v3, v5}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->isColorModeDepthSupported(II)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2, v1, v4}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->isColorModeDepthSupported(II)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2, v3, v4}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->isColorModeDepthSupported(II)Z

    move-result v0

    goto :goto_1

    :cond_2
    :pswitch_4
    invoke-virtual {p2, v2, v5}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->isColorModeDepthSupported(II)Z

    move-result v0

    goto :goto_1

    :cond_3
    const/16 p1, 0x8

    invoke-virtual {p2, v1, p1}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->isColorModeDepthSupported(II)Z

    move-result v0

    :cond_4
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initHDMIInfo()V
    .locals 2

    const-string v0, "RtkHDMIManager2"

    const-string v1, "Call initHDMIInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_init()V

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->checkIfHDMIPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getEDIDSupportList()I

    :cond_0
    return-void
.end method

.method private isDoviHDRColorSupport(III)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->isInDoviHDRCheckList(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2;->sDoviHDRCheckList:[Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;->mHDR:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v1, p2, p3}, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;->isSupport(II)Z

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private isIgnoreEDID()Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getPropValue(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[HDMIPROP] isIgnoreEDID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RtkHDMIManager2"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isInDoviHDRCheckList(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIManager2;->sDoviHDRCheckList:[Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget v2, v2, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;->mHDR:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isUnderDoviMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentHDRMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_isUnderDoviMode(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native native_checkHDRModeSupported(I)I
.end method

.method private native native_checkIfHDMIPlugged()Z
.end method

.method private native native_clearOneStepInfo()V
.end method

.method private native native_envSupportsDv()I
.end method

.method private native native_getColorSet(IIILcom/realtek/hardware/ColorSet;)I
.end method

.method private native native_getConfiguredHDCPVersion()I
.end method

.method private native native_getDiffSourceValue()I
.end method

.method private native native_getEDIDRawData()[B
.end method

.method private native native_getEDIDSupportList()I
.end method

.method private native native_getForceOffVal()I
.end method

.method private native native_getHDCPVersion()I
.end method

.method private native native_getHDMIEDIDReady()Z
.end method

.method private native native_getHDRSupportList()[I
.end method

.method private native native_getOutputFormat(Lcom/realtek/hardware/OutputFormat;I)I
.end method

.method private native native_getPropValue(I)I
.end method

.method private native native_getSinkCapability()V
.end method

.method private native native_getTVCapEotf()I
.end method

.method private native native_init()V
.end method

.method private native native_isUnderDoviMode(I)I
.end method

.method private native native_overrideConfiguredHDCPVersion(I)I
.end method

.method private native native_readColorModeEnum()I
.end method

.method private native native_readEdidAutoMode()I
.end method

.method private native native_readHDRAutoProperty()I
.end method

.method private native native_release()V
.end method

.method private native native_runtimeSetDpHDMISetting(I)I
.end method

.method private native native_saveColorModeEnum(I)V
.end method

.method private native native_saveEdidAutoMode(I)V
.end method

.method private native native_saveOutputFormat(IIIIII)V
.end method

.method private native native_setDVHDRModeForContent()Z
.end method

.method private native native_setDiffSourceValue(I)I
.end method

.method private native native_setHDCPVersion(I)V
.end method

.method private native native_setHDMIEnable(I)V
.end method

.method private native native_setHDMIFormat3D(IF)I
.end method

.method private native native_setHDREotfMode(I)V
.end method

.method private native native_setOutputFormat(IIIIIII)I
.end method

.method private native native_setPropValue(II)I
.end method

.method private native native_setVideoFps(II)I
.end method

.method private needDeepColor()I
    .locals 5

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentHDRMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sDeepColorHDRs:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->isUnderDoviMode()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private onHandleHDMIEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HDMI-HIDL onHandleHDMIEvent event:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/realtek/hardware/RtkHDMIManager2$3;

    invoke-direct {v1, p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2$3;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/realtek/hardware/RtkHDMIManager2$4;

    invoke-direct {v1, p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2$4;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;I)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private passColorCheck(Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;Z)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->isSupportDeepColor()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setHDMIVideoColorModeIgnoreEDID(I)I
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mAutoDeepColorSetIgnoreEDID:Lcom/realtek/hardware/ColorSet;

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mAutoColorSetIgnoreEDID:Lcom/realtek/hardware/ColorSet;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->getColorEnumInfo(I)Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;->mColorSet:Lcom/realtek/hardware/ColorSet;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setHDMIVideoColorModeIgnoreEDID mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtkHDMIManager2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setHDMIVideoColorModeIgnoreEDID "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/realtek/hardware/ColorSet;->mColorMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/realtek/hardware/ColorSet;->mColorDepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentOutputFormat()Lcom/realtek/hardware/OutputFormat;

    move-result-object v1

    iget v2, v0, Lcom/realtek/hardware/ColorSet;->mColorMode:I

    iput v2, v1, Lcom/realtek/hardware/OutputFormat;->mColor:I

    iget v0, v0, Lcom/realtek/hardware/ColorSet;->mColorDepth:I

    iput v0, v1, Lcom/realtek/hardware/OutputFormat;->mColorDepth:I

    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lcom/realtek/hardware/RtkHDMIManager2;->setOutputFormat(Lcom/realtek/hardware/OutputFormat;I)V

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_saveColorModeEnum(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private setItemValueToSettings(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setItemValue to Settings itemName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " itemValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setOutputFormat(Lcom/realtek/hardware/OutputFormat;I)V
    .locals 8

    iget v1, p1, Lcom/realtek/hardware/OutputFormat;->mVIC:I

    iget v2, p1, Lcom/realtek/hardware/OutputFormat;->mFreqShift:I

    iget v3, p1, Lcom/realtek/hardware/OutputFormat;->mColor:I

    iget v4, p1, Lcom/realtek/hardware/OutputFormat;->mColorDepth:I

    iget v5, p1, Lcom/realtek/hardware/OutputFormat;->m3DFormat:I

    iget v6, p1, Lcom/realtek/hardware/OutputFormat;->mHDR:I

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setOutputFormat(IIIIIII)I

    return-void
.end method


# virtual methods
.method public checkHDRModeSupported(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->isIgnoreEDID()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkHDRModeSupported "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " unsupport under ignore EDID mode"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RtkHDMIManager2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_checkHDRModeSupported(I)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public checkIfHDMIPlugged()Z
    .locals 3

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_checkIfHDMIPlugged()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkIfHDMIPlugged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtkHDMIManager2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public checkTVSystem(II)I
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkTVSystem tvSystem:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->isIgnoreEDID()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "always report true if isIgnoreEDID"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->needDeepColor()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, -0x1

    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    const-string p1, "checkTVSystem current HDR mode needs deep color, return -1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string p1, "checkTVSystem TV_SYS_COLORSPACE_AUTO_DETECT always supports"

    goto :goto_0

    :cond_3
    const/16 v4, 0xd

    if-ne p2, v4, :cond_4

    const-string p1, "checkTVSystem TV_SYS_DEEPCOLOR_AUTO_DETECT always supports"

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->isUnderDoviMode()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string p1, "checkTVSystem found current mode is DOVI, reject"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentHDRMode()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_6

    const-string p1, "checkTVSystem hdr : VO_HDR_CTRL_DV_ON_INPUT, reject"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    invoke-direct {p0, p2}, Lcom/realtek/hardware/RtkHDMIManager2;->getColorEnumInfo(I)Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p1, "[checkTVSystem] can not get color mode enum"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    iget-object p2, p2, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;->mColorSet:Lcom/realtek/hardware/ColorSet;

    iget v4, p2, Lcom/realtek/hardware/ColorSet;->mColorMode:I

    iget p2, p2, Lcom/realtek/hardware/ColorSet;->mColorDepth:I

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->findTVSystemInfo(I)Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    move-result-object v5

    if-nez v5, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[checkTVSystem] Can not find TVSystemInfo of "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    iget p1, v5, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIManager2;->getFormatSupport(I)Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    move-result-object p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[checkTVSystem] Can not find HDMIFormatSupport of VIC:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v5, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9
    invoke-virtual {p1, v4, p2}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->isColorModeDepthSupported(II)Z

    move-result p1

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    if-gt p2, v0, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "current HDR needs Deep color, selected color depth: ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_a
    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v2, -0x1

    :goto_2
    return v2
.end method

.method public clearOneStepInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_clearOneStepInfo()V

    return-void
.end method

.method public getConfiguredHDCPVersion()I
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getConfiguredHDCPVersion()I

    move-result v0

    return v0
.end method

.method public getCurrentDisplayFormat()Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;
    .locals 2

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentOutputFormat()Lcom/realtek/hardware/OutputFormat;

    move-result-object v0

    new-instance v1, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;

    invoke-direct {v1, p0, v0}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;Lcom/realtek/hardware/OutputFormat;)V

    return-object v1
.end method

.method public getCurrentOutputFormat()Lcom/realtek/hardware/OutputFormat;
    .locals 2

    new-instance v0, Lcom/realtek/hardware/OutputFormat;

    invoke-direct {v0}, Lcom/realtek/hardware/OutputFormat;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getOutputFormat(Lcom/realtek/hardware/OutputFormat;I)I

    return-object v0
.end method

.method public getDiffSourceValue()I
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getDiffSourceValue()I

    move-result v0

    return v0
.end method

.method public getDisplayStatePropValue()I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getPropValue(I)I

    move-result v0

    return v0
.end method

.method public getEDIDRawData()[B
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getEDIDRawData()[B

    move-result-object v0

    return-object v0
.end method

.method public getFactoryDisplayFormat()Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;
    .locals 2

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getFactoryOutputFormat()Lcom/realtek/hardware/OutputFormat;

    move-result-object v0

    new-instance v1, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;

    invoke-direct {v1, p0, v0}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;Lcom/realtek/hardware/OutputFormat;)V

    return-object v1
.end method

.method public getForceOffVal()I
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getForceOffVal()I

    move-result v0

    return v0
.end method

.method public getHDCPVersion()I
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getHDCPVersion()I

    move-result v0

    return v0
.end method

.method public getHDMIEDIDReady()Z
    .locals 3

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getHDMIEDIDReady()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getHDMIEDIDReady "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtkHDMIManager2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getHDRSupportList()[I
    .locals 4

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getHDRSupportList()[I

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mHDRSupportList:[I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mHDRSupportList:[I

    aget v3, v0, v1

    aput v3, v2, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Support HDR mode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mHDRSupportList:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RtkHDMIManager2"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mHDRSupportList:[I

    return-object v0
.end method

.method public getIgnoreEdidValue()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getPropValue(I)I

    move-result v0

    return v0
.end method

.method public getIgnoreHotplugValue()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getPropValue(I)I

    move-result v0

    return v0
.end method

.method public getSinkCapability()V
    .locals 2

    const-string v0, "RtkHDMIManager2"

    const-string v1, "call getSinkCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getSinkCapability()V

    return-void
.end method

.method public getTVSystem()I
    .locals 10

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentOutputFormat()Lcom/realtek/hardware/OutputFormat;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v5, v3, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    iget v6, v0, Lcom/realtek/hardware/OutputFormat;->mVIC:I

    if-ne v5, v6, :cond_0

    iget v5, v3, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFreqShift:I

    iget v6, v0, Lcom/realtek/hardware/OutputFormat;->mFreqShift:I

    if-ne v5, v6, :cond_0

    iget v2, v3, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVideoSystem:I

    iget v3, v3, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVideoStandard:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getTVSystem videoSystem:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " videoStandard:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RtkHDMIManager2"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_2
    sget-object v7, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    sget-object v7, Lcom/realtek/hardware/RtkHDMIManager2;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    iget v9, v7, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVideoSystem:I

    if-ne v9, v2, :cond_3

    iget-boolean v9, v7, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mProgress:Z

    if-ne v9, v8, :cond_3

    iget v8, v7, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFreqShift:I

    iget v9, v0, Lcom/realtek/hardware/OutputFormat;->mFreqShift:I

    if-ne v8, v9, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTVSystem return :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v7, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mSettingValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v7, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mSettingValue:I

    return v0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return v4
.end method

.method public getTVSystemForRestored()I
    .locals 2

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_readEdidAutoMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getTVSystem()I

    move-result v0

    return v0
.end method

.method public getVideoFormat()[I
    .locals 9

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->checkIfHDMIPlugged()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x24

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const-string v0, "RtkHDMIManager2"

    const-string v5, "No HDMI connected, return NTSC and PAL"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    aput v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    aput v3, v0, v3

    aput v3, v0, v1

    return-object v0

    :cond_1
    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-array v5, v2, [I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_2

    aput v4, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    aput v3, v5, v4

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentHDRMode()I

    move-result v2

    const/4 v6, 0x0

    :goto_2
    sget-object v7, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    sget-object v7, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    iget v8, v7, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mVIC:I

    invoke-direct {p0, v8}, Lcom/realtek/hardware/RtkHDMIManager2;->getSetupIDViaVICNoFreqShift(I)I

    move-result v8

    if-lez v8, :cond_3

    invoke-direct {p0, v2, v7}, Lcom/realtek/hardware/RtkHDMIManager2;->hdrColorSetExtraCheck(ILcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;)Z

    move-result v7

    if-eqz v7, :cond_3

    aput v3, v5, v8

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->isUnderDoviMode()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "RtkHDMIManager2"

    const-string v6, "Under DOVI mode, hide 1080i, NTSC, PAL, 4096.."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x7

    aput v4, v5, v2

    const/16 v2, 0x8

    aput v4, v5, v2

    const/16 v2, 0x11

    aput v4, v5, v2

    aput v4, v5, v3

    aput v4, v5, v1

    const/16 v1, 0x19

    aput v4, v5, v1

    const/16 v1, 0x18

    aput v4, v5, v1

    const/16 v1, 0x1b

    aput v4, v5, v1

    const/16 v1, 0x1a

    aput v4, v5, v1

    const/16 v1, 0xe

    aput v4, v5, v1

    :cond_5
    monitor-exit v0

    return-object v5

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFormat3D()I
    .locals 1

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentOutputFormat()Lcom/realtek/hardware/OutputFormat;

    move-result-object v0

    iget v0, v0, Lcom/realtek/hardware/OutputFormat;->m3DFormat:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTVSupport3D()Z
    .locals 4

    const-string v0, "Call isTVSupport3D"

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/realtek/hardware/RtkHDMIManager2;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    invoke-virtual {v3}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->isSupport3D()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isTVSupport3D success ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public overrideConfiguredHDCPVersion(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_overrideConfiguredHDCPVersion(I)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/realtek/hardware/RtkHDMIManager2;->sInstance:Lcom/realtek/hardware/RtkHDMIManager2;

    return-void
.end method

.method public restoreDisplayFormat(Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[VIDEOHDR] restoreDisplayFormat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->access$1300(Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;)Lcom/realtek/hardware/OutputFormat;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lcom/realtek/hardware/RtkHDMIManager2;->setOutputFormat(Lcom/realtek/hardware/OutputFormat;I)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setVideoFps(II)I

    return-void
.end method

.method public runtimeSetDpHDMISetting(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_runtimeSetDpHDMISetting(I)I

    move-result p1

    return p1
.end method

.method public runtimeSetTVSystem(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runtimeSetTVSystem "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/realtek/hardware/RtkHDMIManager2$1;

    invoke-direct {v0, p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2$1;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method

.method public setDVHDRModeForContent()Z
    .locals 2

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_envSupportsDv()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "RtkHDMIManager2"

    const-string v1, "setDVHDRModeForContent , env unsupport Dovi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setDVHDRModeForContent()Z

    move-result v0

    return v0
.end method

.method public setDiffSourceValue(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setDiffSourceValue(I)I

    move-result p1

    return p1
.end method

.method public setHDCPVersion(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setHDCPVersion(I)V

    return-void
.end method

.method public setHDMIEnable(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setHDMIEnable(I)V

    return-void
.end method

.method public setHDMIFormat3D(IF)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setHDMIFormat3D(IF)I

    move-result p1

    return p1
.end method

.method public setHDMIVideoColorMode(I)I
    .locals 7

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->isIgnoreEDID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->setHDMIVideoColorModeIgnoreEDID(I)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setHDMIVideoColorMode :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentOutputFormat()Lcom/realtek/hardware/OutputFormat;

    move-result-object v0

    iget v2, v0, Lcom/realtek/hardware/OutputFormat;->mVIC:I

    invoke-static {v2}, Lcom/realtek/hardware/RtkHDMIManager2;->getFormatSupport(I)Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "setHDMIVideoColorMode can not find HDMIFormatSupport of VIC:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget v0, v0, Lcom/realtek/hardware/OutputFormat;->mVIC:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    new-instance v2, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v2}, Lcom/realtek/hardware/ColorSet;-><init>()V

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    const/16 v5, 0xd

    if-ne p1, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->getColorEnumInfo(I)Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;->mColorSet:Lcom/realtek/hardware/ColorSet;

    goto :goto_2

    :cond_3
    :goto_1
    iget v5, v0, Lcom/realtek/hardware/OutputFormat;->mVIC:I

    iget v6, v0, Lcom/realtek/hardware/OutputFormat;->mHDR:I

    invoke-direct {p0, v5, v6, v4, v2}, Lcom/realtek/hardware/RtkHDMIManager2;->native_getColorSet(IIILcom/realtek/hardware/ColorSet;)I

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/realtek/hardware/ColorSet;->isValidate()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_saveColorModeEnum(I)V

    iget p1, v2, Lcom/realtek/hardware/ColorSet;->mColorMode:I

    iput p1, v0, Lcom/realtek/hardware/OutputFormat;->mColor:I

    iget p1, v2, Lcom/realtek/hardware/ColorSet;->mColorDepth:I

    iput p1, v0, Lcom/realtek/hardware/OutputFormat;->mColorDepth:I

    const/4 p1, 0x7

    invoke-direct {p0, v0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->setOutputFormat(Lcom/realtek/hardware/OutputFormat;I)V

    return v4

    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "setHDMIVideoColorMode can not find colorSet of VIC:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHDREotfMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setHDREotfMode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getCurrentOutputFormat()Lcom/realtek/hardware/OutputFormat;

    move-result-object v0

    iput p1, v0, Lcom/realtek/hardware/OutputFormat;->mHDR:I

    const/16 p1, 0xff

    iput p1, v0, Lcom/realtek/hardware/OutputFormat;->mColor:I

    iput p1, v0, Lcom/realtek/hardware/OutputFormat;->mColorDepth:I

    const/16 p1, 0xab

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_saveColorModeEnum(I)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_saveEdidAutoMode(I)V

    const/16 p1, 0x3d

    invoke-direct {p0, v0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->setOutputFormat(Lcom/realtek/hardware/OutputFormat;I)V

    return-void
.end method

.method public setIgnoreEDIDValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setPropValue(II)I

    return-void
.end method

.method public setIgnoreHotplugValue(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setPropValue(II)I

    return-void
.end method

.method public setListener(Lcom/realtek/hardware/RtkHDMIManager2$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIManager2;->mListener:Lcom/realtek/hardware/RtkHDMIManager2$EventListener;

    return-void
.end method

.method public setTVSystem(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTVSystem "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/realtek/hardware/RtkHDMIManager2$2;

    invoke-direct {v0, p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2$2;-><init>(Lcom/realtek/hardware/RtkHDMIManager2;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method

.method public setTvSystemByFps(D)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTvSystemByFps:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    double-to-int v0, p1

    mul-int/lit8 v1, v0, 0xa

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double p1, p1, v2

    double-to-int p1, p1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/realtek/hardware/RtkHDMIManager2;->native_setVideoFps(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public storeCurrentDisplayFormat()Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;
    .locals 3

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIManager2;->getFactoryDisplayFormat()Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VIDEOHDR] storeCurrentDisplayFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIDisplayFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtkHDMIManager2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
