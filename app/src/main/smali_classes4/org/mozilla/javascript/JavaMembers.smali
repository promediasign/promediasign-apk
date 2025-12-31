.class Lorg/mozilla/javascript/JavaMembers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    }
.end annotation


# instance fields
.field private cl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field ctors:Lorg/mozilla/javascript/NativeJavaMethod;

.field private fieldAndMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/FieldAndMethods;",
            ">;"
        }
    .end annotation
.end field

.field private members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private staticFieldAndMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/FieldAndMethods;",
            ">;"
        }
    .end annotation
.end field

.field private staticMembers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/JavaMembers;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getClassShutter()Lorg/mozilla/javascript/ClassShutter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "msg.access.prohibited"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    iput-object p2, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    const/16 p2, 0xd

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lorg/mozilla/javascript/JavaMembers;->reflect(Lorg/mozilla/javascript/Scriptable;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-void

    :goto_1
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    throw p1
.end method

.method private static discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lorg/mozilla/javascript/JavaMembers$MethodSignature;",
            "Ljava/lang/reflect/Method;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p3, :cond_a

    :cond_0
    if-nez p2, :cond_3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_c

    aget-object v4, v0, v3

    new-instance v5, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    invoke-direct {v5, v4}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p0, :cond_c

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz p3, :cond_6

    :cond_4
    new-instance v5, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    invoke-direct {v5, v4}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz p3, :cond_5

    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_5
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    invoke-static {v4, p1, p2, p3}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_c

    aget-object v4, v0, v3

    new-instance v5, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    invoke-direct {v5, v4}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not discover accessible methods of class "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to lack of privileges, attemping superclasses/interfaces."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_b

    aget-object v3, v0, v1

    invoke-static {v3, p1, p2, p3}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    :cond_c
    return-void
.end method

.method private static discoverAccessibleMethods(Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;ZZ)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/reflect/Method;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private static extractGetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    iget-object v3, v2, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v3, v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_2

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractSetMethod(Ljava/lang/Class;[Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/mozilla/javascript/MemberBox;",
            "Z)",
            "Lorg/mozilla/javascript/MemberBox;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x2

    if-gt v1, v2, :cond_5

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    aget-object v6, p1, v5

    if-eqz p2, :cond_0

    invoke-virtual {v6}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    iget-object v7, v6, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v8, v7

    if-ne v8, v0, :cond_3

    if-ne v1, v0, :cond_1

    aget-object v7, v7, v4

    if-ne v7, p0, :cond_3

    return-object v6

    :cond_1
    if-eq v1, v2, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    aget-object v7, v7, v4

    invoke-virtual {v7, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractSetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;
    .locals 5

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private findExplicitFunction(Ljava/lang/String;Z)Lorg/mozilla/javascript/MemberBox;
    .locals 9

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    iget-object p2, p0, Lorg/mozilla/javascript/JavaMembers;->ctors:Lorg/mozilla/javascript/NativeJavaMethod;

    iget-object p2, p2, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez p2, :cond_3

    if-nez v2, :cond_3

    iget-object p2, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_3
    instance-of p2, v2, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz p2, :cond_4

    check-cast v2, Lorg/mozilla/javascript/NativeJavaMethod;

    iget-object p2, v2, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    goto :goto_1

    :cond_4
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_6

    array-length v2, p2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_6

    aget-object v5, p2, v4

    iget-object v6, v5, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v6}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v0, v6, v3, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_5

    return-object v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return-object v1
.end method

.method private static findGetter(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/MemberBox;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/javascript/MemberBox;"
        }
    .end annotation

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/mozilla/javascript/NativeJavaMethod;

    iget-object p1, p1, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    invoke-static {p1, p0}, Lorg/mozilla/javascript/JavaMembers;->extractGetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAccessibleConstructors(Z)[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not access constructor  of class "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to lack of privileges."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method

.method private getAccessibleFields(ZZ)[Ljava/lang/reflect/Field;
    .locals 7

    if-nez p2, :cond_0

    if-eqz p1, :cond_6

    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    if-nez p2, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/reflect/Field;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_6
    iget-object p1, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

.method private getExplicitFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3

    if-eqz p4, :cond_0

    iget-object p3, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_0
    invoke-direct {p0, p2, p4}, Lorg/mozilla/javascript/JavaMembers;->findExplicitFunction(Ljava/lang/String;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p4}, Lorg/mozilla/javascript/MemberBox;->isCtor()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/mozilla/javascript/NativeJavaConstructor;

    invoke-direct {v0, p4}, Lorg/mozilla/javascript/NativeJavaConstructor;-><init>(Lorg/mozilla/javascript/MemberBox;)V

    :goto_1
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {p4}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/mozilla/javascript/NativeJavaMethod;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    new-instance v0, Lorg/mozilla/javascript/NativeJavaMethod;

    invoke-direct {v0, p4, p2}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static javaSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :cond_1
    const/4 v1, 0x1

    .line 14
    add-int/2addr v0, v1

    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v2, "[]"

    .line 30
    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    mul-int/lit8 v3, v0, 0x2

    .line 43
    .line 44
    add-int/2addr v3, v1

    .line 45
    invoke-static {v3, p0}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_0
    if-eqz v0, :cond_3

    .line 50
    .line 51
    add-int/lit8 v0, v0, -0x1

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, "()"

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_2

    if-eqz v2, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lookupClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/mozilla/javascript/JavaMembers;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lorg/mozilla/javascript/JavaMembers;"
        }
    .end annotation

    invoke-static {p0}, Lorg/mozilla/javascript/ClassCache;->get(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ClassCache;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->getClassCacheMap()Ljava/util/Map;

    move-result-object v0

    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/JavaMembers;

    if-eqz v2, :cond_1

    if-eq v1, p1, :cond_0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2

    :cond_1
    :try_start_0
    new-instance v2, Lorg/mozilla/javascript/JavaMembers;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->getAssociatedScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-direct {v2, v3, v1, p3}, Lorg/mozilla/javascript/JavaMembers;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->isCachingEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v1, p1, :cond_2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2

    :catch_0
    move-exception v2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    goto :goto_1

    :cond_4
    throw v2

    :cond_5
    :goto_1
    move-object v1, v3

    goto :goto_0
.end method

.method private reflect(Lorg/mozilla/javascript/Scriptable;ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v4, v2, v3}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    array-length v5, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    :goto_0
    if-ge v7, v5, :cond_4

    .line 19
    .line 20
    aget-object v8, v4, v7

    .line 21
    .line 22
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    if-eqz v9, :cond_0

    .line 31
    .line 32
    iget-object v9, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v9, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    if-nez v11, :cond_1

    .line 46
    .line 47
    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    instance-of v12, v11, Lorg/mozilla/javascript/ObjArray;

    .line 52
    .line 53
    if-eqz v12, :cond_2

    .line 54
    .line 55
    check-cast v11, Lorg/mozilla/javascript/ObjArray;

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    instance-of v12, v11, Ljava/lang/reflect/Method;

    .line 59
    .line 60
    if-nez v12, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 63
    .line 64
    .line 65
    :cond_3
    new-instance v12, Lorg/mozilla/javascript/ObjArray;

    .line 66
    .line 67
    invoke-direct {v12}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v12, v11}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-object v11, v12

    .line 77
    :goto_2
    invoke-virtual {v11, v8}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 v4, 0x0

    .line 84
    :goto_4
    const/4 v5, 0x2

    .line 85
    const/4 v7, 0x1

    .line 86
    if-eq v4, v5, :cond_b

    .line 87
    .line 88
    if-nez v4, :cond_5

    .line 89
    .line 90
    iget-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_5
    iget-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    .line 94
    .line 95
    :goto_5
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-eqz v10, :cond_a

    .line 108
    .line 109
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    check-cast v10, Ljava/util/Map$Entry;

    .line 114
    .line 115
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    instance-of v12, v11, Ljava/lang/reflect/Method;

    .line 120
    .line 121
    if-eqz v12, :cond_6

    .line 122
    .line 123
    new-array v12, v7, [Lorg/mozilla/javascript/MemberBox;

    .line 124
    .line 125
    new-instance v13, Lorg/mozilla/javascript/MemberBox;

    .line 126
    .line 127
    check-cast v11, Ljava/lang/reflect/Method;

    .line 128
    .line 129
    invoke-direct {v13, v11}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    .line 130
    .line 131
    .line 132
    aput-object v13, v12, v6

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_6
    check-cast v11, Lorg/mozilla/javascript/ObjArray;

    .line 136
    .line 137
    invoke-virtual {v11}, Lorg/mozilla/javascript/ObjArray;->size()I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    if-ge v12, v5, :cond_7

    .line 142
    .line 143
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 144
    .line 145
    .line 146
    :cond_7
    new-array v13, v12, [Lorg/mozilla/javascript/MemberBox;

    .line 147
    .line 148
    const/4 v14, 0x0

    .line 149
    :goto_7
    if-eq v14, v12, :cond_8

    .line 150
    .line 151
    invoke-virtual {v11, v14}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v15

    .line 155
    check-cast v15, Ljava/lang/reflect/Method;

    .line 156
    .line 157
    new-instance v7, Lorg/mozilla/javascript/MemberBox;

    .line 158
    .line 159
    invoke-direct {v7, v15}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    .line 160
    .line 161
    .line 162
    aput-object v7, v13, v14

    .line 163
    .line 164
    add-int/lit8 v14, v14, 0x1

    .line 165
    .line 166
    const/4 v7, 0x1

    .line 167
    goto :goto_7

    .line 168
    :cond_8
    move-object v12, v13

    .line 169
    :goto_8
    new-instance v7, Lorg/mozilla/javascript/NativeJavaMethod;

    .line 170
    .line 171
    invoke-direct {v7, v12}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>([Lorg/mozilla/javascript/MemberBox;)V

    .line 172
    .line 173
    .line 174
    if-eqz v1, :cond_9

    .line 175
    .line 176
    invoke-static {v7, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    .line 177
    .line 178
    .line 179
    :cond_9
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const/4 v7, 0x1

    .line 187
    goto :goto_6

    .line 188
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_b
    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/JavaMembers;->getAccessibleFields(ZZ)[Ljava/lang/reflect/Field;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    array-length v4, v2

    .line 196
    const/4 v7, 0x0

    .line 197
    :goto_9
    if-ge v7, v4, :cond_14

    .line 198
    .line 199
    aget-object v8, v2, v7

    .line 200
    .line 201
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    :try_start_0
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    if-eqz v10, :cond_c

    .line 214
    .line 215
    iget-object v11, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    .line 216
    .line 217
    goto :goto_a

    .line 218
    :cond_c
    iget-object v11, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    .line 219
    .line 220
    :goto_a
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    if-nez v12, :cond_d

    .line 225
    .line 226
    :goto_b
    invoke-interface {v11, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    goto :goto_e

    .line 230
    :cond_d
    instance-of v13, v12, Lorg/mozilla/javascript/NativeJavaMethod;

    .line 231
    .line 232
    if-eqz v13, :cond_11

    .line 233
    .line 234
    check-cast v12, Lorg/mozilla/javascript/NativeJavaMethod;

    .line 235
    .line 236
    new-instance v13, Lorg/mozilla/javascript/FieldAndMethods;

    .line 237
    .line 238
    iget-object v12, v12, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 239
    .line 240
    invoke-direct {v13, v1, v12, v8}, Lorg/mozilla/javascript/FieldAndMethods;-><init>(Lorg/mozilla/javascript/Scriptable;[Lorg/mozilla/javascript/MemberBox;Ljava/lang/reflect/Field;)V

    .line 241
    .line 242
    .line 243
    if-eqz v10, :cond_e

    .line 244
    .line 245
    iget-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->staticFieldAndMethods:Ljava/util/Map;

    .line 246
    .line 247
    goto :goto_c

    .line 248
    :cond_e
    iget-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->fieldAndMethods:Ljava/util/Map;

    .line 249
    .line 250
    :goto_c
    if-nez v8, :cond_10

    .line 251
    .line 252
    new-instance v8, Ljava/util/HashMap;

    .line 253
    .line 254
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 255
    .line 256
    .line 257
    if-eqz v10, :cond_f

    .line 258
    .line 259
    iput-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->staticFieldAndMethods:Ljava/util/Map;

    .line 260
    .line 261
    goto :goto_d

    .line 262
    :cond_f
    iput-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->fieldAndMethods:Ljava/util/Map;

    .line 263
    .line 264
    :cond_10
    :goto_d
    invoke-interface {v8, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    invoke-interface {v11, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    goto :goto_e

    .line 271
    :cond_11
    instance-of v10, v12, Ljava/lang/reflect/Field;

    .line 272
    .line 273
    if-eqz v10, :cond_12

    .line 274
    .line 275
    check-cast v12, Ljava/lang/reflect/Field;

    .line 276
    .line 277
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    invoke-virtual {v10, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    if-eqz v10, :cond_13

    .line 290
    .line 291
    goto :goto_b

    .line 292
    :cond_12
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .line 294
    .line 295
    goto :goto_e

    .line 296
    :catch_0
    const-string v8, "Could not access field "

    .line 297
    .line 298
    const-string v10, " of class "

    .line 299
    .line 300
    invoke-static {v8, v9, v10}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    iget-object v9, v0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    .line 305
    .line 306
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v9, " due to lack of privileges."

    .line 314
    .line 315
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    invoke-static {v8}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :cond_13
    :goto_e
    add-int/lit8 v7, v7, 0x1

    .line 326
    .line 327
    goto/16 :goto_9

    .line 328
    .line 329
    :cond_14
    const/4 v1, 0x0

    .line 330
    :goto_f
    if-eq v1, v5, :cond_25

    .line 331
    .line 332
    if-nez v1, :cond_15

    .line 333
    .line 334
    const/4 v2, 0x1

    .line 335
    goto :goto_10

    .line 336
    :cond_15
    const/4 v2, 0x0

    .line 337
    :goto_10
    if-eqz v2, :cond_16

    .line 338
    .line 339
    iget-object v4, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    .line 340
    .line 341
    goto :goto_11

    .line 342
    :cond_16
    iget-object v4, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    .line 343
    .line 344
    :goto_11
    new-instance v7, Ljava/util/HashMap;

    .line 345
    .line 346
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    :cond_17
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    if-eqz v9, :cond_24

    .line 362
    .line 363
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    check-cast v9, Ljava/lang/String;

    .line 368
    .line 369
    const-string v10, "get"

    .line 370
    .line 371
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    const-string v12, "set"

    .line 376
    .line 377
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    const-string v14, "is"

    .line 382
    .line 383
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 384
    .line 385
    .line 386
    move-result v15

    .line 387
    if-nez v11, :cond_19

    .line 388
    .line 389
    if-nez v15, :cond_19

    .line 390
    .line 391
    if-eqz v13, :cond_18

    .line 392
    .line 393
    goto :goto_13

    .line 394
    :cond_18
    const/4 v15, 0x1

    .line 395
    goto :goto_12

    .line 396
    :cond_19
    :goto_13
    if-eqz v15, :cond_1a

    .line 397
    .line 398
    const/4 v11, 0x2

    .line 399
    goto :goto_14

    .line 400
    :cond_1a
    const/4 v11, 0x3

    .line 401
    :goto_14
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 406
    .line 407
    .line 408
    move-result v11

    .line 409
    if-nez v11, :cond_1b

    .line 410
    .line 411
    goto :goto_12

    .line 412
    :cond_1b
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    .line 413
    .line 414
    .line 415
    move-result v11

    .line 416
    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 417
    .line 418
    .line 419
    move-result v13

    .line 420
    if-eqz v13, :cond_1d

    .line 421
    .line 422
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 423
    .line 424
    .line 425
    move-result v13

    .line 426
    const/4 v15, 0x1

    .line 427
    if-ne v13, v15, :cond_1c

    .line 428
    .line 429
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v11

    .line 433
    goto :goto_15

    .line 434
    :cond_1c
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    .line 435
    .line 436
    .line 437
    move-result v13

    .line 438
    invoke-static {v13}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 439
    .line 440
    .line 441
    move-result v13

    .line 442
    if-nez v13, :cond_1d

    .line 443
    .line 444
    new-instance v13, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v11

    .line 460
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    goto :goto_15

    .line 468
    :cond_1d
    move-object v11, v9

    .line 469
    :goto_15
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v13

    .line 473
    if-eqz v13, :cond_1e

    .line 474
    .line 475
    goto :goto_12

    .line 476
    :cond_1e
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v13

    .line 480
    if-eqz v13, :cond_1f

    .line 481
    .line 482
    if-eqz v3, :cond_17

    .line 483
    .line 484
    instance-of v15, v13, Ljava/lang/reflect/Member;

    .line 485
    .line 486
    if-eqz v15, :cond_17

    .line 487
    .line 488
    check-cast v13, Ljava/lang/reflect/Member;

    .line 489
    .line 490
    invoke-interface {v13}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 491
    .line 492
    .line 493
    move-result v13

    .line 494
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    .line 495
    .line 496
    .line 497
    move-result v13

    .line 498
    if-nez v13, :cond_1f

    .line 499
    .line 500
    goto/16 :goto_12

    .line 501
    .line 502
    :cond_1f
    invoke-static {v2, v4, v10, v9}, Lorg/mozilla/javascript/JavaMembers;->findGetter(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/MemberBox;

    .line 503
    .line 504
    .line 505
    move-result-object v10

    .line 506
    if-nez v10, :cond_20

    .line 507
    .line 508
    invoke-static {v2, v4, v14, v9}, Lorg/mozilla/javascript/JavaMembers;->findGetter(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/MemberBox;

    .line 509
    .line 510
    .line 511
    move-result-object v10

    .line 512
    :cond_20
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v9

    .line 516
    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v12

    .line 520
    const/4 v13, 0x0

    .line 521
    if-eqz v12, :cond_23

    .line 522
    .line 523
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v9

    .line 527
    instance-of v12, v9, Lorg/mozilla/javascript/NativeJavaMethod;

    .line 528
    .line 529
    if-eqz v12, :cond_23

    .line 530
    .line 531
    check-cast v9, Lorg/mozilla/javascript/NativeJavaMethod;

    .line 532
    .line 533
    if-eqz v10, :cond_21

    .line 534
    .line 535
    invoke-virtual {v10}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    .line 536
    .line 537
    .line 538
    move-result-object v12

    .line 539
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    move-result-object v12

    .line 543
    iget-object v14, v9, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 544
    .line 545
    invoke-static {v12, v14, v2}, Lorg/mozilla/javascript/JavaMembers;->extractSetMethod(Ljava/lang/Class;[Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;

    .line 546
    .line 547
    .line 548
    move-result-object v12

    .line 549
    goto :goto_16

    .line 550
    :cond_21
    iget-object v12, v9, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 551
    .line 552
    invoke-static {v12, v2}, Lorg/mozilla/javascript/JavaMembers;->extractSetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;

    .line 553
    .line 554
    .line 555
    move-result-object v12

    .line 556
    :goto_16
    iget-object v14, v9, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 557
    .line 558
    array-length v14, v14

    .line 559
    const/4 v15, 0x1

    .line 560
    if-le v14, v15, :cond_22

    .line 561
    .line 562
    :goto_17
    move-object v13, v12

    .line 563
    goto :goto_18

    .line 564
    :cond_22
    move-object v9, v13

    .line 565
    goto :goto_17

    .line 566
    :cond_23
    const/4 v15, 0x1

    .line 567
    move-object v9, v13

    .line 568
    :goto_18
    new-instance v12, Lorg/mozilla/javascript/BeanProperty;

    .line 569
    .line 570
    invoke-direct {v12, v10, v13, v9}, Lorg/mozilla/javascript/BeanProperty;-><init>(Lorg/mozilla/javascript/MemberBox;Lorg/mozilla/javascript/MemberBox;Lorg/mozilla/javascript/NativeJavaMethod;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    goto/16 :goto_12

    .line 577
    .line 578
    :cond_24
    const/4 v15, 0x1

    .line 579
    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 580
    .line 581
    .line 582
    add-int/lit8 v1, v1, 0x1

    .line 583
    .line 584
    goto/16 :goto_f

    .line 585
    .line 586
    :cond_25
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/JavaMembers;->getAccessibleConstructors(Z)[Ljava/lang/reflect/Constructor;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    array-length v2, v1

    .line 591
    new-array v2, v2, [Lorg/mozilla/javascript/MemberBox;

    .line 592
    .line 593
    :goto_19
    array-length v3, v1

    .line 594
    if-eq v6, v3, :cond_26

    .line 595
    .line 596
    new-instance v3, Lorg/mozilla/javascript/MemberBox;

    .line 597
    .line 598
    aget-object v4, v1, v6

    .line 599
    .line 600
    invoke-direct {v3, v4}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 601
    .line 602
    .line 603
    aput-object v3, v2, v6

    .line 604
    .line 605
    add-int/lit8 v6, v6, 0x1

    .line 606
    .line 607
    goto :goto_19

    .line 608
    :cond_26
    new-instance v1, Lorg/mozilla/javascript/NativeJavaMethod;

    .line 609
    .line 610
    iget-object v3, v0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    .line 611
    .line 612
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>([Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    iput-object v1, v0, Lorg/mozilla/javascript/JavaMembers;->ctors:Lorg/mozilla/javascript/NativeJavaMethod;

    .line 620
    .line 621
    return-void
.end method


# virtual methods
.method public get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    if-eqz p4, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/JavaMembers;->getExplicitFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_2
    instance-of p2, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_3

    return-object v0

    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    :try_start_0
    instance-of v1, v0, Lorg/mozilla/javascript/BeanProperty;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/mozilla/javascript/BeanProperty;

    iget-object p4, v0, Lorg/mozilla/javascript/BeanProperty;->getter:Lorg/mozilla/javascript/MemberBox;

    if-nez p4, :cond_4

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_4
    sget-object v1, Lorg/mozilla/javascript/Context;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p4, p3, v1}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, v0, Lorg/mozilla/javascript/BeanProperty;->getter:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p4}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p4

    goto :goto_1

    :cond_5
    check-cast v0, Ljava/lang/reflect/Field;

    if-eqz p4, :cond_6

    const/4 p3, 0x0

    :cond_6
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_2
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getFieldAndMethodsObjects(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/FieldAndMethods;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/mozilla/javascript/JavaMembers;->staticFieldAndMethods:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/mozilla/javascript/JavaMembers;->fieldAndMethods:Ljava/util/Map;

    :goto_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/FieldAndMethods;

    new-instance v2, Lorg/mozilla/javascript/FieldAndMethods;

    iget-object v3, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    iget-object v4, v0, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    invoke-direct {v2, p1, v3, v4}, Lorg/mozilla/javascript/FieldAndMethods;-><init>(Lorg/mozilla/javascript/Scriptable;[Lorg/mozilla/javascript/MemberBox;Ljava/lang/reflect/Field;)V

    iput-object p2, v2, Lorg/mozilla/javascript/FieldAndMethods;->javaObject:Ljava/lang/Object;

    iget-object v0, v0, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getIds(Z)[Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public has(Ljava/lang/String;Z)Z
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/JavaMembers;->findExplicitFunction(Ljava/lang/String;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public put(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_0
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez p5, :cond_1

    if-nez v3, :cond_1

    iget-object p5, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_a

    instance-of p5, v3, Lorg/mozilla/javascript/FieldAndMethods;

    if-eqz p5, :cond_2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/mozilla/javascript/FieldAndMethods;

    iget-object v3, p5, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    :cond_2
    instance-of p5, v3, Lorg/mozilla/javascript/BeanProperty;

    if-eqz p5, :cond_6

    check-cast v3, Lorg/mozilla/javascript/BeanProperty;

    iget-object p5, v3, Lorg/mozilla/javascript/BeanProperty;->setter:Lorg/mozilla/javascript/MemberBox;

    if-eqz p5, :cond_5

    iget-object p2, v3, Lorg/mozilla/javascript/BeanProperty;->setters:Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz p2, :cond_4

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p4, p3, v1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p5

    invoke-virtual {p2, p4, p5, p1, p3}, Lorg/mozilla/javascript/NativeJavaMethod;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p5, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    aget-object p1, p1, v1

    invoke-static {p4, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    :try_start_0
    iget-object p1, v3, Lorg/mozilla/javascript/BeanProperty;->setter:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p1, p3, p2}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_6
    instance-of p1, v3, Ljava/lang/reflect/Field;

    if-nez p1, :cond_8

    if-nez v3, :cond_7

    const-string p1, "msg.java.internal.private"

    goto :goto_2

    :cond_7
    const-string p1, "msg.java.method.assign"

    :goto_2
    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_8
    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p4, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :try_start_1
    invoke-virtual {v3, p3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-void

    :catch_1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "msg.java.internal.field.type"

    invoke-static {p3, p1, v3, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_9

    return-void

    :cond_9
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_a
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.java.member.not.found"

    invoke-static {v1, v0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    return-object p1
.end method
