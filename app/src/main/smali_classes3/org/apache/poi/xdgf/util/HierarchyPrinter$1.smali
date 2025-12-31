.class final Lorg/apache/poi/xdgf/util/HierarchyPrinter$1;
.super Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xdgf/util/HierarchyPrinter;->printHierarchy(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/PrintStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$os:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/util/HierarchyPrinter$1;->val$os:Ljava/io/PrintStream;

    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V
    .locals 2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/util/HierarchyPrinter$1;->val$os:Ljava/io/PrintStream;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/xdgf/util/HierarchyPrinter$1;->val$os:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getShapeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getSymbolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getMasterShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTextAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
