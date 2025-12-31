.class public Lorg/apache/ftpserver/util/BaseProperties;
.super Ljava/util/Properties;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4d56033860a65171L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, " not found"

    .line 1
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, "BaseProperties.getClass()"

    invoke-direct {v0, v1, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, " not found"

    .line 1
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public getDate(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v0, "BaseProperties.getdate()"

    invoke-direct {p2, v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p2, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v0, " not found"

    .line 1
    invoke-static {p1, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getDate(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/util/BaseProperties;->getDate(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p3
.end method

.method public getDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v2, "Date format was incorrect: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, " not found"

    .line 1
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDateFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, "BaseProperties.getDouble()"

    invoke-direct {v0, v1, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, " not found"

    .line 1
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p2
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, " not found"

    .line 1
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public getInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " not found"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v2, "Host "

    .line 1
    invoke-static {v2, v0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p1, v0}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    .line 3
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, "BaseProperties.getInteger()"

    invoke-direct {v0, v1, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, " not found"

    .line 1
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, "BaseProperties.getLong()"

    invoke-direct {v0, v1, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, " not found"

    .line 1
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, " not found"

    .line 1
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, " not found"

    .line 1
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTimeZone(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public setInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 0

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;D)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;F)V
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;J)V
    .locals 0

    .line 4
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 0

    .line 7
    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/util/Date;Ljava/text/DateFormat;)V
    .locals 0

    .line 8
    invoke-virtual {p3, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 0

    .line 9
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .locals 0

    .line 10
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
