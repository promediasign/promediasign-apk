.class public Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "SourceFile"


# instance fields
.field inError:Z

.field lcl:Lch/qos/logback/classic/spi/LoggerContextListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    const-string p2, "Adding LoggerContextListener of type ["

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->inError:Z

    const-string v0, "class"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "Mandatory \"class\" attribute not set for <loggerContextListener> element"

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    iput-boolean v1, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->inError:Z

    return-void

    :cond_0
    :try_start_0
    const-class v0, Lch/qos/logback/classic/spi/LoggerContextListener;

    iget-object v2, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-static {p3, v0, v2}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/spi/LoggerContextListener;

    iput-object v0, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->lcl:Lch/qos/logback/classic/spi/LoggerContextListener;

    instance-of v2, v0, Lch/qos/logback/core/spi/ContextAware;

    if-eqz v2, :cond_1

    check-cast v0, Lch/qos/logback/core/spi/ContextAware;

    iget-object v2, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-interface {v0, v2}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->lcl:Lch/qos/logback/classic/spi/LoggerContextListener;

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] to the object stack"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iput-boolean v1, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->inError:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not create LoggerContextListener of type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 1

    iget-boolean p2, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->inError:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->lcl:Lch/qos/logback/classic/spi/LoggerContextListener;

    if-eq p2, v0, :cond_1

    const-string p1, "The object on the top the of the stack is not the LoggerContextListener pushed earlier."

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of p2, v0, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz p2, :cond_2

    check-cast v0, Lch/qos/logback/core/spi/LifeCycle;

    invoke-interface {v0}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    const-string p2, "Starting LoggerContextListener"

    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    check-cast p2, Lch/qos/logback/classic/LoggerContext;

    iget-object v0, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->lcl:Lch/qos/logback/classic/spi/LoggerContextListener;

    invoke-virtual {p2, v0}, Lch/qos/logback/classic/LoggerContext;->addListener(Lch/qos/logback/classic/spi/LoggerContextListener;)V

    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    :goto_0
    return-void
.end method
