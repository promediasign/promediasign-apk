.class public final enum Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/driver/HardwareDriverDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

.field public static final enum RS232:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    sget-object v1, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;->RS232:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    const-string v1, "RS232"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;->RS232:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;->$values()[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;->$VALUES:[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;->$VALUES:[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    return-object v0
.end method
