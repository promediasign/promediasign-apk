.class final Lcom/sun/jna/Library$Handler$FunctionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Library$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FunctionInfo"
.end annotation


# instance fields
.field final function:Lcom/sun/jna/Function;

.field final handler:Ljava/lang/reflect/InvocationHandler;

.field final isVarArgs:Z

.field final methodHandle:Ljava/lang/Object;

.field final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->handler:Ljava/lang/reflect/InvocationHandler;

    iput-object v0, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->function:Lcom/sun/jna/Function;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->isVarArgs:Z

    iput-object v0, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->options:Ljava/util/Map;

    iput-object v0, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->parameterTypes:[Ljava/lang/Class;

    iput-object p1, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->methodHandle:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/InvocationHandler;Lcom/sun/jna/Function;[Ljava/lang/Class;ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/InvocationHandler;",
            "Lcom/sun/jna/Function;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->handler:Ljava/lang/reflect/InvocationHandler;

    iput-object p2, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->function:Lcom/sun/jna/Function;

    iput-boolean p4, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->isVarArgs:Z

    iput-object p5, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->options:Ljava/util/Map;

    iput-object p3, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->parameterTypes:[Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/jna/Library$Handler$FunctionInfo;->methodHandle:Ljava/lang/Object;

    return-void
.end method
