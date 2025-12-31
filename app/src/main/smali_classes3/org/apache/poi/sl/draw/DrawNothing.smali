.class public Lorg/apache/poi/sl/draw/DrawNothing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# instance fields
.field protected final shape:Lorg/apache/poi/sl/usermodel/Shape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawNothing;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    return-void
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method
