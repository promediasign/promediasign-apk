.class public Lch/qos/logback/core/recovery/ResilientSyslogOutputStream;
.super Lch/qos/logback/core/recovery/ResilientOutputStreamBase;
.source "SourceFile"


# instance fields
.field port:I

.field syslogHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/recovery/ResilientOutputStreamBase;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/recovery/ResilientSyslogOutputStream;->syslogHost:Ljava/lang/String;

    iput p2, p0, Lch/qos/logback/core/recovery/ResilientSyslogOutputStream;->port:I

    new-instance v0, Lch/qos/logback/core/net/SyslogOutputStream;

    invoke-direct {v0, p1, p2}, Lch/qos/logback/core/net/SyslogOutputStream;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lch/qos/logback/core/recovery/ResilientOutputStreamBase;->os:Ljava/io/OutputStream;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lch/qos/logback/core/recovery/ResilientOutputStreamBase;->presumedClean:Z

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "syslog ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lch/qos/logback/core/recovery/ResilientSyslogOutputStream;->syslogHost:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lch/qos/logback/core/recovery/ResilientSyslogOutputStream;->port:I

    .line 19
    .line 20
    const-string v2, "]"

    .line 21
    .line 22
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public openNewOutputStream()Ljava/io/OutputStream;
    .locals 3

    new-instance v0, Lch/qos/logback/core/net/SyslogOutputStream;

    iget-object v1, p0, Lch/qos/logback/core/recovery/ResilientSyslogOutputStream;->syslogHost:Ljava/lang/String;

    iget v2, p0, Lch/qos/logback/core/recovery/ResilientSyslogOutputStream;->port:I

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/net/SyslogOutputStream;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c.q.l.c.recovery.ResilientSyslogOutputStream@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
