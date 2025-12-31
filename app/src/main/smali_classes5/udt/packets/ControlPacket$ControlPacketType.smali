.class public final enum Ludt/packets/ControlPacket$ControlPacketType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ludt/packets/ControlPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlPacketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ludt/packets/ControlPacket$ControlPacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ludt/packets/ControlPacket$ControlPacketType;

.field public static final enum ACK:Ludt/packets/ControlPacket$ControlPacketType;

.field public static final enum ACK2:Ludt/packets/ControlPacket$ControlPacketType;

.field public static final enum CONNECTION_HANDSHAKE:Ludt/packets/ControlPacket$ControlPacketType;

.field public static final enum KEEP_ALIVE:Ludt/packets/ControlPacket$ControlPacketType;

.field public static final enum MESSAGE_DROP_REQUEST:Ludt/packets/ControlPacket$ControlPacketType;

.field public static final enum NAK:Ludt/packets/ControlPacket$ControlPacketType;

.field public static final enum SHUTDOWN:Ludt/packets/ControlPacket$ControlPacketType;


# direct methods
.method private static synthetic $values()[Ludt/packets/ControlPacket$ControlPacketType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ludt/packets/ControlPacket$ControlPacketType;

    sget-object v1, Ludt/packets/ControlPacket$ControlPacketType;->CONNECTION_HANDSHAKE:Ludt/packets/ControlPacket$ControlPacketType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ludt/packets/ControlPacket$ControlPacketType;->KEEP_ALIVE:Ludt/packets/ControlPacket$ControlPacketType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ludt/packets/ControlPacket$ControlPacketType;->ACK:Ludt/packets/ControlPacket$ControlPacketType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ludt/packets/ControlPacket$ControlPacketType;->NAK:Ludt/packets/ControlPacket$ControlPacketType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ludt/packets/ControlPacket$ControlPacketType;->SHUTDOWN:Ludt/packets/ControlPacket$ControlPacketType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ludt/packets/ControlPacket$ControlPacketType;->ACK2:Ludt/packets/ControlPacket$ControlPacketType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ludt/packets/ControlPacket$ControlPacketType;->MESSAGE_DROP_REQUEST:Ludt/packets/ControlPacket$ControlPacketType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ludt/packets/ControlPacket$ControlPacketType;

    const-string v1, "CONNECTION_HANDSHAKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ludt/packets/ControlPacket$ControlPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ludt/packets/ControlPacket$ControlPacketType;->CONNECTION_HANDSHAKE:Ludt/packets/ControlPacket$ControlPacketType;

    new-instance v0, Ludt/packets/ControlPacket$ControlPacketType;

    const-string v1, "KEEP_ALIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ludt/packets/ControlPacket$ControlPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ludt/packets/ControlPacket$ControlPacketType;->KEEP_ALIVE:Ludt/packets/ControlPacket$ControlPacketType;

    new-instance v0, Ludt/packets/ControlPacket$ControlPacketType;

    const-string v1, "ACK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ludt/packets/ControlPacket$ControlPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ludt/packets/ControlPacket$ControlPacketType;->ACK:Ludt/packets/ControlPacket$ControlPacketType;

    new-instance v0, Ludt/packets/ControlPacket$ControlPacketType;

    const-string v1, "NAK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ludt/packets/ControlPacket$ControlPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ludt/packets/ControlPacket$ControlPacketType;->NAK:Ludt/packets/ControlPacket$ControlPacketType;

    new-instance v0, Ludt/packets/ControlPacket$ControlPacketType;

    const-string v1, "SHUTDOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ludt/packets/ControlPacket$ControlPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ludt/packets/ControlPacket$ControlPacketType;->SHUTDOWN:Ludt/packets/ControlPacket$ControlPacketType;

    new-instance v0, Ludt/packets/ControlPacket$ControlPacketType;

    const-string v1, "ACK2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ludt/packets/ControlPacket$ControlPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ludt/packets/ControlPacket$ControlPacketType;->ACK2:Ludt/packets/ControlPacket$ControlPacketType;

    new-instance v0, Ludt/packets/ControlPacket$ControlPacketType;

    const-string v1, "MESSAGE_DROP_REQUEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ludt/packets/ControlPacket$ControlPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ludt/packets/ControlPacket$ControlPacketType;->MESSAGE_DROP_REQUEST:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-static {}, Ludt/packets/ControlPacket$ControlPacketType;->$values()[Ludt/packets/ControlPacket$ControlPacketType;

    move-result-object v0

    sput-object v0, Ludt/packets/ControlPacket$ControlPacketType;->$VALUES:[Ludt/packets/ControlPacket$ControlPacketType;

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

.method public static valueOf(Ljava/lang/String;)Ludt/packets/ControlPacket$ControlPacketType;
    .locals 1

    const-class v0, Ludt/packets/ControlPacket$ControlPacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ludt/packets/ControlPacket$ControlPacketType;

    return-object p0
.end method

.method public static values()[Ludt/packets/ControlPacket$ControlPacketType;
    .locals 1

    sget-object v0, Ludt/packets/ControlPacket$ControlPacketType;->$VALUES:[Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {v0}, [Ludt/packets/ControlPacket$ControlPacketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ludt/packets/ControlPacket$ControlPacketType;

    return-object v0
.end method
