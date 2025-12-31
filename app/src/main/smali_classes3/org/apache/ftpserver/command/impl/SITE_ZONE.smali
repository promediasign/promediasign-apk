.class public Lorg/apache/ftpserver/command/impl/SITE_ZONE;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# static fields
.field private static final TIMEZONE_FMT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/ftpserver/command/impl/SITE_ZONE;->TIMEZONE_FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    sget-object p2, Lorg/apache/ftpserver/command/impl/SITE_ZONE;->TIMEZONE_FMT:Ljava/text/SimpleDateFormat;

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v0, 0xc8

    invoke-direct {p3, v0, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void
.end method
