.class final Lorg/h2/util/SourceCompiler$GroovyCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/SourceCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroovyCompiler"
.end annotation


# static fields
.field private static final INIT_FAIL_EXCEPTION:Ljava/lang/Throwable;

.field private static final LOADER:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "org.codehaus.groovy.control.customizers.ImportCustomizer"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lorg/h2/util/Utils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "java.sql.Connection"

    const-string v6, "java.sql.Types"

    const-string v7, "java.sql.ResultSet"

    const-string v8, "groovy.sql.Sql"

    const-string v9, "org.h2.tools.SimpleResultSet"

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "addImports"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-static {v0, v6, v7}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string v0, "org.codehaus.groovy.control.CompilerConfiguration"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lorg/h2/util/Utils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "addCompilationCustomizers"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v0, v5, v6}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Lorg/h2/util/SourceCompiler$GroovyCompiler;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "groovy.lang.GroovyClassLoader"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Lorg/h2/util/Utils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    sput-object v3, Lorg/h2/util/SourceCompiler$GroovyCompiler;->LOADER:Ljava/lang/Object;

    sput-object v0, Lorg/h2/util/SourceCompiler$GroovyCompiler;->INIT_FAIL_EXCEPTION:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lorg/h2/util/SourceCompiler$GroovyCompiler;->LOADER:Ljava/lang/Object;

    if-eqz v2, :cond_0

    :try_start_0
    const-string v3, "groovy.lang.GroovyCodeSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".groovy"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object p1, v4, v0

    const-string p0, "UTF-8"

    const/4 p1, 0x2

    aput-object p0, v4, p1

    invoke-static {v3, v4}, Lorg/h2/util/Utils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "setCachable"

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-static {p0, p1, v3}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "parseClass"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v2, p1, v0}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Compile fail: no Groovy jar in the classpath"

    sget-object v0, Lorg/h2/util/SourceCompiler$GroovyCompiler;->INIT_FAIL_EXCEPTION:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
