.class public Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scand/svg/parser/SVGHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SVGClipHandler"
.end annotation


# instance fields
.field canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

.field mGroup:Lcom/scand/svg/parser/support/ClipPath;

.field final synthetic this$0:Lcom/scand/svg/parser/SVGHandler;


# direct methods
.method public constructor <init>(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/support/GraphicsSVG;)V
    .locals 0

    iput-object p1, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance p1, Lcom/scand/svg/parser/support/ClipPath;

    invoke-direct {p1}, Lcom/scand/svg/parser/support/ClipPath;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->mGroup:Lcom/scand/svg/parser/support/ClipPath;

    iput-object p2, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    move-object p2, p3

    :cond_1
    if-nez p4, :cond_2

    new-instance p1, Lcom/scand/svg/css/util/SMapImpl;

    invoke-direct {p1}, Lcom/scand/svg/css/util/SMapImpl;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/scand/svg/css/util/SMapAttributesAdapter;

    invoke-direct {p1, p4}, Lcom/scand/svg/css/util/SMapAttributesAdapter;-><init>(Lorg/xml/sax/Attributes;)V

    :goto_0
    iget-object p3, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    invoke-static {p3}, Lcom/scand/svg/parser/SVGHandler;->access$100(Lcom/scand/svg/parser/SVGHandler;)Lcom/scand/svg/css/CascadeEngine;

    move-result-object p3

    invoke-static {}, Lcom/scand/svg/parser/SVGHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2, p1}, Lcom/scand/svg/css/CascadeEngine;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)V

    const-string p1, "style"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    invoke-static {p3}, Lcom/scand/svg/parser/SVGHandler;->access$200(Lcom/scand/svg/parser/SVGHandler;)Lcom/scand/svg/css/CSSParser;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/scand/svg/css/CSSParser;->readInlineStyle(Ljava/lang/String;)Lcom/scand/svg/css/InlineRule;

    move-result-object p1

    iget-object p3, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    invoke-static {p3}, Lcom/scand/svg/parser/SVGHandler;->access$100(Lcom/scand/svg/parser/SVGHandler;)Lcom/scand/svg/css/CascadeEngine;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/scand/svg/css/CascadeEngine;->applyInlineRule(Lcom/scand/svg/css/InlineRule;)V

    :cond_3
    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    invoke-static {p1}, Lcom/scand/svg/parser/SVGHandler;->access$100(Lcom/scand/svg/parser/SVGHandler;)Lcom/scand/svg/css/CascadeEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scand/svg/css/CascadeEngine;->getCascadeResult()Lcom/scand/svg/css/CascadeResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scand/svg/css/CascadeResult;->getProperties()Lcom/scand/svg/css/ElementProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scand/svg/css/ElementProperties;->getPropertySet()Lcom/scand/svg/css/InlineRule;

    move-result-object p1

    new-instance p3, Lcom/scand/svg/parser/Properties;

    invoke-direct {p3, p4, p1}, Lcom/scand/svg/parser/Properties;-><init>(Lorg/xml/sax/Attributes;Lcom/scand/svg/css/InlineRule;)V

    const-string p1, "rect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->mGroup:Lcom/scand/svg/parser/support/ClipPath;

    iget-object p2, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    const/4 p4, 0x1

    invoke-static {p2, p3, p4}, Lcom/scand/svg/parser/SVGHandler;->access$300(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/RectangleSVG;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/support/ClipPath;->addElement(Lcom/scand/svg/parser/support/RectangleSVG;)V

    goto/16 :goto_3

    :cond_4
    const-string p1, "circle"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->mGroup:Lcom/scand/svg/parser/support/ClipPath;

    iget-object p2, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    invoke-static {p2, p3}, Lcom/scand/svg/parser/SVGHandler;->access$400(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/EllipseSVG;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/support/ClipPath;->addElement(Lcom/scand/svg/parser/support/EllipseSVG;)V

    goto :goto_3

    :cond_5
    const-string p1, "ellipse"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->mGroup:Lcom/scand/svg/parser/support/ClipPath;

    iget-object p2, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    invoke-static {p2, p3}, Lcom/scand/svg/parser/SVGHandler;->access$500(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/EllipseSVG;

    move-result-object p2

    goto :goto_1

    :cond_6
    const-string p1, "line"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->mGroup:Lcom/scand/svg/parser/support/ClipPath;

    iget-object p2, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    invoke-static {p2, p3}, Lcom/scand/svg/parser/SVGHandler;->access$600(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/LineSVG;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/support/ClipPath;->addElement(Lcom/scand/svg/parser/support/LineSVG;)V

    goto :goto_3

    :cond_7
    const-string p1, "polygon"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_9

    const-string p4, "polyline"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_2

    :cond_8
    const-string p1, "path"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->mGroup:Lcom/scand/svg/parser/support/ClipPath;

    iget-object p2, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    invoke-static {p2, p3}, Lcom/scand/svg/parser/SVGHandler;->access$800(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/PathExt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/support/ClipPath;->addElement(Lcom/scand/svg/parser/support/PathExt;)V

    goto :goto_3

    :cond_9
    :goto_2
    iget-object p4, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->mGroup:Lcom/scand/svg/parser/support/ClipPath;

    iget-object v0, p0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->this$0:Lcom/scand/svg/parser/SVGHandler;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0, p3, p1}, Lcom/scand/svg/parser/SVGHandler;->access$700(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/PathExt;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/scand/svg/parser/support/ClipPath;->addElement(Lcom/scand/svg/parser/support/PathExt;)V

    :cond_a
    :goto_3
    return-void
.end method
