.class public Lcom/illposed/osc/BufferBytesReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/BytesReceiver;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/BufferBytesReceiver;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public clear()Lcom/illposed/osc/BytesReceiver;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/BufferBytesReceiver;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public put(B)Lcom/illposed/osc/BytesReceiver;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/BufferBytesReceiver;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public toByteArray()[B
    .locals 2

    iget-object v0, p0, Lcom/illposed/osc/BufferBytesReceiver;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/illposed/osc/BufferBytesReceiver;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/illposed/osc/BufferBytesReceiver;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method
