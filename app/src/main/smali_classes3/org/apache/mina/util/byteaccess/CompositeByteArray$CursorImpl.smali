.class Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CursorImpl"
.end annotation


# instance fields
.field private componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

.field private componentIndex:I

.field private componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

.field private index:I

.field private final listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iput-object p3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-void
.end method

.method private prepareForAccess(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    invoke-static {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;II)V

    iget-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v0

    iput v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredFirstComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredLastComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    :cond_2
    :goto_0
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getPreviousNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredPreviousComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/IoAbsoluteReader;->length()I

    move-result v2

    add-int/2addr v2, v1

    if-lt v0, v2, :cond_4

    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v1, :cond_3

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredNextComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-ne v1, p1, :cond_5

    iget-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {p1, v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->setIndex(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    :goto_2
    return-void
.end method


# virtual methods
.method public get()B
    .locals 3

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v1

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return v1
.end method

.method public get(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get(Lorg/apache/mina/core/buffer/IoBuffer;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChar()C
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getChar()C

    move-result v1

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    :goto_0
    int-to-char v0, v0

    return v0

    :cond_1
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public getDouble()D
    .locals 4

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getDouble()D

    move-result-wide v1

    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getFloat()F

    move-result v1

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getInt()I
    .locals 6

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v2

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v3

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0

    :cond_1
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public getLong()J
    .locals 19

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v2, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    iget-object v2, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getLong()J

    move-result-wide v2

    iget v4, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v4, v1

    iput v4, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return-wide v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v9

    iget-object v10, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v10}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v12, 0x18

    const/16 v13, 0x20

    const/16 v14, 0x28

    const/16 v15, 0x30

    const/16 v16, 0x38

    const-wide/16 v17, 0xff

    if-eqz v10, :cond_1

    int-to-long v1, v2

    and-long v1, v1, v17

    shl-long v1, v1, v16

    int-to-long v10, v3

    and-long v10, v10, v17

    shl-long/2addr v10, v15

    or-long/2addr v1, v10

    int-to-long v3, v4

    and-long v3, v3, v17

    shl-long/2addr v3, v14

    or-long/2addr v1, v3

    int-to-long v3, v5

    and-long v3, v3, v17

    shl-long/2addr v3, v13

    or-long/2addr v1, v3

    int-to-long v3, v6

    and-long v3, v3, v17

    shl-long/2addr v3, v12

    or-long/2addr v1, v3

    int-to-long v3, v7

    and-long v3, v3, v17

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    int-to-long v3, v8

    and-long v3, v3, v17

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    int-to-long v3, v9

    and-long v3, v3, v17

    or-long/2addr v1, v3

    return-wide v1

    :cond_1
    int-to-long v10, v9

    and-long v9, v10, v17

    shl-long v9, v9, v16

    int-to-long v12, v8

    and-long v12, v12, v17

    shl-long/2addr v12, v15

    or-long v8, v9, v12

    int-to-long v12, v7

    and-long v12, v12, v17

    shl-long/2addr v12, v14

    or-long v7, v8, v12

    int-to-long v9, v6

    and-long v9, v9, v17

    const/16 v1, 0x20

    shl-long/2addr v9, v1

    or-long v6, v7, v9

    int-to-long v8, v5

    and-long v8, v8, v17

    const/16 v1, 0x18

    shl-long/2addr v8, v1

    or-long v5, v6, v8

    int-to-long v7, v4

    and-long v7, v7, v17

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v4, v5, v7

    int-to-long v6, v3

    and-long v6, v6, v17

    const/16 v1, 0x8

    shl-long/2addr v6, v1

    or-long v3, v4, v6

    int-to-long v1, v2

    and-long v1, v1, v17

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public getRemaining()I
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getShort()S
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getShort()S

    move-result v1

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    :goto_0
    int-to-short v0, v0

    return v0

    :cond_1
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public hasRemaining()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->put(B)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putChar(C)V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putChar(C)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    :goto_0
    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    goto :goto_1

    :cond_1
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    shr-int/lit8 p1, p1, 0x8

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    :goto_2
    return-void
.end method

.method public putDouble(D)V
    .locals 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1, p2}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putDouble(D)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->putLong(J)V

    :goto_0
    return-void
.end method

.method public putFloat(F)V
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putFloat(F)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->putInt(I)V

    :goto_0
    return-void
.end method

.method public putInt(I)V
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putInt(I)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    :goto_0
    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    goto :goto_1

    :cond_1
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    shr-int/lit8 p1, p1, 0x18

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    :goto_2
    return-void
.end method

.method public putLong(J)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v4, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    iget-object v4, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4, v1, v2}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putLong(J)V

    iget v1, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto/16 :goto_1

    :cond_0
    iget-object v4, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x10

    const/16 v6, 0x18

    const/16 v7, 0x20

    const/16 v8, 0x28

    const/16 v9, 0x30

    const/16 v10, 0x38

    const-wide/16 v11, 0xff

    if-eqz v4, :cond_1

    shr-long v13, v1, v10

    and-long/2addr v13, v11

    long-to-int v4, v13

    int-to-byte v4, v4

    shr-long v9, v1, v9

    and-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    shr-long v13, v1, v8

    and-long/2addr v13, v11

    long-to-int v8, v13

    int-to-byte v8, v8

    shr-long v13, v1, v7

    and-long/2addr v13, v11

    long-to-int v7, v13

    int-to-byte v7, v7

    shr-long v13, v1, v6

    and-long/2addr v13, v11

    long-to-int v6, v13

    int-to-byte v6, v6

    shr-long v13, v1, v5

    and-long/2addr v13, v11

    long-to-int v5, v13

    int-to-byte v5, v5

    shr-long v13, v1, v3

    and-long/2addr v13, v11

    long-to-int v3, v13

    int-to-byte v3, v3

    and-long/2addr v1, v11

    long-to-int v2, v1

    int-to-byte v1, v2

    goto :goto_0

    :cond_1
    and-long v13, v1, v11

    long-to-int v4, v13

    int-to-byte v4, v4

    shr-long v13, v1, v3

    and-long/2addr v13, v11

    long-to-int v3, v13

    int-to-byte v3, v3

    shr-long v13, v1, v5

    and-long/2addr v13, v11

    long-to-int v5, v13

    int-to-byte v5, v5

    shr-long v13, v1, v6

    and-long/2addr v13, v11

    long-to-int v6, v13

    int-to-byte v6, v6

    shr-long v13, v1, v7

    and-long/2addr v13, v11

    long-to-int v7, v13

    int-to-byte v7, v7

    shr-long v13, v1, v8

    and-long/2addr v13, v11

    long-to-int v8, v13

    int-to-byte v8, v8

    shr-long v13, v1, v9

    and-long/2addr v13, v11

    long-to-int v9, v13

    int-to-byte v9, v9

    shr-long/2addr v1, v10

    and-long/2addr v1, v11

    long-to-int v2, v1

    int-to-byte v1, v2

    move v15, v9

    move v9, v3

    move v3, v15

    move/from16 v16, v8

    move v8, v5

    move/from16 v5, v16

    move/from16 v17, v7

    move v7, v6

    move/from16 v6, v17

    :goto_0
    invoke-virtual {v0, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {v0, v9}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {v0, v8}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {v0, v7}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {v0, v6}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {v0, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {v0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    :goto_1
    return-void
.end method

.method public putShort(S)V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putShort(S)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    :goto_0
    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    goto :goto_1

    :cond_1
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    shr-int/lit8 p1, p1, 0x8

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    :goto_2
    return-void
.end method

.method public setIndex(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;II)V

    iput p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return-void
.end method

.method public skip(I)V
    .locals 1

    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->setIndex(I)V

    return-void
.end method

.method public slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 3

    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$100(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    :goto_0
    if-lez p1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2, v1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method
