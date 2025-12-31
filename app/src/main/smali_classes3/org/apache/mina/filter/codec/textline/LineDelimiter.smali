.class public Lorg/apache/mina/filter/codec/textline/LineDelimiter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final CRLF:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final DEFAULT:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final MAC:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final NUL:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final UNIX:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field public static final WINDOWS:Lorg/apache/mina/filter/codec/textline/LineDelimiter;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->DEFAULT:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    const-string v1, "\r\n"

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->CRLF:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    new-instance v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->UNIX:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    sput-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->WINDOWS:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    const-string v1, "\r"

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->MAC:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    const-string v1, "\u0000"

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->NUL:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delimiter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "delimiter: auto"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delimiter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, " 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
