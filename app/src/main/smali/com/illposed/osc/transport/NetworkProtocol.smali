.class public final enum Lcom/illposed/osc/transport/NetworkProtocol;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/illposed/osc/transport/NetworkProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/illposed/osc/transport/NetworkProtocol;

.field public static final enum TCP:Lcom/illposed/osc/transport/NetworkProtocol;

.field public static final enum UDP:Lcom/illposed/osc/transport/NetworkProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/illposed/osc/transport/NetworkProtocol;

    const-string v1, "UDP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/illposed/osc/transport/NetworkProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/illposed/osc/transport/NetworkProtocol;->UDP:Lcom/illposed/osc/transport/NetworkProtocol;

    new-instance v1, Lcom/illposed/osc/transport/NetworkProtocol;

    const-string v3, "TCP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/illposed/osc/transport/NetworkProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/illposed/osc/transport/NetworkProtocol;->TCP:Lcom/illposed/osc/transport/NetworkProtocol;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/illposed/osc/transport/NetworkProtocol;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/illposed/osc/transport/NetworkProtocol;->$VALUES:[Lcom/illposed/osc/transport/NetworkProtocol;

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

.method public static valueOf(Ljava/lang/String;)Lcom/illposed/osc/transport/NetworkProtocol;
    .locals 1

    const-class v0, Lcom/illposed/osc/transport/NetworkProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/illposed/osc/transport/NetworkProtocol;

    return-object p0
.end method

.method public static values()[Lcom/illposed/osc/transport/NetworkProtocol;
    .locals 1

    sget-object v0, Lcom/illposed/osc/transport/NetworkProtocol;->$VALUES:[Lcom/illposed/osc/transport/NetworkProtocol;

    invoke-virtual {v0}, [Lcom/illposed/osc/transport/NetworkProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/illposed/osc/transport/NetworkProtocol;

    return-object v0
.end method
