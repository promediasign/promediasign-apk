.class public Lorg/apache/velocity/exception/MethodInvocationException;
.super Lorg/apache/velocity/exception/VelocityException;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/exception/ExtendedParseException;


# static fields
.field private static final serialVersionUID:J = 0x656301e2a5a104e6L


# instance fields
.field private final columnNumber:I

.field private final lineNumber:I

.field private final methodName:Ljava/lang/String;

.field private referenceName:Ljava/lang/String;

.field private final templateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/exception/MethodInvocationException;->referenceName:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/velocity/exception/MethodInvocationException;->methodName:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/velocity/exception/MethodInvocationException;->templateName:Ljava/lang/String;

    iput p5, p0, Lorg/apache/velocity/exception/MethodInvocationException;->lineNumber:I

    iput p6, p0, Lorg/apache/velocity/exception/MethodInvocationException;->columnNumber:I

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/exception/MethodInvocationException;->columnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/exception/MethodInvocationException;->lineNumber:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/velocity/exception/MethodInvocationException;->templateName:Ljava/lang/String;

    iget v2, p0, Lorg/apache/velocity/exception/MethodInvocationException;->lineNumber:I

    iget v3, p0, Lorg/apache/velocity/exception/MethodInvocationException;->columnNumber:I

    invoke-static {v1, v2, v3}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/exception/MethodInvocationException;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public setReferenceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/exception/MethodInvocationException;->referenceName:Ljava/lang/String;

    return-void
.end method
