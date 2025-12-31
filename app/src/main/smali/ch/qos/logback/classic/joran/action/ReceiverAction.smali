.class public Lch/qos/logback/classic/joran/action/ReceiverAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "SourceFile"


# instance fields
.field private inError:Z

.field private receiver:Lch/qos/logback/classic/net/ReceiverBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const-string v0, "About to instantiate receiver of type ["

    .line 2
    .line 3
    const-string v1, "class"

    .line 4
    .line 5
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-static {p3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string p3, "Missing class name for receiver. Near ["

    .line 17
    .line 18
    const-string v0, "] line "

    .line 19
    .line 20
    invoke-static {p3, p2, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/Action;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-boolean v2, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->inError:Z

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, "]"

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-class p2, Lch/qos/logback/classic/net/ReceiverBase;

    .line 62
    .line 63
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 64
    .line 65
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lch/qos/logback/classic/net/ReceiverBase;

    .line 70
    .line 71
    iput-object p2, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->receiver:Lch/qos/logback/classic/net/ReceiverBase;

    .line 72
    .line 73
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->receiver:Lch/qos/logback/classic/net/ReceiverBase;

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catch_0
    move-exception p1

    .line 85
    iput-boolean v2, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->inError:Z

    .line 86
    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v0, "Could not create a receiver of type ["

    .line 90
    .line 91
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p3, "]."

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    new-instance p2, Lch/qos/logback/core/joran/spi/ActionException;

    .line 110
    .line 111
    invoke-direct {p2, p1}, Lch/qos/logback/core/joran/spi/ActionException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw p2
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 1

    iget-boolean p2, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->inError:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/spi/ContextAwareBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object p2

    iget-object v0, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->receiver:Lch/qos/logback/classic/net/ReceiverBase;

    invoke-interface {p2, v0}, Lch/qos/logback/core/Context;->register(Lch/qos/logback/core/spi/LifeCycle;)V

    iget-object p2, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->receiver:Lch/qos/logback/classic/net/ReceiverBase;

    invoke-virtual {p2}, Lch/qos/logback/classic/net/ReceiverBase;->start()V

    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->receiver:Lch/qos/logback/classic/net/ReceiverBase;

    if-eq p2, v0, :cond_1

    const-string p1, "The object at the of the stack is not the remote pushed earlier."

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    :goto_0
    return-void
.end method
