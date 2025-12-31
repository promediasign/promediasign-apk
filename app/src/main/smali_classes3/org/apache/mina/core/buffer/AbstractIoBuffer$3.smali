.class Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;
.super Ljava/io/ObjectInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

.field final synthetic val$classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    iput-object p3, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;->val$classLoader:Ljava/lang/ClassLoader;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    new-instance v1, Ljava/io/StreamCorruptedException;

    .line 28
    .line 29
    const-string v2, "Unexpected class descriptor type: "

    .line 30
    .line 31
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_1
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;->val$classLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
