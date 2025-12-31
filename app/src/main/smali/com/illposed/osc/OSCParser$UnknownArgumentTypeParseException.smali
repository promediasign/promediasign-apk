.class Lcom/illposed/osc/OSCParser$UnknownArgumentTypeParseException;
.super Lcom/illposed/osc/OSCParseException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/illposed/osc/OSCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownArgumentTypeParseException"
.end annotation


# direct methods
.method public constructor <init>(CLjava/nio/ByteBuffer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No ArgumentHandler registered for type \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/illposed/osc/OSCParseException;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method
