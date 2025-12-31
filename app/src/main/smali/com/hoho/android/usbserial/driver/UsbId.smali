.class public final Lcom/hoho/android/usbserial/driver/UsbId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FTDI_FT2232H:I = 0x6010

.field public static final FTDI_FT231X:I = 0x6015

.field public static final FTDI_FT232H:I = 0x6014

.field public static final FTDI_FT232R:I = 0x6001

.field public static final FTDI_FT4232H:I = 0x6011

.field public static final PROLIFIC_PL2303:I = 0x2303

.field public static final PROLIFIC_PL2303GB:I = 0x23b3

.field public static final PROLIFIC_PL2303GC:I = 0x23a3

.field public static final PROLIFIC_PL2303GE:I = 0x23e3

.field public static final PROLIFIC_PL2303GL:I = 0x23d3

.field public static final PROLIFIC_PL2303GS:I = 0x23f3

.field public static final PROLIFIC_PL2303GT:I = 0x23c3

.field public static final QINHENG_CH340:I = 0x7523

.field public static final QINHENG_CH341A:I = 0x5523

.field public static final SILABS_CP2102:I = 0xea60

.field public static final SILABS_CP2105:I = 0xea70

.field public static final SILABS_CP2108:I = 0xea71

.field public static final VENDOR_FTDI:I = 0x403

.field public static final VENDOR_PROLIFIC:I = 0x67b

.field public static final VENDOR_QINHENG:I = 0x1a86

.field public static final VENDOR_SILABS:I = 0x10c4


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Non-instantiable class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
