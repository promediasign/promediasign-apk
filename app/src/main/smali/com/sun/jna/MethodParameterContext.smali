.class public Lcom/sun/jna/MethodParameterContext;
.super Lcom/sun/jna/FunctionParameterContext;
.source "SourceFile"


# instance fields
.field private method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/sun/jna/Function;[Ljava/lang/Object;ILjava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/jna/FunctionParameterContext;-><init>(Lcom/sun/jna/Function;[Ljava/lang/Object;I)V

    iput-object p4, p0, Lcom/sun/jna/MethodParameterContext;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/MethodParameterContext;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method
