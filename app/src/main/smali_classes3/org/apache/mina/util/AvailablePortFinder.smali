.class public Lorg/apache/mina/util/AvailablePortFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_PORT_NUMBER:I = 0xbfff

.field public static final MIN_PORT_NUMBER:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static available(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p0, v0, :cond_4

    .line 3
    .line 4
    const v1, 0xbfff

    .line 5
    .line 6
    .line 7
    if-gt p0, v1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/net/DatagramSocket;

    .line 19
    .line 20
    invoke-direct {v3, p0}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 27
    .line 28
    .line 29
    :try_start_3
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    return v0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    move-object v1, v3

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    nop

    .line 37
    move-object v1, v3

    .line 38
    goto :goto_1

    .line 39
    :catchall_1
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :catch_2
    nop

    .line 42
    goto :goto_1

    .line 43
    :catchall_2
    move-exception p0

    .line 44
    move-object v2, v1

    .line 45
    goto :goto_0

    .line 46
    :catch_3
    nop

    .line 47
    move-object v2, v1

    .line 48
    goto :goto_1

    .line 49
    :goto_0
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 52
    .line 53
    .line 54
    :cond_0
    if-eqz v2, :cond_1

    .line 55
    .line 56
    :try_start_4
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 57
    .line 58
    .line 59
    :catch_4
    :cond_1
    throw p0

    .line 60
    :goto_1
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 63
    .line 64
    .line 65
    :cond_2
    if-eqz v2, :cond_3

    .line 66
    .line 67
    :try_start_5
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 68
    .line 69
    .line 70
    :catch_5
    :cond_3
    const/4 p0, 0x0

    .line 71
    return p0

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    const-string v1, "Invalid start port: "

    .line 75
    .line 76
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method public static getAvailablePorts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    const v1, 0xbfff

    invoke-static {v0, v1}, Lorg/apache/mina/util/AvailablePortFinder;->getAvailablePorts(II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailablePorts(II)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    const v0, 0xbfff

    if-gt p1, v0, :cond_3

    if-gt p0, p1, :cond_3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    :goto_0
    if-gt p0, p1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, p0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    nop

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    nop

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_0
    throw p0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid port range: "

    const-string v2, " ~ "

    .line 2
    invoke-static {v1, p0, v2, p1}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNextAvailable()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/mina/util/AvailablePortFinder;->getNextAvailable(I)I

    move-result v0

    return v0
.end method

.method public static getNextAvailable(I)I
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const v0, 0xbfff

    if-gt p0, v0, :cond_2

    move v1, p0

    :goto_0
    if-gt v1, v0, :cond_1

    invoke-static {v1}, Lorg/apache/mina/util/AvailablePortFinder;->available(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Could not find an available port above "

    .line 2
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start port: "

    .line 4
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
