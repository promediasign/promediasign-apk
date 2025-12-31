.class Lorg/apache/mina/core/buffer/AbstractIoBuffer$4;
.super Ljava/io/ObjectOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$4;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/io/Serializable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-super {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-super {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    :goto_0
    return-void
.end method
