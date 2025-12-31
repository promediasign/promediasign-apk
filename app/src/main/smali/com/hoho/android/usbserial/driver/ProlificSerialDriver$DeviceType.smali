.class public final enum Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_01:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_HX:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_T:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const-string v1, "DEVICE_TYPE_01"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_01:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    new-instance v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const-string v3, "DEVICE_TYPE_T"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_T:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    new-instance v3, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const-string v5, "DEVICE_TYPE_HX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HX:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    new-instance v5, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const-string v7, "DEVICE_TYPE_HXN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->$VALUES:[Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;
    .locals 1

    const-class v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;
    .locals 1

    sget-object v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->$VALUES:[Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    invoke-virtual {v0}, [Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    return-object v0
.end method
