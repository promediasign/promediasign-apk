.class public Lorg/apache/velocity/exception/TemplateInitException;
.super Lorg/apache/velocity/exception/VelocityException;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/exception/ExtendedParseException;


# static fields
.field private static final serialVersionUID:J = -0x452f136d381ac7ddL


# instance fields
.field private final col:I

.field private final line:I

.field private final templateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/velocity/exception/TemplateInitException;->templateName:Ljava/lang/String;

    iput p3, p0, Lorg/apache/velocity/exception/TemplateInitException;->col:I

    iput p4, p0, Lorg/apache/velocity/exception/TemplateInitException;->line:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/ParseException;Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lorg/apache/velocity/exception/TemplateInitException;->templateName:Ljava/lang/String;

    iput p4, p0, Lorg/apache/velocity/exception/TemplateInitException;->col:I

    iput p5, p0, Lorg/apache/velocity/exception/TemplateInitException;->line:I

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/exception/TemplateInitException;->col:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/exception/TemplateInitException;->line:I

    return v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/exception/TemplateInitException;->templateName:Ljava/lang/String;

    return-object v0
.end method
