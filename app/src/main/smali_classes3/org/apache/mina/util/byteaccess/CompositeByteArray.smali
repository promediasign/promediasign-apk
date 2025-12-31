.class public final Lorg/apache/mina/util/byteaccess/CompositeByteArray;
.super Lorg/apache/mina/util/byteaccess/AbstractByteArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;
    }
.end annotation


# instance fields
.field private final bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

.field private final byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

.field private order:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;-><init>()V

    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-direct {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->checkBounds(II)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method private addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot add byte array with different byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot add byte array that doesn\'t start from 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkBounds(II)V
    .locals 3

    .line 1
    add-int/2addr p2, p1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "."

    .line 7
    .line 8
    const-string v2, "Index "

    .line 9
    .line 10
    if-lt p1, v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-gt p2, p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 20
    .line 21
    const-string v0, " greater than length "

    .line 22
    .line 23
    invoke-static {p2, v2, v0}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 46
    .line 47
    const-string v0, " less than start "

    .line 48
    .line 49
    invoke-static {p1, v2, v0}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p2
.end method


# virtual methods
.method public addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    return-void
.end method

.method public addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    return-void
.end method

.method public cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V

    return-object v0
.end method

.method public cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V

    return-object v0
.end method

.method public cursor(ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-object v0
.end method

.method public cursor(Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-object v0
.end method

.method public first()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte()I

    move-result v0

    return v0
.end method

.method public free()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result p1

    return p1
.end method

.method public get(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method

.method public getChar(I)C
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getChar()C

    move-result p1

    return p1
.end method

.method public getDouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFirst()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getFloat()F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result p1

    return p1
.end method

.method public getIoBuffers()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->getIoBuffers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->hasNextNode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->getIoBuffers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getLong(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getShort()S

    move-result p1

    return p1
.end method

.method public getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    invoke-interface {v1, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    :goto_0
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v2, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get single buffer from CompositeByteArray unless it has a ByteArrayFactory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public last()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte()I

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Byte order not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public order(Ljava/nio/ByteOrder;)V
    .locals 2

    .line 2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->hasNextNode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(IB)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->put(B)V

    return-void
.end method

.method public put(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method

.method public putChar(IC)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putChar(C)V

    return-void
.end method

.method public putDouble(ID)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putDouble(D)V

    return-void
.end method

.method public putFloat(IF)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putFloat(F)V

    return-void
.end method

.method public putInt(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putInt(I)V

    return-void
.end method

.method public putLong(IJ)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putLong(J)V

    return-void
.end method

.method public putShort(IS)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putShort(S)V

    return-void
.end method

.method public removeFirst()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public removeLast()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public removeTo(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    if-gt p1, v0, :cond_2

    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    invoke-direct {v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v1

    :goto_0
    sub-int/2addr p1, v1

    :goto_1
    if-lez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeFirst()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    new-instance v3, Lorg/apache/mina/util/byteaccess/CompositeByteArray$1;

    invoke-direct {v3, p0, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$1;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/core/buffer/IoBuffer;)V

    invoke-virtual {v0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v3

    sub-int/2addr p1, v3

    new-instance v3, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;

    invoke-direct {v3, p0, v2, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/util/byteaccess/ByteArray;)V

    invoke-virtual {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public slice(II)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object p1

    return-object p1
.end method
