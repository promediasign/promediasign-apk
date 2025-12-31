.class public final enum Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum ABNORMAL_CLOSURE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum GOING_AWAY:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum INTERNAL_SERVER_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum INVALID_FRAME_PAYLOAD_DATA:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum MANDATORY_EXT:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum MESSAGE_TOO_BIG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum NORMAL_CLOSURE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum NO_STATUS_RCVD:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum POLICY_VIOLATION:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum TLS_HANDSHAKE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum UNSUPPORTED_DATA:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NORMAL_CLOSURE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->GOING_AWAY:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->UNSUPPORTED_DATA:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NO_STATUS_RCVD:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ABNORMAL_CLOSURE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->INVALID_FRAME_PAYLOAD_DATA:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->POLICY_VIOLATION:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MESSAGE_TOO_BIG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MANDATORY_EXT:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->INTERNAL_SERVER_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->TLS_HANDSHAKE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    const-string v3, "NORMAL_CLOSURE"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NORMAL_CLOSURE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v1, 0x1

    const/16 v2, 0x3e9

    const-string v3, "GOING_AWAY"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->GOING_AWAY:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v1, 0x2

    const/16 v2, 0x3ea

    const-string v3, "PROTOCOL_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v1, 0x3

    const/16 v2, 0x3eb

    const-string v3, "UNSUPPORTED_DATA"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->UNSUPPORTED_DATA:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v1, 0x4

    const/16 v2, 0x3ed

    const-string v3, "NO_STATUS_RCVD"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NO_STATUS_RCVD:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v1, 0x5

    const/16 v2, 0x3ee

    const-string v3, "ABNORMAL_CLOSURE"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ABNORMAL_CLOSURE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v1, 0x6

    const/16 v2, 0x3ef

    const-string v3, "INVALID_FRAME_PAYLOAD_DATA"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->INVALID_FRAME_PAYLOAD_DATA:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v1, 0x7

    const/16 v2, 0x3f0

    const-string v3, "POLICY_VIOLATION"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->POLICY_VIOLATION:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v1, 0x8

    const/16 v2, 0x3f1

    const-string v3, "MESSAGE_TOO_BIG"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MESSAGE_TOO_BIG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v1, 0x9

    const/16 v2, 0x3f2

    const-string v3, "MANDATORY_EXT"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MANDATORY_EXT:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v1, 0xa

    const/16 v2, 0x3f3

    const-string v3, "INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->INTERNAL_SERVER_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v1, 0xb

    const/16 v2, 0x3f7

    const-string v3, "TLS_HANDSHAKE"

    invoke-direct {v0, v3, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->TLS_HANDSHAKE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-static {}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->$values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->$VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

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

    iput p3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->code:I

    return-void
.end method

.method public static find(I)Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 5

    invoke-static {}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->getValue()I

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

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 1

    const-class v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 1

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->$VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->code:I

    return v0
.end method
