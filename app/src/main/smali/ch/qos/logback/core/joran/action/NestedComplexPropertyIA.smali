.class public Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;
.super Lch/qos/logback/core/joran/action/ImplicitAction;
.source "SourceFile"


# instance fields
.field actionDataStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lch/qos/logback/core/joran/action/IADataForComplexProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/ImplicitAction;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->actionDataStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9

    .line 1
    const-string v0, "]"

    .line 2
    .line 3
    const-string v1, "Assuming default type ["

    .line 4
    .line 5
    const-string v2, "Could not find an appropriate class for property ["

    .line 6
    .line 7
    iget-object v3, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->actionDataStack:Ljava/util/Stack;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lch/qos/logback/core/joran/action/IADataForComplexProperty;

    .line 14
    .line 15
    const-string v4, "class"

    .line 16
    .line 17
    invoke-interface {p3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p1, p3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const/4 v4, 0x1

    .line 26
    :try_start_0
    invoke-static {p3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    iget-object v5, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 33
    .line 34
    invoke-static {p3, v5}, Lch/qos/logback/core/util/Loader;->loadClass(Ljava/lang/String;Lch/qos/logback/core/Context;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object v5, v3, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    .line 42
    .line 43
    invoke-virtual {v3}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getComplexPropertyName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v3}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getAggregationType()Lch/qos/logback/core/util/AggregationType;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getDefaultNestedComponentRegistry()Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v5, v6, v7, v8}, Lch/qos/logback/core/joran/util/PropertySetter;->getClassNameViaImplicitRules(Ljava/lang/String;Lch/qos/logback/core/util/AggregationType;Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    :goto_0
    if-nez v5, :cond_1

    .line 60
    .line 61
    iput-boolean v4, v3, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->inError:Z

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    invoke-static {p3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, "] for ["

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, "] property"

    .line 109
    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    const/4 v1, 0x0

    .line 121
    invoke-virtual {v5, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v3, v1}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->setNestedComplexProperty(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    instance-of v1, v1, Lch/qos/logback/core/spi/ContextAware;

    .line 137
    .line 138
    if-eqz v1, :cond_3

    .line 139
    .line 140
    invoke-virtual {v3}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lch/qos/logback/core/spi/ContextAware;

    .line 145
    .line 146
    iget-object v2, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 147
    .line 148
    invoke-interface {v1, v2}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-virtual {v3}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :goto_1
    iput-boolean v4, v3, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->inError:Z

    .line 160
    .line 161
    const-string v1, "Could not create component ["

    .line 162
    .line 163
    const-string v2, "] of type ["

    .line 164
    .line 165
    invoke-static {v1, p2, v2, p3, v0}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->actionDataStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;

    iget-boolean v1, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->inError:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lch/qos/logback/core/joran/util/PropertySetter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/qos/logback/core/joran/util/PropertySetter;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    const-string v2, "parent"

    invoke-virtual {v1, v2}, Lch/qos/logback/core/joran/util/PropertySetter;->computeAggregationType(Ljava/lang/String;)Lch/qos/logback/core/util/AggregationType;

    move-result-object v3

    sget-object v4, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    invoke-virtual {v3}, Lch/qos/logback/core/joran/util/PropertySetter;->getObj()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/joran/util/PropertySetter;->setComplexProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v2, :cond_2

    invoke-static {v1}, Lch/qos/logback/core/joran/spi/NoAutoStartUtil;->notMarkedWithNoAutoStart(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v1, Lch/qos/logback/core/spi/LifeCycle;

    invoke-interface {v1}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    :cond_2
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_3

    const-string p1, "The object on the top the of the stack is not the component pushed earlier."

    :goto_0
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    sget-object p1, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    iget-object v1, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->aggregationType:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected aggregationType "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->aggregationType:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lch/qos/logback/core/joran/util/PropertySetter;->setComplexProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object p1, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lch/qos/logback/core/joran/util/PropertySetter;->addComplexProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public isApplicable(Lch/qos/logback/core/joran/spi/ElementPath;Lorg/xml/sax/Attributes;Lch/qos/logback/core/joran/spi/InterpretationContext;)Z
    .locals 4

    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/ElementPath;->peekLast()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object p2

    new-instance p3, Lch/qos/logback/core/joran/util/PropertySetter;

    invoke-direct {p3, p2}, Lch/qos/logback/core/joran/util/PropertySetter;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {p3, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {p3, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->computeAggregationType(Ljava/lang/String;)Lch/qos/logback/core/util/AggregationType;

    move-result-object p2

    sget-object v1, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "PropertySetter.computeAggregationType returned "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    return v0

    :cond_1
    new-instance v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;

    invoke-direct {v0, p3, p2, p1}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;-><init>(Lch/qos/logback/core/joran/util/PropertySetter;Lch/qos/logback/core/util/AggregationType;Ljava/lang/String;)V

    iget-object p1, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->actionDataStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_2
    return v0
.end method
