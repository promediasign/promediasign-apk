.class public Lorg/apache/poi/sl/draw/DrawAutoShape;
.super Lorg/apache/poi/sl/draw/DrawTextShape;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/AutoShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/AutoShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawTextShape;-><init>(Lorg/apache/poi/sl/usermodel/TextShape;)V

    return-void
.end method
