.class public Lorg/mozilla/javascript/optimizer/ClassCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private mainMethodClassName:Ljava/lang/String;

.field private targetExtends:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private targetImplements:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    const-string p1, "org.mozilla.javascript.optimizer.OptRuntime"

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public compileToClassFiles(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-instance v2, Lorg/mozilla/javascript/Parser;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    invoke-virtual {v2, p1, p2, p3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p1

    new-instance p2, Lorg/mozilla/javascript/IRFactory;

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {p2, p3}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/IRFactory;->transformTree(Lorg/mozilla/javascript/ast/AstRoot;)Lorg/mozilla/javascript/ast/ScriptNode;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->getTargetExtends()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->getTargetImplements()[Ljava/lang/Class;

    move-result-object p3

    const/4 v8, 0x0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_1

    move-object v10, p4

    goto :goto_1

    :cond_1
    const-string v2, "1"

    invoke-virtual {p0, p4, v2}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->makeAuxiliaryClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    :goto_1
    new-instance v2, Lorg/mozilla/javascript/optimizer/Codegen;

    invoke-direct {v2}, Lorg/mozilla/javascript/optimizer/Codegen;-><init>()V

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->setMainMethodClass(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSource()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v4, v10

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/optimizer/Codegen;->compileToClassFile(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)[B

    move-result-object v2

    if-eqz v9, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v10, p1, v8

    aput-object v2, p1, v1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v3

    new-instance v4, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v4, v3}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    const/4 v5, 0x0

    :goto_2
    if-eq v5, v3, :cond_4

    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v6

    invoke-virtual {v4, v7, v6}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_3
    add-int/2addr v5, v1

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    sget-object p2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    :cond_5
    invoke-static {v4, p4, p2, p3, v10}, Lorg/mozilla/javascript/JavaAdapter;->createAdapterCode(Lorg/mozilla/javascript/ObjToIntMap;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p4, p2, v8

    aput-object p1, p2, v1

    aput-object v10, p2, v0

    const/4 p1, 0x3

    aput-object v2, p2, p1

    return-object p2
.end method

.method public getCompilerEnv()Lorg/mozilla/javascript/CompilerEnvirons;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    return-object v0
.end method

.method public getMainMethodClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetExtends()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetExtends:Ljava/lang/Class;

    return-object v0
.end method

.method public getTargetImplements()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetImplements:[Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    :goto_0
    return-object v0
.end method

.method public makeAuxiliaryClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public setMainMethodClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    return-void
.end method

.method public setTargetExtends(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetExtends:Ljava/lang/Class;

    return-void
.end method

.method public setTargetImplements([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    :goto_0
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetImplements:[Ljava/lang/Class;

    return-void
.end method
