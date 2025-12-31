.class public abstract Ludt/packets/PacketFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createControlPacket([BII)Ludt/packets/ControlPacket;
    .locals 7

    invoke-static {p0, p1}, Ludt/packets/PacketUtil;->decodeType([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v1

    add-int/lit8 v3, p1, 0x8

    invoke-static {p0, v3}, Ludt/packets/PacketUtil;->decode([BI)J

    move-result-wide v3

    add-int/lit8 p2, p2, -0xc

    new-array v5, p2, [B

    add-int/lit8 p1, p1, 0xc

    const/4 v6, 0x0

    invoke-static {p0, p1, v5, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p0, Ludt/packets/ControlPacket$ControlPacketType;->CONNECTION_HANDSHAKE:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-ne p0, v0, :cond_0

    new-instance p0, Ludt/packets/ConnectionHandshake;

    invoke-direct {p0, v5}, Ludt/packets/ConnectionHandshake;-><init>([B)V

    goto :goto_0

    :cond_0
    sget-object p0, Ludt/packets/ControlPacket$ControlPacketType;->KEEP_ALIVE:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-ne p0, v0, :cond_1

    new-instance p0, Ludt/packets/KeepAlive;

    invoke-direct {p0}, Ludt/packets/KeepAlive;-><init>()V

    goto :goto_0

    :cond_1
    sget-object p0, Ludt/packets/ControlPacket$ControlPacketType;->ACK:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-ne p0, v0, :cond_2

    new-instance p0, Ludt/packets/Acknowledgement;

    invoke-direct {p0, v1, v2, v5}, Ludt/packets/Acknowledgement;-><init>(J[B)V

    goto :goto_0

    :cond_2
    sget-object p0, Ludt/packets/ControlPacket$ControlPacketType;->NAK:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-ne p0, v0, :cond_3

    new-instance p0, Ludt/packets/NegativeAcknowledgement;

    invoke-direct {p0, v5}, Ludt/packets/NegativeAcknowledgement;-><init>([B)V

    goto :goto_0

    :cond_3
    sget-object p0, Ludt/packets/ControlPacket$ControlPacketType;->SHUTDOWN:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-ne p0, v0, :cond_4

    new-instance p0, Ludt/packets/Shutdown;

    invoke-direct {p0}, Ludt/packets/Shutdown;-><init>()V

    goto :goto_0

    :cond_4
    sget-object p0, Ludt/packets/ControlPacket$ControlPacketType;->ACK2:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-ne p0, v0, :cond_5

    new-instance p0, Ludt/packets/Acknowledgment2;

    invoke-direct {p0, v1, v2, v5}, Ludt/packets/Acknowledgment2;-><init>(J[B)V

    goto :goto_0

    :cond_5
    sget-object p0, Ludt/packets/ControlPacket$ControlPacketType;->MESSAGE_DROP_REQUEST:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-ne p0, v0, :cond_6

    new-instance p0, Ludt/packets/MessageDropRequest;

    invoke-direct {p0, v5}, Ludt/packets/MessageDropRequest;-><init>([B)V

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_7

    invoke-virtual {p0, v3, v4}, Ludt/packets/ControlPacket;->setDestinationID(J)V

    :cond_7
    return-object p0
.end method

.method public static createPacket([BIILsk/mimac/slideshow/communication/key/PrivateKey;)Ludt/UDTPacket;
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Ludt/packets/PacketFactory;->createControlPacket([BII)Ludt/packets/ControlPacket;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ludt/packets/DataPacket;

    invoke-direct {v0, p0, p1, p2, p3}, Ludt/packets/DataPacket;-><init>([BIILsk/mimac/slideshow/communication/key/PrivateKey;)V

    return-object v0
.end method
