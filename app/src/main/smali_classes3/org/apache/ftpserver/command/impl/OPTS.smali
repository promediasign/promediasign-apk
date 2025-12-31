.class public Lorg/apache/ftpserver/command/impl/OPTS;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# static fields
.field private static final COMMAND_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/ftpserver/command/impl/OPTS;->COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/OPTS_MLST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/OPTS_MLST;-><init>()V

    const-string v2, "OPTS_MLST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/OPTS_UTF8;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/OPTS_UTF8;-><init>()V

    const-string v2, "OPTS_UTF8"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/OPTS;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/OPTS;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v5, "OPTS"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v4, 0x1f5

    .line 14
    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p3

    .line 17
    move-object v3, p2

    .line 18
    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/16 v1, 0x20

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, -0x1

    .line 33
    if-eq v1, v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v0, "OPTS_"

    .line 45
    .line 46
    invoke-static {v0, v6}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lorg/apache/ftpserver/command/impl/OPTS;->COMMAND_MAP:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lorg/apache/ftpserver/command/Command;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ftpserver/command/Command;->execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 67
    .line 68
    .line 69
    const-string v5, "OPTS.not.implemented"

    .line 70
    .line 71
    const/16 v4, 0x1f6

    .line 72
    .line 73
    move-object v1, p1

    .line 74
    move-object v2, p3

    .line 75
    move-object v3, p2

    .line 76
    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :goto_0
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/OPTS;->LOG:Lorg/slf4j/Logger;

    .line 85
    .line 86
    const-string v2, "OPTS.execute()"

    .line 87
    .line 88
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 92
    .line 93
    .line 94
    const-string v7, "OPTS"

    .line 95
    .line 96
    const/4 v8, 0x0

    .line 97
    const/16 v6, 0x1f4

    .line 98
    .line 99
    move-object v3, p1

    .line 100
    move-object v4, p3

    .line 101
    move-object v5, p2

    .line 102
    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void
.end method
