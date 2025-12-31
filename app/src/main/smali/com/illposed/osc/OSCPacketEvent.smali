.class public Lcom/illposed/osc/OSCPacketEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final packet:Lcom/illposed/osc/OSCPacket;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/illposed/osc/OSCPacket;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/illposed/osc/OSCPacketEvent;->packet:Lcom/illposed/osc/OSCPacket;

    return-void
.end method


# virtual methods
.method public getPacket()Lcom/illposed/osc/OSCPacket;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/OSCPacketEvent;->packet:Lcom/illposed/osc/OSCPacket;

    return-object v0
.end method
