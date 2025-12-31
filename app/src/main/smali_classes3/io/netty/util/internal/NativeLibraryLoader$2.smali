.class final Lio/netty/util/internal/NativeLibraryLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/NativeLibraryLoader;->tryToLoadClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$classBinary:[B

.field final synthetic val$helper:Ljava/lang/Class;

.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/Class;[B)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/internal/NativeLibraryLoader$2;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lio/netty/util/internal/NativeLibraryLoader$2;->val$helper:Ljava/lang/Class;

    iput-object p3, p0, Lio/netty/util/internal/NativeLibraryLoader$2;->val$classBinary:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Class;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-class v5, Ljava/lang/ClassLoader;

    const-string v6, "defineClass"

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    const-class v8, [B

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v6, p0, Lio/netty/util/internal/NativeLibraryLoader$2;->val$loader:Ljava/lang/ClassLoader;

    iget-object v7, p0, Lio/netty/util/internal/NativeLibraryLoader$2;->val$helper:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lio/netty/util/internal/NativeLibraryLoader$2;->val$classBinary:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lio/netty/util/internal/NativeLibraryLoader$2;->val$classBinary:[B

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v4

    aput-object v8, v2, v3

    aput-object v9, v2, v1

    aput-object v10, v2, v0

    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Define class failed!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/util/internal/NativeLibraryLoader$2;->run()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
