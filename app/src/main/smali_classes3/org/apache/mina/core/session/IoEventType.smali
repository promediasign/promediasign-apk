.class public final enum Lorg/apache/mina/core/session/IoEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/core/session/IoEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/core/session/IoEventType;

.field public static final enum CLOSE:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum WRITE:Lorg/apache/mina/core/session/IoEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "SESSION_CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    new-instance v1, Lorg/apache/mina/core/session/IoEventType;

    const-string v3, "SESSION_OPENED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    new-instance v3, Lorg/apache/mina/core/session/IoEventType;

    const-string v5, "SESSION_CLOSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    new-instance v5, Lorg/apache/mina/core/session/IoEventType;

    const-string v7, "MESSAGE_RECEIVED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    new-instance v7, Lorg/apache/mina/core/session/IoEventType;

    const-string v9, "MESSAGE_SENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    new-instance v9, Lorg/apache/mina/core/session/IoEventType;

    const-string v11, "SESSION_IDLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    new-instance v11, Lorg/apache/mina/core/session/IoEventType;

    const-string v13, "EXCEPTION_CAUGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    new-instance v13, Lorg/apache/mina/core/session/IoEventType;

    const-string v15, "WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    new-instance v15, Lorg/apache/mina/core/session/IoEventType;

    const-string v14, "CLOSE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    const/16 v14, 0x9

    new-array v14, v14, [Lorg/apache/mina/core/session/IoEventType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lorg/apache/mina/core/session/IoEventType;->$VALUES:[Lorg/apache/mina/core/session/IoEventType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/core/session/IoEventType;
    .locals 1

    const-class v0, Lorg/apache/mina/core/session/IoEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/mina/core/session/IoEventType;

    return-object p0
.end method

.method public static values()[Lorg/apache/mina/core/session/IoEventType;
    .locals 1

    sget-object v0, Lorg/apache/mina/core/session/IoEventType;->$VALUES:[Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0}, [Lorg/apache/mina/core/session/IoEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/core/session/IoEventType;

    return-object v0
.end method
