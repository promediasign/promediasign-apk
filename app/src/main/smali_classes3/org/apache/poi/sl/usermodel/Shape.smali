.class public interface abstract Lorg/apache/poi/sl/usermodel/Shape;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
.end method

.method public abstract getAnchor()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getSheet()Lorg/apache/poi/sl/usermodel/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "TS;TP;>;"
        }
    .end annotation
.end method
