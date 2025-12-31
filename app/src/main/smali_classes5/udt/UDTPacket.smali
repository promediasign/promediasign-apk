.class public interface abstract Ludt/UDTPacket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ludt/UDTPacket;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract forSender()Z
.end method

.method public abstract getControlPacketType()I
.end method

.method public abstract getDestinationID()J
.end method

.method public abstract getEncoded()[B
.end method

.method public abstract getPacketSequenceNumber()J
.end method

.method public abstract getSession()Ludt/UDTSession;
.end method

.method public abstract isConnectionHandshake()Z
.end method

.method public abstract isControlPacket()Z
.end method
