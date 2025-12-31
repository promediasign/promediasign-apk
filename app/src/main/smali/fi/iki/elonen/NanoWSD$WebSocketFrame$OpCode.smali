.class public final enum Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum BINARY:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum CLOSE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum CONTINUATION:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum PING:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum PONG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum TEXT:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;


# instance fields
.field private final code:B


# direct methods
.method private static synthetic $values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CONTINUATION:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->TEXT:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->BINARY:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CLOSE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->PING:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->PONG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v1, "CONTINUATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CONTINUATION:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v1, "TEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->TEXT:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v1, "BINARY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->BINARY:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v3, "CLOSE"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CLOSE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v1, 0x4

    const/16 v2, 0x9

    const-string v3, "PING"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->PING:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v1, 0x5

    const/16 v2, 0xa

    const-string v3, "PONG"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->PONG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-static {}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->$values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->$VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    iput-byte p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->code:B

    return-void
.end method

.method public static find(B)Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .locals 5

    invoke-static {}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->getValue()B

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .locals 1

    const-class v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .locals 1

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->$VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    iget-byte v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->code:B

    return v0
.end method

.method public isControlFrame()Z
    .locals 1

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CLOSE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->PING:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->PONG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
