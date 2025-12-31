.class Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/jna/CallbackProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/CallbackReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultCallbackProxy"
.end annotation


# instance fields
.field private final callbackMethod:Ljava/lang/reflect/Method;

.field private final encoding:Ljava/lang/String;

.field private final fromNative:[Lcom/sun/jna/FromNativeConverter;

.field final synthetic this$0:Lcom/sun/jna/CallbackReference;

.field private toNative:Lcom/sun/jna/ToNativeConverter;


# direct methods
.method public constructor <init>(Lcom/sun/jna/CallbackReference;Ljava/lang/reflect/Method;Lcom/sun/jna/TypeMapper;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->this$0:Lcom/sun/jna/CallbackReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->encoding:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p4

    array-length v0, p1

    new-array v0, v0, [Lcom/sun/jna/FromNativeConverter;

    iput-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p4}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->toNative:Lcom/sun/jna/ToNativeConverter;

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3, p4}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object p4

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p4, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    array-length v1, v1

    if-ge p4, v1, :cond_4

    aget-object v1, p1, p4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    new-instance v2, Lcom/sun/jna/NativeMappedConverter;

    aget-object v3, p1, p4

    invoke-direct {v2, v3}, Lcom/sun/jna/NativeMappedConverter;-><init>(Ljava/lang/Class;)V

    aput-object v2, v1, p4

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    aget-object v2, p1, p4

    invoke-interface {p3, v2}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    move-result-object v2

    aput-object v2, v1, p4

    :cond_3
    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Callback method is inaccessible, make sure the interface is public: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_4
    return-void
.end method

.method private convertArgument(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/sun/jna/Pointer;

    if-eqz v0, :cond_6

    const-class v0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-ne p2, v0, :cond_0

    check-cast p1, Lcom/sun/jna/Pointer;

    iget-object p2, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, p2}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_0
    const-class v0, Lcom/sun/jna/WString;

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/sun/jna/WString;

    check-cast p1, Lcom/sun/jna/Pointer;

    invoke-virtual {p1, v1, v2}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p1, p2

    goto/16 :goto_2

    :cond_1
    const-class v0, [Ljava/lang/String;

    if-ne p2, v0, :cond_2

    check-cast p1, Lcom/sun/jna/Pointer;

    iget-object p2, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, p2}, Lcom/sun/jna/Pointer;->getStringArray(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_2
    const-class v0, [Lcom/sun/jna/WString;

    if-ne p2, v0, :cond_3

    check-cast p1, Lcom/sun/jna/Pointer;

    invoke-virtual {p1, v1, v2}, Lcom/sun/jna/Pointer;->getWideStringArray(J)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-class v0, Lcom/sun/jna/Callback;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Lcom/sun/jna/Pointer;

    invoke-static {p2, p1}, Lcom/sun/jna/CallbackReference;->getCallback(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Callback;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-class v0, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;)Lcom/sun/jna/Structure;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/jna/Structure;->size()I

    move-result v6

    new-array v7, v6, [B

    move-object v0, p1

    check-cast v0, Lcom/sun/jna/Pointer;

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    move-object v3, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[BII)V

    invoke-virtual {p2}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[BII)V

    invoke-virtual {p2}, Lcom/sun/jna/Structure;->read()V

    goto :goto_0

    :cond_5
    check-cast p1, Lcom/sun/jna/Pointer;

    invoke-static {p2, p1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    goto :goto_2

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, p2, :cond_7

    const-class v0, Ljava/lang/Boolean;

    if-ne v0, p2, :cond_9

    :cond_7
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_9

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/sun/jna/Function;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_9
    :goto_2
    return-object p1
.end method

.method private convertResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->toNative:Lcom/sun/jna/ToNativeConverter;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sun/jna/CallbackResultContext;

    iget-object v2, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-direct {v1, v2}, Lcom/sun/jna/CallbackResultContext;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v0, p1, v1}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/jna/Structure;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    check-cast p1, Lcom/sun/jna/Structure;

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    goto :goto_4

    :cond_4
    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/sun/jna/WString;

    if-eq v0, v1, :cond_a

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    const-class v1, [Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const-class v2, [Lcom/sun/jna/WString;

    if-ne v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const-class v1, Lcom/sun/jna/Callback;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    check-cast p1, Lcom/sun/jna/Callback;

    invoke-static {p1}, Lcom/sun/jna/CallbackReference;->getFunctionPointer(Lcom/sun/jna/Callback;)Lcom/sun/jna/Pointer;

    move-result-object p1

    :cond_7
    return-object p1

    :cond_8
    :goto_0
    if-ne v0, v1, :cond_9

    new-instance v0, Lcom/sun/jna/StringArray;

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/sun/jna/StringArray;

    move-object v1, p1

    check-cast v1, [Lcom/sun/jna/WString;

    invoke-direct {v0, v1}, Lcom/sun/jna/StringArray;-><init>([Lcom/sun/jna/WString;)V

    :goto_1
    sget-object v1, Lcom/sun/jna/CallbackReference;->allocations:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_a
    :goto_2
    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_3
    invoke-static {p1, v0}, Lcom/sun/jna/CallbackReference;->access$100(Ljava/lang/Object;Z)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/sun/jna/Function;->INTEGER_TRUE:Ljava/lang/Integer;

    goto :goto_5

    :cond_d
    sget-object p1, Lcom/sun/jna/Function;->INTEGER_FALSE:Ljava/lang/Integer;

    :goto_5
    return-object p1
.end method

.method private invokeCallback([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, p1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    aget-object v5, v0, v4

    aget-object v6, p1, v4

    iget-object v7, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    aget-object v7, v7, v4

    if-eqz v7, :cond_0

    new-instance v7, Lcom/sun/jna/CallbackParameterContext;

    iget-object v8, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-direct {v7, v5, v8, p1, v4}, Lcom/sun/jna/CallbackParameterContext;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;I)V

    iget-object v5, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    aget-object v5, v5, v4

    invoke-interface {v5, v6, v7}, Lcom/sun/jna/FromNativeConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_1

    :cond_0
    invoke-direct {p0, v6, v5}, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->convertArgument(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->getCallback()Lcom/sun/jna/Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->convertResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :goto_2
    invoke-static {}, Lcom/sun/jna/Native;->getCallbackExceptionHandler()Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    :goto_3
    invoke-interface {v4, p1, v0}, Lcom/sun/jna/Callback$UncaughtExceptionHandler;->uncaughtException(Lcom/sun/jna/Callback;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    invoke-static {}, Lcom/sun/jna/Native;->getCallbackExceptionHandler()Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    move-result-object v4

    goto :goto_3

    :cond_2
    :goto_5
    const/4 p1, 0x0

    :goto_6
    if-ge v3, v1, :cond_4

    aget-object v0, v2, v3

    instance-of v4, v0, Lcom/sun/jna/Structure;

    if-eqz v4, :cond_3

    instance-of v4, v0, Lcom/sun/jna/Structure$ByValue;

    if-nez v4, :cond_3

    check-cast v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0}, Lcom/sun/jna/Structure;->autoWrite()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_4
    return-object p1
.end method


# virtual methods
.method public callback([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->invokeCallback([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/sun/jna/Native;->getCallbackExceptionHandler()Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->getCallback()Lcom/sun/jna/Callback;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sun/jna/Callback$UncaughtExceptionHandler;->uncaughtException(Lcom/sun/jna/Callback;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallback()Lcom/sun/jna/Callback;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->this$0:Lcom/sun/jna/CallbackReference;

    invoke-static {v0}, Lcom/sun/jna/CallbackReference;->access$000(Lcom/sun/jna/CallbackReference;)Lcom/sun/jna/Callback;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
