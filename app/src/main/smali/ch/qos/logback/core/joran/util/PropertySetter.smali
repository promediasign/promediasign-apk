.class public Lch/qos/logback/core/joran/util/PropertySetter;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "SourceFile"


# instance fields
.field protected methodDescriptors:[Lch/qos/logback/core/joran/util/MethodDescriptor;

.field protected obj:Ljava/lang/Object;

.field protected objClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected propertyDescriptors:[Lch/qos/logback/core/joran/util/PropertyDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    return-void
.end method

.method private capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private computeRawAggregationType(Ljava/lang/reflect/Method;)Lch/qos/logback/core/util/AggregationType;
    .locals 0

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->getParameterClassForMethod(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lch/qos/logback/core/util/AggregationType;->NOT_FOUND:Lch/qos/logback/core/util/AggregationType;

    return-object p1

    :cond_0
    invoke-static {p1}, Lch/qos/logback/core/joran/util/StringToObjectConverter;->canBeBuiltFromSimpleString(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lch/qos/logback/core/util/AggregationType;->AS_BASIC_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    return-object p1

    :cond_1
    sget-object p1, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    return-object p1
.end method

.method private findAdderMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method private findSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p1}, Lch/qos/logback/core/joran/util/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->getPropertyDescriptor(Ljava/lang/String;)Lch/qos/logback/core/joran/util/PropertyDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lch/qos/logback/core/joran/util/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getParameterClassForMethod(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method private isSanityCheckSuccessful(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    array-length v0, p3

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    const-string p2, "Wrong number of parameters in setter method for property ["

    .line 11
    .line 12
    const-string p3, "] in "

    .line 13
    .line 14
    invoke-static {p2, p1, p3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    aget-object p1, p3, v1

    .line 40
    .line 41
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-virtual {p1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p4, "A \""

    .line 54
    .line 55
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p4, "\" object is not assignable to a \""

    .line 59
    .line 60
    invoke-static {p2, p1, p4}, Lch/qos/logback/core/joran/util/a;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    aget-object p4, p3, v1

    .line 64
    .line 65
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p4, "\" variable."

    .line 73
    .line 74
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p4, "The class \""

    .line 87
    .line 88
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    aget-object p4, p3, v1

    .line 92
    .line 93
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p4, "\" was loaded by "

    .line 101
    .line 102
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string p4, "["

    .line 115
    .line 116
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    aget-object p3, p3, v1

    .line 120
    .line 121
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p3, "] whereas object of type "

    .line 129
    .line 130
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string p3, "\""

    .line 143
    .line 144
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p3, "\" was loaded by ["

    .line 155
    .line 156
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p2, "]."

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_1
    return v2
.end method

.method private isUnequivocallyInstantiable(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v1
.end method


# virtual methods
.method public addBasicProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findAdderMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No adder for property ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->isSanityCheckSuccessful(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_0
    aget-object v2, v1, p1

    invoke-static {p0, p2, v2}, Lch/qos/logback/core/joran/util/StringToObjectConverter;->convertArg(Lch/qos/logback/core/spi/ContextAware;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->invokeMethodWithSingleParameterOnThisObject(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Conversion to type ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] failed. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public addComplexProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findAdderMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {p0, p1, v0, v1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->isSanityCheckSuccessful(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, v0, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->invokeMethodWithSingleParameterOnThisObject(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string p2, "Could not find method [add"

    .line 23
    .line 24
    const-string v0, "] in class ["

    .line 25
    .line 26
    invoke-static {p2, p1, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, "]."

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public computeAggregationType(Ljava/lang/String;)Lch/qos/logback/core/util/AggregationType;
    .locals 3

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findAdderMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/util/PropertySetter;->computeRawAggregationType(Ljava/lang/reflect/Method;)Lch/qos/logback/core/util/AggregationType;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/joran/util/PropertySetter$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected AggregationType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    return-object p1

    :cond_2
    sget-object p1, Lch/qos/logback/core/util/AggregationType;->AS_BASIC_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    return-object p1

    :cond_3
    sget-object p1, Lch/qos/logback/core/util/AggregationType;->NOT_FOUND:Lch/qos/logback/core/util/AggregationType;

    return-object p1

    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->computeRawAggregationType(Ljava/lang/reflect/Method;)Lch/qos/logback/core/util/AggregationType;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object p1, Lch/qos/logback/core/util/AggregationType;->NOT_FOUND:Lch/qos/logback/core/util/AggregationType;

    return-object p1
.end method

.method public getAnnotation(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            ")TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByConcreteType(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->getParameterClassForMethod(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->isUnequivocallyInstantiable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public getClassNameViaImplicitRules(Ljava/lang/String;Lch/qos/logback/core/util/AggregationType;Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lch/qos/logback/core/util/AggregationType;",
            "Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->findDefaultComponentType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->getRelevantMethod(Ljava/lang/String;Lch/qos/logback/core/util/AggregationType;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->getDefaultClassNameByAnnonation(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_2

    return-object p3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->getByConcreteType(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultClassNameByAnnonation(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lch/qos/logback/core/joran/spi/DefaultClass;

    invoke-virtual {p0, p1, v0, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->getAnnotation(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lch/qos/logback/core/joran/spi/DefaultClass;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lch/qos/logback/core/joran/spi/DefaultClass;->value()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->methodDescriptors:[Lch/qos/logback/core/joran/util/MethodDescriptor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/util/PropertySetter;->introspect()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->methodDescriptors:[Lch/qos/logback/core/joran/util/MethodDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lch/qos/logback/core/joran/util/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->methodDescriptors:[Lch/qos/logback/core/joran/util/MethodDescriptor;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lch/qos/logback/core/joran/util/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getObjClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getPropertyDescriptor(Ljava/lang/String;)Lch/qos/logback/core/joran/util/PropertyDescriptor;
    .locals 3

    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->propertyDescriptors:[Lch/qos/logback/core/joran/util/PropertyDescriptor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/util/PropertySetter;->introspect()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->propertyDescriptors:[Lch/qos/logback/core/joran/util/PropertyDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lch/qos/logback/core/joran/util/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->propertyDescriptors:[Lch/qos/logback/core/joran/util/PropertyDescriptor;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRelevantMethod(Ljava/lang/String;Lch/qos/logback/core/util/AggregationType;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findAdderMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not allowed here"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public introspect()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    invoke-static {v0}, Lch/qos/logback/core/joran/util/Introspector;->getPropertyDescriptors(Ljava/lang/Class;)[Lch/qos/logback/core/joran/util/PropertyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->propertyDescriptors:[Lch/qos/logback/core/joran/util/PropertyDescriptor;

    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    invoke-static {v0}, Lch/qos/logback/core/joran/util/Introspector;->getMethodDescriptors(Ljava/lang/Class;)[Lch/qos/logback/core/joran/util/MethodDescriptor;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->methodDescriptors:[Lch/qos/logback/core/joran/util/MethodDescriptor;
    :try_end_0
    .catch Lch/qos/logback/core/joran/util/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to introspect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Lch/qos/logback/core/joran/util/PropertyDescriptor;

    iput-object v1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->propertyDescriptors:[Lch/qos/logback/core/joran/util/PropertyDescriptor;

    new-array v0, v0, [Lch/qos/logback/core/joran/util/MethodDescriptor;

    iput-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->methodDescriptors:[Lch/qos/logback/core/joran/util/MethodDescriptor;

    :goto_0
    return-void
.end method

.method public invokeMethodWithSingleParameterOnThisObject(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not invoke method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with parameter of type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setComplexProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lch/qos/logback/core/joran/util/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/util/PropertySetter;->getPropertyDescriptor(Ljava/lang/String;)Lch/qos/logback/core/joran/util/PropertyDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "] in "

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p2, "Could not find PropertyDescriptor for ["

    .line 14
    .line 15
    invoke-static {p2, p1, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/joran/util/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string p2, "Not setter method for property ["

    .line 43
    .line 44
    invoke-static {p2, p1, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {p0, p1, v0, v1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->isSanityCheckSuccessful(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->invokeMethodWithSingleParameterOnThisObject(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception p1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v0, "Could not set component "

    .line 74
    .line 75
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, " for parent component "

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void
.end method

.method public setProperty(Lch/qos/logback/core/joran/util/PropertyDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Conversion to type ["

    invoke-virtual {p1}, Lch/qos/logback/core/joran/util/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length v3, p2

    if-ne v3, v1, :cond_1

    :try_start_0
    aget-object v3, p2, v0

    invoke-static {p0, p3, v3}, Lch/qos/logback/core/joran/util/StringToObjectConverter;->convertArg(Lch/qos/logback/core/spi/ContextAware;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    :try_start_1
    iget-object p2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lch/qos/logback/core/util/PropertySetterException;

    invoke-direct {p2, p1}, Lch/qos/logback/core/util/PropertySetterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Lch/qos/logback/core/util/PropertySetterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p2, v0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] failed."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch/qos/logback/core/util/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    new-instance p3, Lch/qos/logback/core/util/PropertySetterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p2, v0

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] failed. "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lch/qos/logback/core/util/PropertySetterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_1
    new-instance p1, Lch/qos/logback/core/util/PropertySetterException;

    const-string p2, "#params for setter != 1"

    invoke-direct {p1, p2}, Lch/qos/logback/core/util/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lch/qos/logback/core/util/PropertySetterException;

    const-string p3, "No setter for property ["

    const-string v0, "]."

    .line 1
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Lch/qos/logback/core/util/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lch/qos/logback/core/joran/util/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->getPropertyDescriptor(Ljava/lang/String;)Lch/qos/logback/core/joran/util/PropertyDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p2, "No such property ["

    const-string v0, "] in "

    .line 8
    invoke-static {p2, p1, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->setProperty(Lch/qos/logback/core/joran/util/PropertyDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lch/qos/logback/core/util/PropertySetterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set property ["

    const-string v2, "] to value \""

    const-string v3, "\". "

    .line 10
    invoke-static {v1, p1, v2, p2, v3}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
