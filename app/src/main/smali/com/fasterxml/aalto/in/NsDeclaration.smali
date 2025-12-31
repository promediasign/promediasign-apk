.class public final Lcom/fasterxml/aalto/in/NsDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBinding:Lcom/fasterxml/aalto/in/NsBinding;

.field private final mLevel:I

.field private final mPrevDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

.field private final mPreviousURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/in/NsBinding;Ljava/lang/String;Lcom/fasterxml/aalto/in/NsDeclaration;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    iput-object p3, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mPrevDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

    iput p4, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mLevel:I

    iget-object p3, p1, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    iput-object p3, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mPreviousURI:Ljava/lang/String;

    iput-object p2, p1, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public alreadyDeclared(Ljava/lang/String;I)Z
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mLevel:I

    if-lt v0, p2, :cond_2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsBinding;->mPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mPrevDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

    :goto_0
    if-eqz v0, :cond_2

    iget v2, v0, Lcom/fasterxml/aalto/in/NsDeclaration;->mLevel:I

    if-lt v2, p2, :cond_2

    iget-object v2, v0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object v2, v2, Lcom/fasterxml/aalto/in/NsBinding;->mPrefix:Ljava/lang/String;

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsDeclaration;->mPrevDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public countDeclsOnLevel(I)I
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mLevel:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mPrevDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/fasterxml/aalto/in/NsDeclaration;->mLevel:I

    if-ne v2, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsDeclaration;->mPrevDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public getBinding()Lcom/fasterxml/aalto/in/NsBinding;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    return-object v0
.end method

.method public getCurrNsURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mLevel:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsBinding;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPrev()Lcom/fasterxml/aalto/in/NsDeclaration;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mPrevDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

    return-object v0
.end method

.method public hasNsURI(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasPrefix(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsBinding;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[NS-DECL, prefix = <"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/fasterxml/aalto/in/NsBinding;->mPrefix:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ">, current URI <"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ">, level "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mLevel:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", prev URI <"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mPreviousURI:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, ">]"

    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public unbind()Lcom/fasterxml/aalto/in/NsDeclaration;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mBinding:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mPreviousURI:Ljava/lang/String;

    iput-object v1, v0, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    iget-object v0, p0, Lcom/fasterxml/aalto/in/NsDeclaration;->mPrevDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

    return-object v0
.end method
