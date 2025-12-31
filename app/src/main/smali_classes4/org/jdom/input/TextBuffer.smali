.class Lorg/jdom/input/TextBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: TextBuffer.java,v $ $Revision: 1.10 $ $Date: 2007/11/10 05:29:00 $ $Name:  $"


# instance fields
.field private array:[C

.field private arraySize:I

.field private prefixString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jdom/input/TextBuffer;->array:[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->array:[C

    array-length v1, v0

    if-le p1, v1, :cond_1

    move v2, v1

    :goto_0
    if-le p1, v2, :cond_0

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-array p1, v2, [C

    iput-object p1, p0, Lorg/jdom/input/TextBuffer;->array:[C

    iget v1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public append([CII)V
    .locals 2

    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lorg/jdom/input/TextBuffer;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->array:[C

    iget v1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    return-void
.end method

.method public isAllWhitespace()Z
    .locals 5

    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jdom/Verifier;->isXMLWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lorg/jdom/input/TextBuffer;->array:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Lorg/jdom/Verifier;->isXMLWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget v1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->array:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
