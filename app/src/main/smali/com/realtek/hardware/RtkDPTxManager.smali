.class public Lcom/realtek/hardware/RtkDPTxManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/realtek/hardware/RtkDPTxManager$EventListener;,
        Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;,
        Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final EVENT_PLUG_IN:I = 0x1

.field public static final EVENT_PLUG_OUT:I = 0x0

.field public static final FLAGS_LOAD_ONE_STEP_FMT:I = 0x4

.field public static final FLAGS_NOT_NOTIFY_HDMI:I = 0x1

.field public static final FLAGS_USE_FMT_INTERFACE_TYEP:I = 0x2

.field private static final GET_MODE_CURRENT:I = 0x1

.field private static final GET_MODE_FACTORY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RtkDPTXManager"

.field private static sInstance:Lcom/realtek/hardware/RtkDPTxManager;

.field private static final sLock:Ljava/lang/Object;

.field private static sTVSystemInfos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDIDSupportList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/realtek/hardware/RtkDPTxManager$EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "rtk-display_ctrl_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x2d0

    const/16 v6, 0x1e0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x15

    const/16 v6, 0x240

    const/16 v8, 0x32

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v6, 0x1e0

    const/4 v7, 0x1

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x1

    const/4 v2, 0x4

    const/16 v3, 0x11

    const/16 v6, 0x240

    const/16 v8, 0x32

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x5

    const/16 v3, 0x13

    const/16 v5, 0x500

    const/16 v6, 0x2d0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x4

    const/4 v2, 0x7

    const/16 v3, 0x14

    const/16 v5, 0x780

    const/16 v6, 0x438

    const/4 v7, 0x0

    const/16 v8, 0x32

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x5

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x4

    const/16 v2, 0x9

    const/16 v3, 0x1f

    const/4 v7, 0x1

    const/16 v8, 0x32

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x5

    const/16 v2, 0xa

    const/16 v3, 0x10

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x7

    const/16 v2, 0xb

    const/16 v3, 0x5d

    const/16 v5, 0xf00

    const/16 v6, 0x870

    const/16 v8, 0x18

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x8

    const/16 v2, 0xc

    const/16 v3, 0x5e

    const/16 v8, 0x19

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x9

    const/16 v2, 0xd

    const/16 v3, 0x5f

    const/16 v8, 0x1e

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0xa

    const/16 v2, 0xe

    const/16 v3, 0x62

    const/16 v5, 0x1000

    const/16 v8, 0x18

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/4 v9, 0x6

    const/16 v2, 0xf

    const/16 v3, 0x20

    const/16 v5, 0x780

    const/16 v6, 0x438

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0xc

    const/16 v2, 0x10

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v5, 0x500

    const/16 v6, 0x2d0

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0xd

    const/16 v2, 0x11

    const/4 v3, 0x5

    const/16 v5, 0x780

    const/16 v6, 0x438

    const/4 v7, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0xe

    const/16 v2, 0x12

    const/16 v3, 0x20

    const/4 v7, 0x1

    const/16 v8, 0x18

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0xd

    const/16 v2, 0x13

    const/16 v3, 0x10

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0xf

    const/16 v2, 0x14

    const/16 v3, 0x5d

    const/16 v5, 0xf00

    const/16 v6, 0x870

    const/16 v8, 0x18

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x10

    const/16 v2, 0x15

    const/16 v3, 0x5f

    const/16 v8, 0x1e

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x11

    const/16 v2, 0x16

    const/16 v3, 0x61

    const/4 v4, 0x0

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x13

    const/16 v2, 0x17

    const/16 v3, 0x60

    const/16 v8, 0x32

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x14

    const/16 v2, 0x18

    const/16 v3, 0x65

    const/16 v5, 0x1000

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x15

    const/16 v2, 0x19

    const/16 v3, 0x66

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x16

    const/16 v2, 0x1a

    const/16 v3, 0x63

    const/16 v8, 0x19

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x17

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v8, 0x1e

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x1a

    const/16 v2, 0x1c

    const/16 v3, 0x61

    const/4 v4, 0x1

    const/16 v5, 0xf00

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x1b

    const/16 v2, 0x1d

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0x780

    const/16 v6, 0x438

    const/16 v8, 0x19

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x12

    const/16 v2, 0x1e

    const/16 v3, 0x22

    const/16 v8, 0x1e

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x1c

    const/16 v2, 0x1f

    const/16 v3, 0xe7

    const/16 v5, 0x400

    const/16 v6, 0x300

    const/16 v8, 0x3c

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x1d

    const/16 v2, 0x20

    const/16 v3, 0xe8

    const/16 v5, 0x5a0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x1e

    const/16 v2, 0x21

    const/16 v3, 0xe9

    const/16 v6, 0x384

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x1f

    const/16 v2, 0x22

    const/16 v3, 0xea

    const/16 v5, 0x500

    const/16 v6, 0x320

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    new-instance v11, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    const/16 v9, 0x20

    const/16 v2, 0x23

    const/16 v3, 0xeb

    const/16 v5, 0x3c0

    const/16 v6, 0x220

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;-><init>(IIIIIZIII)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sInstance:Lcom/realtek/hardware/RtkDPTxManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager;->mListener:Lcom/realtek/hardware/RtkDPTxManager$EventListener;

    const-string v0, "RtkDPTXManager"

    const-string v1, "RtkDPTxManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/realtek/hardware/RtkDPTxManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_init()V

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkDPTxManager;->checkIfDPTxPlugged()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->getEDIDSupportList()V

    :cond_0
    return-void
.end method

.method public static synthetic access$000()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/realtek/hardware/RtkDPTxManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->getEDIDSupportList()V

    return-void
.end method

.method public static synthetic access$200(Lcom/realtek/hardware/RtkDPTxManager;)Lcom/realtek/hardware/RtkDPTxManager$EventListener;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkDPTxManager;->mListener:Lcom/realtek/hardware/RtkDPTxManager$EventListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/realtek/hardware/RtkDPTxManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->clearEDIDSupportList()V

    return-void
.end method

.method private clearEDIDSupportList()V
    .locals 2

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

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

.method private from_native_addEDIDSupportListItem(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "from_native_addEDIDSupportListItem : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkDPTXManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;

    invoke-direct {v0, p1}, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;-><init>(I)V

    iget-object p1, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getEDIDSupportList()V
    .locals 4

    const-string v0, "getEDIDSupportList size "

    sget-object v1, Lcom/realtek/hardware/RtkDPTxManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "RtkDPTXManager"

    const-string v3, "Calling getEDIDSupportList, clear existing list first"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_getEDIDSupportList()V

    const-string v2, "RtkDPTXManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;

    invoke-virtual {v2}, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->dump()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRtkDPTxManager(Landroid/content/Context;)Lcom/realtek/hardware/RtkDPTxManager;
    .locals 1

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sInstance:Lcom/realtek/hardware/RtkDPTxManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/realtek/hardware/RtkDPTxManager;

    invoke-direct {v0, p0}, Lcom/realtek/hardware/RtkDPTxManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sInstance:Lcom/realtek/hardware/RtkDPTxManager;

    :cond_0
    sget-object p0, Lcom/realtek/hardware/RtkDPTxManager;->sInstance:Lcom/realtek/hardware/RtkDPTxManager;

    return-object p0
.end method

.method private getSetupIDViaVICNoFreqShift(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    iget v2, v1, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mFreqShift:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mVIC:I

    if-ne v2, p1, :cond_0

    iget p1, v1, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mSettingValue:I

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private native native_checkIfDPTxPlugged()Z
.end method

.method private native native_getDPTxEDIDReady()Z
.end method

.method private native native_getEDIDSupportList()V
.end method

.method private native native_getOutputFormat(Lcom/realtek/hardware/DPOutputFormat;I)I
.end method

.method private native native_hasDPTxBackend()I
.end method

.method private native native_init()V
.end method

.method private native native_readEdidAutoMode()I
.end method

.method private native native_release()V
.end method

.method private native native_saveEdidAutoMode(I)V
.end method

.method private native native_setDPTxEnable(I)I
.end method

.method private native native_setOutputFormat(III)V
.end method

.method private onHandleDPTxEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DPTX-HIDL onHandleDPTxEvent event:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkDPTXManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/realtek/hardware/RtkDPTxManager$1;

    invoke-direct {v1, p0, p1}, Lcom/realtek/hardware/RtkDPTxManager$1;-><init>(Lcom/realtek/hardware/RtkDPTxManager;I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/realtek/hardware/RtkDPTxManager$2;

    invoke-direct {v1, p0, p1}, Lcom/realtek/hardware/RtkDPTxManager$2;-><init>(Lcom/realtek/hardware/RtkDPTxManager;I)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private resolveAutoVic()I
    .locals 6

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkDPTxManager;->checkIfDPTxPlugged()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "RtkDPTXManager"

    if-nez v0, :cond_0

    const-string v0, "resolveAutoVic no DP is plugged"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "resolveAutoVic no EDID support list"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;

    iget-object v1, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->source()I

    move-result v4

    invoke-virtual {v3}, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->source()I

    move-result v5

    if-ge v4, v5, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "resolveAutoVic: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mVIC:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mVIC:I

    return v0
.end method


# virtual methods
.method public checkIfDPTxPlugged()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_hasDPTxBackend()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_checkIfDPTxPlugged()Z

    move-result v0

    return v0
.end method

.method public getDPTxEDIDReady()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_hasDPTxBackend()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_getDPTxEDIDReady()Z

    move-result v0

    return v0
.end method

.method public getTVSystem()I
    .locals 5

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_hasDPTxBackend()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RtkDPTXManager"

    if-gez v0, :cond_0

    const-string v0, "getTVSystem: has no DPTx do nothing"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_readEdidAutoMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const-string v0, "Get TV System : Auto mode"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/realtek/hardware/DPOutputFormat;

    invoke-direct {v0}, Lcom/realtek/hardware/DPOutputFormat;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/realtek/hardware/RtkDPTxManager;->native_getOutputFormat(Lcom/realtek/hardware/DPOutputFormat;I)I

    iget v0, v0, Lcom/realtek/hardware/DPOutputFormat;->mVIC:I

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkDPTxManager;->getSetupIDViaVICNoFreqShift(I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[getTVSystem] VIC:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " setupID:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoFormat()[I
    .locals 7

    sget-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x24

    :try_start_0
    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/realtek/hardware/RtkDPTxManager;->mEDIDSupportList:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;

    iget v5, v5, Lcom/realtek/hardware/RtkDPTxManager$DPTxFormatSupport;->mVIC:I

    invoke-direct {p0, v5}, Lcom/realtek/hardware/RtkDPTxManager;->getSetupIDViaVICNoFreqShift(I)I

    move-result v5

    if-lez v5, :cond_1

    aput v6, v2, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    aput v6, v2, v3

    const-string v4, "RtkDPTXManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVideoFormat supportVideoFormat length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-ge v3, v1, :cond_3

    const-string v4, "RtkDPTXManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVideoFormat:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v0

    return-object v2

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasDPTxBackend()I
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_hasDPTxBackend()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/realtek/hardware/RtkDPTxManager;->sInstance:Lcom/realtek/hardware/RtkDPTxManager;

    return-void
.end method

.method public setDPTxEnable(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkDPTxManager;->native_setDPTxEnable(I)I

    return-void
.end method

.method public setListener(Lcom/realtek/hardware/RtkDPTxManager$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkDPTxManager;->mListener:Lcom/realtek/hardware/RtkDPTxManager$EventListener;

    return-void
.end method

.method public setTVSystem(I)I
    .locals 6

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->native_hasDPTxBackend()I

    move-result v0

    const-string v1, "RtkDPTXManager"

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const-string p1, "setTVSystem: do nothing - no DPTx"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setTVSystem:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkDPTxManager;->native_saveEdidAutoMode(I)V

    invoke-direct {p0}, Lcom/realtek/hardware/RtkDPTxManager;->resolveAutoVic()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lcom/realtek/hardware/RtkDPTxManager;->native_saveEdidAutoMode(I)V

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-object v4, Lcom/realtek/hardware/RtkDPTxManager;->sTVSystemInfos:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;

    iget v5, v4, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mSettingValue:I

    if-ne v5, p1, :cond_2

    iget p1, v4, Lcom/realtek/hardware/RtkDPTxManager$TVSystemInfo;->mVIC:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found VIC: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v0, :cond_4

    invoke-direct {p0, p1, v0, v2}, Lcom/realtek/hardware/RtkDPTxManager;->native_setOutputFormat(III)V

    :cond_4
    return v2
.end method

.method public turnOffDPInS3()I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/realtek/hardware/RtkDPTxManager;->native_setOutputFormat(III)V

    return v2
.end method

.method public turnOnDP()I
    .locals 4

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkDPTxManager;->checkIfDPTxPlugged()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "RtkDPTXManager"

    const-string v2, "turnOnDP, but no DP is plugged"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0x3e7

    const/4 v2, -0x1

    const/4 v3, 0x5

    invoke-direct {p0, v0, v2, v3}, Lcom/realtek/hardware/RtkDPTxManager;->native_setOutputFormat(III)V

    return v1
.end method
