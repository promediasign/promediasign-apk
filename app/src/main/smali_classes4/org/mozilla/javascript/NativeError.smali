.class final Lorg/mozilla/javascript/NativeError;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeError$ProtoProps;
    }
.end annotation


# static fields
.field private static final ConstructorId_captureStackTrace:I = -0x1

.field public static final DEFAULT_STACK_LIMIT:I = -0x1

.field private static final ERROR_DELEGATE_GET_STACK:Ljava/lang/reflect/Method;

.field private static final ERROR_DELEGATE_SET_STACK:Ljava/lang/reflect/Method;

.field private static final ERROR_TAG:Ljava/lang/Object;

.field private static final Id_constructor:I = 0x1

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final MAX_PROTOTYPE_ID:I = 0x3

.field private static final STACK_HIDE_KEY:Ljava/lang/String; = "_stackHide"

.field private static final serialVersionUID:J = -0x4a15dade41b63183L


# instance fields
.field private stackProvider:Lorg/mozilla/javascript/RhinoException;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v2, Lorg/mozilla/javascript/Scriptable;

    const-class v3, Lorg/mozilla/javascript/NativeError;

    const-string v4, "Error"

    sput-object v4, Lorg/mozilla/javascript/NativeError;->ERROR_TAG:Ljava/lang/Object;

    :try_start_0
    const-string v4, "getStackDelegated"

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_GET_STACK:Ljava/lang/reflect/Method;

    const-string v4, "setStackDelegated"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v2, v5, v0

    const-class v0, Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_SET_STACK:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method private callPrepareStack(Lorg/mozilla/javascript/Function;[Lorg/mozilla/javascript/ScriptStackElement;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    array-length v2, p2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    const-string v5, "CallSite"

    invoke-virtual {v1, p0, v5}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/NativeCallSite;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/NativeCallSite;->setElement(Lorg/mozilla/javascript/ScriptStackElement;)V

    aput-object v5, v2, v4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0, v2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p2, v2, v0

    invoke-interface {p1, v1, p1, p0, v2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 5

    new-instance v0, Lorg/mozilla/javascript/NativeError;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeError;-><init>()V

    const-string v1, "Error"

    const-string v2, "name"

    invoke-static {v0, v2, v1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "fileName"

    invoke-static {v0, v4, v3}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lineNumber"

    invoke-static {v0, v4, v3}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/IdScriptableObject;->setAttributes(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v3}, Lorg/mozilla/javascript/IdScriptableObject;->setAttributes(Ljava/lang/String;I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/NativeCallSite;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    return-void
.end method

.method private static js_captureStackTrace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {p0, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    array-length v0, p2

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    aget-object p2, p2, v2

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    check-cast p2, Lorg/mozilla/javascript/Function;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "Error"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/mozilla/javascript/NativeError;

    new-instance p0, Lorg/mozilla/javascript/EvaluatorException;

    const-string p1, "[object Object]"

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lorg/mozilla/javascript/NativeError;->setStackProvider(Lorg/mozilla/javascript/RhinoException;)V

    if-eqz p2, :cond_1

    const-string p0, "name"

    invoke-interface {p2, p0, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "_stackHide"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v4, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_GET_STACK:Ljava/lang/reflect/Method;

    sget-object v5, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_SET_STACK:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    const-string v2, "stack"

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    return-void
.end method

.method private static js_toSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;
    .locals 5

    const-string v0, "name"

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "message"

    invoke-static {p2, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fileName"

    invoke-static {p2, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "lineNumber"

    invoke-static {p2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(new "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v4, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v4, :cond_1

    if-ne v2, v4, :cond_1

    if-eq p2, v4, :cond_5

    :cond_1
    const-string v0, ""

    if-ne v1, v4, :cond_2

    move-object v1, v0

    :cond_2
    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_3

    if-eq p2, v4, :cond_5

    :cond_3
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_4

    move-object v2, v0

    :cond_4
    invoke-static {p0, p1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq p2, v4, :cond_5

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double p0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string p0, "))"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_toString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const-string v0, "Error"

    .line 22
    .line 23
    :goto_1
    const-string v2, "message"

    .line 24
    .line 25
    invoke-static {p0, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eq p0, v1, :cond_3

    .line 30
    .line 31
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 32
    .line 33
    if-ne p0, v1, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto :goto_3

    .line 41
    :cond_3
    :goto_2
    const-string p0, ""

    .line 42
    .line 43
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_5

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_5
    const-string v1, ": "

    .line 66
    .line 67
    invoke-static {v0, v1, p0}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public static make(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeError;
    .locals 2

    const-string p0, "prototype"

    invoke-virtual {p2, p0, p2}, Lorg/mozilla/javascript/IdScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    new-instance p2, Lorg/mozilla/javascript/NativeError;

    invoke-direct {p2}, Lorg/mozilla/javascript/NativeError;-><init>()V

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    array-length p0, p3

    const/4 p1, 0x1

    if-lt p0, p1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const-string v1, "message"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    const-string v1, "fileName"

    aget-object p1, p3, p1

    invoke-static {p2, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x3

    if-lt p0, p1, :cond_1

    aget-object p0, p3, v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "lineNumber"

    invoke-static {p2, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object p2
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/NativeError;->ERROR_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeError;->js_toSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lorg/mozilla/javascript/NativeError;->js_toString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p2, p3, p1, p5}, Lorg/mozilla/javascript/NativeError;->make(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeError;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2, p4, p5}, Lorg/mozilla/javascript/NativeError;->js_captureStackTrace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method public fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 12

    sget-object v2, Lorg/mozilla/javascript/NativeError;->ERROR_TAG:Ljava/lang/Object;

    const-string v4, "captureStackTrace"

    const/4 v5, 0x2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    new-instance v0, Lorg/mozilla/javascript/NativeError$ProtoProps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeError$ProtoProps;-><init>(Lorg/mozilla/javascript/NativeError$1;)V

    const-string v1, "_ErrorPrototypeProps"

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lorg/mozilla/javascript/NativeError$ProtoProps;->GET_STACK_LIMIT:Ljava/lang/reflect/Method;

    sget-object v10, Lorg/mozilla/javascript/NativeError$ProtoProps;->SET_STACK_LIMIT:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    const-string v7, "stackTraceLimit"

    move-object v6, p1

    move-object v8, v0

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    sget-object v9, Lorg/mozilla/javascript/NativeError$ProtoProps;->GET_PREPARE_STACK:Ljava/lang/reflect/Method;

    sget-object v10, Lorg/mozilla/javascript/NativeError$ProtoProps;->SET_PREPARE_STACK:Ljava/lang/reflect/Method;

    const-string v7, "prepareStackTrace"

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_0

    const-string v1, "toSource"

    goto :goto_0

    :cond_0
    const/16 v0, 0x74

    if-ne v1, v0, :cond_2

    const-string v1, "toString"

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    const-string v1, "constructor"

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    return v2
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Error"

    return-object v0
.end method

.method public getStackDelegated(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    if-nez v0, :cond_0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeError;

    const-string v1, "_ErrorPrototypeProps"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeError$ProtoProps;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeError$ProtoProps;->getStackTraceLimit()I

    move-result v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeError$ProtoProps;->getPrepareStackTrace()Lorg/mozilla/javascript/Function;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    const-string v2, "_stackHide"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    invoke-virtual {v3, v1, v2}, Lorg/mozilla/javascript/RhinoException;->getScriptStack(ILjava/lang/String;)[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->details()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mozilla/javascript/RhinoException;->formatStackTrace([Lorg/mozilla/javascript/ScriptStackElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/NativeError;->callPrepareStack(Lorg/mozilla/javascript/Function;[Lorg/mozilla/javascript/ScriptStackElement;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/NativeError;->setStackDelegated(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string v0, "toSource"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "toString"

    goto :goto_0

    :cond_2
    const-string v1, "constructor"

    move-object v0, v1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeError;->ERROR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method public setStackDelegated(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "stack"

    invoke-interface {p1, v0}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    invoke-interface {p1, v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public setStackProvider(Lorg/mozilla/javascript/RhinoException;)V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    sget-object v4, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_GET_STACK:Ljava/lang/reflect/Method;

    sget-object v5, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_SET_STACK:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    const-string v2, "stack"

    move-object v1, p0

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/mozilla/javascript/NativeError;->js_toString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
