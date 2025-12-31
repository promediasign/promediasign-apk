.class abstract Lcom/zaxxer/hikari/proxy/ClosedConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSED_CONNECTION:Ljava/sql/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zaxxer/hikari/proxy/ClosedConnection;->getClosedConnection()Ljava/sql/Connection;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/hikari/proxy/ClosedConnection;->CLOSED_CONNECTION:Ljava/sql/Connection;

    return-void
.end method

.method private static getClosedConnection()Ljava/sql/Connection;
    .locals 5

    new-instance v0, Lcom/zaxxer/hikari/proxy/ClosedConnection$1;

    invoke-direct {v0}, Lcom/zaxxer/hikari/proxy/ClosedConnection$1;-><init>()V

    const-class v1, Ljava/sql/Connection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    return-object v0
.end method
