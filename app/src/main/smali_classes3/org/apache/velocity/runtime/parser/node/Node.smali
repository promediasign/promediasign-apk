.class public interface abstract Lorg/apache/velocity/runtime/parser/node/Node;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/Renderable;


# virtual methods
.method public abstract childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z
.end method

.method public abstract execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
.end method

.method public abstract getColumn()I
.end method

.method public abstract getFirstToken()Lorg/apache/velocity/runtime/parser/Token;
.end method

.method public abstract getFirstTokenImage()Ljava/lang/String;
.end method

.method public abstract getInfo()I
.end method

.method public abstract getLastToken()Lorg/apache/velocity/runtime/parser/Token;
.end method

.method public abstract getLastTokenImage()Ljava/lang/String;
.end method

.method public abstract getLine()I
.end method

.method public abstract getTemplate()Lorg/apache/velocity/Template;
.end method

.method public abstract getTemplateName()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract isInvalid()Z
.end method

.method public abstract jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract jjtAddChild(Lorg/apache/velocity/runtime/parser/node/Node;I)V
.end method

.method public abstract jjtClose()V
.end method

.method public abstract jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;
.end method

.method public abstract jjtGetNumChildren()I
.end method

.method public abstract jjtGetParent()Lorg/apache/velocity/runtime/parser/node/Node;
.end method

.method public abstract jjtOpen()V
.end method

.method public abstract jjtSetParent(Lorg/apache/velocity/runtime/parser/node/Node;)V
.end method

.method public abstract literal()Ljava/lang/String;
.end method

.method public abstract render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
.end method

.method public abstract setInfo(I)V
.end method

.method public abstract setInvalid()V
.end method

.method public abstract value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
.end method
