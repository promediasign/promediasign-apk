.class public Lorg/apache/ftpserver/command/impl/listing/ListArgument;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private file:Ljava/lang/String;

.field private options:[C

.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->file:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->pattern:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->options:[C

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->options:[C

    :goto_0
    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->options:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hasOption(C)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->options:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-char v2, v2, v1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
