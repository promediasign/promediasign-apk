.class public final enum Lfi/iki/elonen/NanoWSD$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoWSD$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoWSD$State;

.field public static final enum CLOSED:Lfi/iki/elonen/NanoWSD$State;

.field public static final enum CLOSING:Lfi/iki/elonen/NanoWSD$State;

.field public static final enum CONNECTING:Lfi/iki/elonen/NanoWSD$State;

.field public static final enum OPEN:Lfi/iki/elonen/NanoWSD$State;

.field public static final enum UNCONNECTED:Lfi/iki/elonen/NanoWSD$State;


# direct methods
.method private static synthetic $values()[Lfi/iki/elonen/NanoWSD$State;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lfi/iki/elonen/NanoWSD$State;

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->UNCONNECTED:Lfi/iki/elonen/NanoWSD$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CONNECTING:Lfi/iki/elonen/NanoWSD$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CLOSING:Lfi/iki/elonen/NanoWSD$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CLOSED:Lfi/iki/elonen/NanoWSD$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfi/iki/elonen/NanoWSD$State;

    const-string v1, "UNCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->UNCONNECTED:Lfi/iki/elonen/NanoWSD$State;

    new-instance v0, Lfi/iki/elonen/NanoWSD$State;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->CONNECTING:Lfi/iki/elonen/NanoWSD$State;

    new-instance v0, Lfi/iki/elonen/NanoWSD$State;

    const-string v1, "OPEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    new-instance v0, Lfi/iki/elonen/NanoWSD$State;

    const-string v1, "CLOSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->CLOSING:Lfi/iki/elonen/NanoWSD$State;

    new-instance v0, Lfi/iki/elonen/NanoWSD$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->CLOSED:Lfi/iki/elonen/NanoWSD$State;

    invoke-static {}, Lfi/iki/elonen/NanoWSD$State;->$values()[Lfi/iki/elonen/NanoWSD$State;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->$VALUES:[Lfi/iki/elonen/NanoWSD$State;

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

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoWSD$State;
    .locals 1

    const-class v0, Lfi/iki/elonen/NanoWSD$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoWSD$State;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoWSD$State;
    .locals 1

    sget-object v0, Lfi/iki/elonen/NanoWSD$State;->$VALUES:[Lfi/iki/elonen/NanoWSD$State;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoWSD$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoWSD$State;

    return-object v0
.end method
