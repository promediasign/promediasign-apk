.class public Lorg/apache/xmlbeans/impl/common/ReaderInputStream;
.super Lorg/apache/xmlbeans/impl/common/PushedInputStream;
.source "SourceFile"


# static fields
.field public static defaultBufferSize:I = 0x800


# instance fields
.field private buf:[C

.field private reader:Ljava/io/Reader;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lorg/apache/xmlbeans/impl/common/ReaderInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/common/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/PushedInputStream;-><init>()V

    if-lez p3, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/ReaderInputStream;->reader:Ljava/io/Reader;

    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/PushedInputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/ReaderInputStream;->writer:Ljava/io/Writer;

    new-array p1, p3, [C

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/ReaderInputStream;->buf:[C

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public fill(I)V
    .locals 3

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/ReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/ReaderInputStream;->buf:[C

    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/ReaderInputStream;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/ReaderInputStream;->buf:[C

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/Writer;->write([CII)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/ReaderInputStream;->writer:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/PushedInputStream;->available()I

    move-result p1

    if-lez p1, :cond_0

    return-void
.end method
