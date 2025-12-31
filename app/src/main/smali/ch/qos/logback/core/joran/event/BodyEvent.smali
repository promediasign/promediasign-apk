.class public Lch/qos/logback/core/joran/event/BodyEvent;
.super Lch/qos/logback/core/joran/event/SaxEvent;
.source "SourceFile"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p2}, Lch/qos/logback/core/joran/event/SaxEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Locator;)V

    iput-object p1, p0, Lch/qos/logback/core/joran/event/BodyEvent;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lch/qos/logback/core/joran/event/BodyEvent;->text:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1, p1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lch/qos/logback/core/joran/event/BodyEvent;->text:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/joran/event/BodyEvent;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BodyEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lch/qos/logback/core/joran/event/BodyEvent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/qos/logback/core/joran/event/SaxEvent;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/qos/logback/core/joran/event/SaxEvent;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
