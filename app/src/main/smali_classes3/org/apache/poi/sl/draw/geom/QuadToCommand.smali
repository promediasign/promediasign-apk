.class public Lorg/apache/poi/sl/draw/geom/QuadToCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# instance fields
.field private arg1:Ljava/lang/String;

.field private arg2:Ljava/lang/String;

.field private arg3:Ljava/lang/String;

.field private arg4:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg1:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg2:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg3:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg1:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg2:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg3:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v6

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg4:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v8

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Path2D$Double;->quadTo(DDDD)V

    return-void
.end method
