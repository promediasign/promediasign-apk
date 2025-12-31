.class public Lcom/illposed/osc/OSCParseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/illposed/osc/OSCParseException;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/illposed/osc/OSCParseException;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/illposed/osc/OSCParseException;->data:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/OSCParseException;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method
