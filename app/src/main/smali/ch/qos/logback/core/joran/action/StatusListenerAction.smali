.class public Lch/qos/logback/core/joran/action/StatusListenerAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "SourceFile"


# instance fields
.field effectivelyAdded:Ljava/lang/Boolean;

.field inError:Z

.field statusListener:Lch/qos/logback/core/status/StatusListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->inError:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->effectivelyAdded:Ljava/lang/Boolean;

    iput-object v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    return-void
.end method

.method private isEffectivelyAdded()Z
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->effectivelyAdded:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const-string v0, "Added status listener of type ["

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->inError:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->effectivelyAdded:Ljava/lang/Boolean;

    .line 8
    .line 9
    const-string v1, "class"

    .line 10
    .line 11
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {p3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string p3, "Missing class name for statusListener. Near ["

    .line 23
    .line 24
    const-string v0, "] line "

    .line 25
    .line 26
    invoke-static {p3, p2, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/Action;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->inError:Z

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    :try_start_0
    const-class p2, Lch/qos/logback/core/status/StatusListener;

    .line 48
    .line 49
    iget-object v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 50
    .line 51
    invoke-static {p3, p2, v1}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lch/qos/logback/core/status/StatusListener;

    .line 56
    .line 57
    iput-object p2, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    .line 58
    .line 59
    invoke-virtual {p1}, Lch/qos/logback/core/spi/ContextAwareBase;->getContext()Lch/qos/logback/core/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-interface {p2}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iget-object v1, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    .line 68
    .line 69
    invoke-interface {p2, v1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/StatusListener;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iput-object p2, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->effectivelyAdded:Ljava/lang/Boolean;

    .line 78
    .line 79
    iget-object p2, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    .line 80
    .line 81
    instance-of v1, p2, Lch/qos/logback/core/spi/ContextAware;

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    check-cast p2, Lch/qos/logback/core/spi/ContextAware;

    .line 86
    .line 87
    iget-object v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 88
    .line 89
    invoke-interface {p2, v1}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception p1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, "]"

    .line 104
    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :goto_1
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->inError:Z

    .line 122
    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v0, "Could not create an StatusListener of type ["

    .line 126
    .line 127
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p3, "]."

    .line 134
    .line 135
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    new-instance p2, Lch/qos/logback/core/joran/spi/ActionException;

    .line 146
    .line 147
    invoke-direct {p2, p1}, Lch/qos/logback/core/joran/spi/ActionException;-><init>(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    throw p2
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 1

    iget-boolean p2, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->inError:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/StatusListenerAction;->isEffectivelyAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    instance-of v0, p2, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v0, :cond_1

    check-cast p2, Lch/qos/logback/core/spi/LifeCycle;

    invoke-interface {p2}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    if-eq p2, v0, :cond_2

    const-string p1, "The object at the of the stack is not the statusListener pushed earlier."

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0

    return-void
.end method
