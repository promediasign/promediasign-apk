.class public Lorg/apache/ftpserver/impl/DefaultFtpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FtpRequest;


# instance fields
.field private argument:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private line:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->parse(Ljava/lang/String;)V

    return-void
.end method

.method private parse(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->command:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->argument:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->argument:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->argument:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->command:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->command:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->command:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x58

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->command:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->command:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public getArgument()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->argument:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestLine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    return-object v0
.end method

.method public hasArgument()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->getRequestLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
