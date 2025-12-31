.class public abstract Lcom/fasterxml/aalto/out/WName;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _localName:Ljava/lang/String;

.field protected final _prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    iput-object p1, p0, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract appendBytes([BI)I
.end method

.method public abstract appendChars([CI)I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    instance-of v1, p1, Lcom/fasterxml/aalto/out/WName;

    if-nez v1, :cond_1

    return v3

    :cond_1
    check-cast p1, Lcom/fasterxml/aalto/out/WName;

    iget-object v1, p1, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    iget-object p1, p1, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    return v3
.end method

.method public final hasName(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hasName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    const/4 v1, 0x0

    if-ne v0, p2, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object p2, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    if-eqz p1, :cond_5

    return v1

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    iget-object p1, p0, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final hasPrefix()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public abstract serializedLength()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fasterxml/aalto/out/WName;->_prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/WName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeBytes(Ljava/io/OutputStream;)V
.end method

.method public abstract writeChars(Ljava/io/Writer;)V
.end method
