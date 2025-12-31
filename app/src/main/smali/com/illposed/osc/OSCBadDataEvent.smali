.class public Lcom/illposed/osc/OSCBadDataEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data:Lcom/illposed/osc/SerializableByteBuffer;

.field private final exception:Lcom/illposed/osc/OSCParseException;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;Lcom/illposed/osc/OSCParseException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/illposed/osc/SerializableByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/illposed/osc/SerializableByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p1, p0, Lcom/illposed/osc/OSCBadDataEvent;->data:Lcom/illposed/osc/SerializableByteBuffer;

    iput-object p3, p0, Lcom/illposed/osc/OSCBadDataEvent;->exception:Lcom/illposed/osc/OSCParseException;

    return-void
.end method
