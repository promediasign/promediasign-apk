.class public abstract Lorg/codehaus/stax2/validation/XMLValidationException;
.super Lorg/apache/poi/javax/xml/stream/XMLStreamException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mCause:Lorg/codehaus/stax2/validation/XMLValidationProblem;


# direct methods
.method public constructor <init>(Lorg/codehaus/stax2/validation/XMLValidationProblem;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lorg/codehaus/stax2/validation/XMLValidationException;->throwMissing()V

    :cond_0
    iput-object p1, p0, Lorg/codehaus/stax2/validation/XMLValidationException;->mCause:Lorg/codehaus/stax2/validation/XMLValidationProblem;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/stax2/validation/XMLValidationProblem;Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    if-nez p1, :cond_0

    invoke-static {}, Lorg/codehaus/stax2/validation/XMLValidationException;->throwMissing()V

    :cond_0
    iput-object p1, p0, Lorg/codehaus/stax2/validation/XMLValidationException;->mCause:Lorg/codehaus/stax2/validation/XMLValidationProblem;

    return-void
.end method

.method public static throwMissing()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Validation problem argument can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getValidationProblem()Lorg/codehaus/stax2/validation/XMLValidationProblem;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/validation/XMLValidationException;->mCause:Lorg/codehaus/stax2/validation/XMLValidationProblem;

    return-object v0
.end method
