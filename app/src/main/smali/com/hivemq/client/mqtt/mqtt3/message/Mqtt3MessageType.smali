.class public final enum Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum CONNACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum CONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum DISCONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum PINGREQ:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum PINGRESP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum PUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum PUBCOMP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum PUBREC:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum PUBREL:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum SUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum SUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum UNSUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field public static final enum UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

.field private static final VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v3, "CONNACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v5, "PUBLISH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v7, "PUBACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v7, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v9, "PUBREC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREC:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v9, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v11, "PUBREL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v11, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v13, "PUBCOMP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v13, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v15, "SUBSCRIBE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->SUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v15, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v14, "SUBACK"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->SUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v14, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v12, "UNSUBSCRIBE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v12, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v10, "UNSUBACK"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v10, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v8, "PINGREQ"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PINGREQ:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v8, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v6, "PINGRESP"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PINGRESP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    new-instance v6, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const-string v4, "DISCONNECT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-static {}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->values()[Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
