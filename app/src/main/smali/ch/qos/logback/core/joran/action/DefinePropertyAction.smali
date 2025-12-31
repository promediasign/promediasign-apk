.class public Lch/qos/logback/core/joran/action/DefinePropertyAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "SourceFile"


# instance fields
.field definer:Lch/qos/logback/core/spi/PropertyDefiner;

.field inError:Z

.field propertyName:Ljava/lang/String;

.field scope:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

.field scopeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    .line 1
    const-string v0, "About to instantiate property definer of type ["

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->scopeStr:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->scope:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    .line 7
    .line 8
    iput-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->inError:Z

    .line 14
    .line 15
    const-string v1, "name"

    .line 16
    .line 17
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "scope"

    .line 24
    .line 25
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->scopeStr:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1}, Lch/qos/logback/core/joran/action/ActionUtil;->stringToScope(Ljava/lang/String;)Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->scope:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    .line 36
    .line 37
    iget-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const-string v2, "] line "

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const-string p3, "Missing property name for property definer. Near ["

    .line 49
    .line 50
    :goto_0
    invoke-static {p3, p2, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/Action;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-boolean v3, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->inError:Z

    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    const-string v1, "class"

    .line 72
    .line 73
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-static {p3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    const-string p3, "Missing class name for property definer. Near ["

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, "]"

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-class p2, Lch/qos/logback/core/spi/PropertyDefiner;

    .line 107
    .line 108
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 109
    .line 110
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lch/qos/logback/core/spi/PropertyDefiner;

    .line 115
    .line 116
    iput-object p2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    .line 117
    .line 118
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 119
    .line 120
    invoke-interface {p2, v0}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    .line 124
    .line 125
    instance-of v0, p2, Lch/qos/logback/core/spi/LifeCycle;

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    check-cast p2, Lch/qos/logback/core/spi/LifeCycle;

    .line 130
    .line 131
    invoke-interface {p2}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catch_0
    move-exception p1

    .line 136
    goto :goto_2

    .line 137
    :cond_2
    :goto_1
    iget-object p2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :goto_2
    iput-boolean v3, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->inError:Z

    .line 144
    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v0, "Could not create an PropertyDefiner of type ["

    .line 148
    .line 149
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p3, "]."

    .line 156
    .line 157
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    new-instance p2, Lch/qos/logback/core/joran/spi/ActionException;

    .line 168
    .line 169
    invoke-direct {p2, p1}, Lch/qos/logback/core/joran/spi/ActionException;-><init>(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    throw p2
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 2

    iget-boolean p2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->inError:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    if-eq p2, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The object at the of the stack is not the property definer for property named ["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] pushed earlier."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Popping property definer for property named ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] from the object stack"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    iget-object p2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    invoke-interface {p2}, Lch/qos/logback/core/spi/PropertyDefiner;->getPropertyValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    iget-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->scope:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    invoke-static {p1, v0, p2, v1}, Lch/qos/logback/core/joran/action/ActionUtil;->setProperty(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Ljava/lang/String;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V

    :cond_2
    :goto_0
    return-void
.end method
