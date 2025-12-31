.class public Ludt/packets/KeepAlive;
.super Ludt/packets/ControlPacket;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ludt/packets/ControlPacket;-><init>()V

    sget-object v0, Ludt/packets/ControlPacket$ControlPacketType;->KEEP_ALIVE:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ludt/packets/ControlPacket;->controlPacketType:I

    return-void
.end method


# virtual methods
.method public encodeControlInformation()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
