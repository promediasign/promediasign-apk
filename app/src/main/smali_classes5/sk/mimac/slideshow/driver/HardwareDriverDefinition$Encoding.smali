.class public final enum Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/driver/HardwareDriverDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

.field public static final enum HEX:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

.field public static final enum TEXT:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    sget-object v1, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->TEXT:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->HEX:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->TEXT:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    new-instance v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    const-string v1, "HEX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->HEX:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->$values()[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->$VALUES:[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->$VALUES:[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    return-object v0
.end method
