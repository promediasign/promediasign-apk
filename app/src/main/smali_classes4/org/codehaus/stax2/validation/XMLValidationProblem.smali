.class public Lorg/codehaus/stax2/validation/XMLValidationProblem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mLocation:Lorg/apache/poi/javax/xml/stream/Location;

.field protected final mMessage:Ljava/lang/String;

.field protected final mSeverity:I

.field protected mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/stax2/validation/XMLValidationProblem;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/stax2/validation/XMLValidationProblem;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    iput-object p2, p0, Lorg/codehaus/stax2/validation/XMLValidationProblem;->mMessage:Ljava/lang/String;

    iput p3, p0, Lorg/codehaus/stax2/validation/XMLValidationProblem;->mSeverity:I

    iput-object p4, p0, Lorg/codehaus/stax2/validation/XMLValidationProblem;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/validation/XMLValidationProblem;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/validation/XMLValidationProblem;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSeverity()I
    .locals 1

    iget v0, p0, Lorg/codehaus/stax2/validation/XMLValidationProblem;->mSeverity:I

    return v0
.end method
