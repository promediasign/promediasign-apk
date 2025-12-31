.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor$TextAcceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextAcceptor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasText()Z

    move-result p1

    return p1
.end method
