.class public Lorg/h2/server/web/DbStarter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# instance fields
.field private conn:Ljava/sql/Connection;

.field private server:Lorg/h2/tools/Server;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getParameter(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method


# virtual methods
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lorg/h2/server/web/DbStarter;->conn:Ljava/sql/Connection;

    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    const-string v0, "SHUTDOWN"

    invoke-interface {p1, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object p1, p0, Lorg/h2/server/web/DbStarter;->conn:Ljava/sql/Connection;

    invoke-interface {p1}, Ljava/sql/Connection;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lorg/h2/server/web/DbStarter;->server:Lorg/h2/tools/Server;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/h2/tools/Server;->stop()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/server/web/DbStarter;->server:Lorg/h2/tools/Server;

    :cond_0
    return-void
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .locals 6

    const-string v0, "sa"

    :try_start_0
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    invoke-virtual {p1}, Ljavax/servlet/ServletContextEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p1

    const-string v1, "db.url"

    const-string v2, "jdbc:h2:~/test"

    invoke-static {p1, v1, v2}, Lorg/h2/server/web/DbStarter;->getParameter(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "db.user"

    invoke-static {p1, v2, v0}, Lorg/h2/server/web/DbStarter;->getParameter(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "db.password"

    invoke-static {p1, v3, v0}, Lorg/h2/server/web/DbStarter;->getParameter(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "db.tcpServer"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lorg/h2/server/web/DbStarter;->getParameter(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0x20

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/tools/Server;->createTcpServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/server/web/DbStarter;->server:Lorg/h2/tools/Server;

    invoke-virtual {v3}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v1, v2, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/DbStarter;->conn:Ljava/sql/Connection;

    const-string v1, "connection"

    invoke-interface {p1, v1, v0}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/DbStarter;->conn:Ljava/sql/Connection;

    return-object v0
.end method
