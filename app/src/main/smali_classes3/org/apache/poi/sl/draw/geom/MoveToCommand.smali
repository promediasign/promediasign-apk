.class public Lorg/apache/poi/sl/draw/geom/MoveToCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# instance fields
.field private arg1:Ljava/lang/String;

.field private arg2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg1:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg1:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg1:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg2:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    return-void
.end method
