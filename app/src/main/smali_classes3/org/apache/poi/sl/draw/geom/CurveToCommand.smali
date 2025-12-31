.class public Lorg/apache/poi/sl/draw/geom/CurveToCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# instance fields
.field private arg1:Ljava/lang/String;

.field private arg2:Ljava/lang/String;

.field private arg3:Ljava/lang/String;

.field private arg4:Ljava/lang/String;

.field private arg5:Ljava/lang/String;

.field private arg6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg1:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg2:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg3:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg4:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg5:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v6

    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v10

    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v12

    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v15}, Ljava/awt/geom/Path2D$Double;->curveTo(DDDDDD)V

    return-void
.end method
