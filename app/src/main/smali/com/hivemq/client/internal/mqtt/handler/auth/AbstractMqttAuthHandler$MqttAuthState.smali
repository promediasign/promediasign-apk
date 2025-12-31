.class final enum Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MqttAuthState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

.field public static final enum IN_PROGRESS_DONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

.field public static final enum IN_PROGRESS_INIT:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

.field public static final enum IN_PROGRESS_RESPONSE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

.field public static final enum NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

.field public static final enum WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    const-string v3, "WAIT_FOR_SERVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    const-string v5, "IN_PROGRESS_INIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_INIT:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    new-instance v5, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    const-string v7, "IN_PROGRESS_RESPONSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_RESPONSE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    new-instance v7, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    const-string v9, "IN_PROGRESS_DONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_DONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->$VALUES:[Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

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
