.class final Lio/netty/util/internal/NativeLibraryLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/NativeLibraryLoader;->loadLibraryByHelper(Ljava/lang/Class;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$absolute:Z

.field final synthetic val$helper:Ljava/lang/Class;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/internal/NativeLibraryLoader$1;->val$helper:Ljava/lang/Class;

    iput-object p2, p0, Lio/netty/util/internal/NativeLibraryLoader$1;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lio/netty/util/internal/NativeLibraryLoader$1;->val$absolute:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lio/netty/util/internal/NativeLibraryLoader$1;->val$helper:Ljava/lang/Class;

    const-string v4, "loadLibrary"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v4, p0, Lio/netty/util/internal/NativeLibraryLoader$1;->val$name:Ljava/lang/String;

    iget-boolean v5, p0, Lio/netty/util/internal/NativeLibraryLoader$1;->val$absolute:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    aput-object v5, v1, v2

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v0
.end method
