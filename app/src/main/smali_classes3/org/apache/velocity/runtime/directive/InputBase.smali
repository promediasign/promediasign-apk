.class public abstract Lorg/apache/velocity/runtime/directive/InputBase;
.super Lorg/apache/velocity/runtime/directive/Directive;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Directive;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputEncoding(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getEncoding()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "input.encoding"

    invoke-interface {p1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
