.class public interface abstract Lorg/apache/velocity/runtime/parser/node/ParserTreeConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JJTADDNODE:I = 0x25

.field public static final JJTANDNODE:I = 0x1e

.field public static final JJTASSIGNMENT:I = 0x1c

.field public static final JJTBLOCK:I = 0xe

.field public static final JJTCOMMENT:I = 0x5

.field public static final JJTDIRECTIVE:I = 0xd

.field public static final JJTDIRECTIVEASSIGN:I = 0xc

.field public static final JJTDIVNODE:I = 0x28

.field public static final JJTELSEIFSTATEMENT:I = 0x19

.field public static final JJTELSESTATEMENT:I = 0x18

.field public static final JJTEQNODE:I = 0x1f

.field public static final JJTESCAPE:I = 0x4

.field public static final JJTESCAPEDDIRECTIVE:I = 0x3

.field public static final JJTEXPRESSION:I = 0x1b

.field public static final JJTFALSE:I = 0x16

.field public static final JJTFLOATINGPOINTLITERAL:I = 0x7

.field public static final JJTGENODE:I = 0x24

.field public static final JJTGTNODE:I = 0x22

.field public static final JJTIDENTIFIER:I = 0xa

.field public static final JJTIFSTATEMENT:I = 0x17

.field public static final JJTINDEX:I = 0x13

.field public static final JJTINTEGERLITERAL:I = 0x8

.field public static final JJTINTEGERRANGE:I = 0x11

.field public static final JJTLENODE:I = 0x23

.field public static final JJTLTNODE:I = 0x21

.field public static final JJTMAP:I = 0xf

.field public static final JJTMETHOD:I = 0x12

.field public static final JJTMODNODE:I = 0x29

.field public static final JJTMULNODE:I = 0x27

.field public static final JJTNEGATENODE:I = 0x2b

.field public static final JJTNENODE:I = 0x20

.field public static final JJTNOTNODE:I = 0x2a

.field public static final JJTOBJECTARRAY:I = 0x10

.field public static final JJTORNODE:I = 0x1d

.field public static final JJTPROCESS:I = 0x0

.field public static final JJTREFERENCE:I = 0x14

.field public static final JJTSETDIRECTIVE:I = 0x1a

.field public static final JJTSTRINGLITERAL:I = 0x9

.field public static final JJTSUBTRACTNODE:I = 0x26

.field public static final JJTTEXT:I = 0x2

.field public static final JJTTEXTBLOCK:I = 0x6

.field public static final JJTTRUE:I = 0x15

.field public static final JJTVOID:I = 0x1

.field public static final JJTWORD:I = 0xb

.field public static final jjtNodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 44

    const-string v42, "NotNode"

    const-string v43, "NegateNode"

    const-string v0, "process"

    const-string v1, "void"

    const-string v2, "Text"

    const-string v3, "EscapedDirective"

    const-string v4, "Escape"

    const-string v5, "Comment"

    const-string v6, "Textblock"

    const-string v7, "FloatingPointLiteral"

    const-string v8, "IntegerLiteral"

    const-string v9, "StringLiteral"

    const-string v10, "Identifier"

    const-string v11, "Word"

    const-string v12, "DirectiveAssign"

    const-string v13, "Directive"

    const-string v14, "Block"

    const-string v15, "Map"

    const-string v16, "ObjectArray"

    const-string v17, "IntegerRange"

    const-string v18, "Method"

    const-string v19, "Index"

    const-string v20, "Reference"

    const-string v21, "True"

    const-string v22, "False"

    const-string v23, "IfStatement"

    const-string v24, "ElseStatement"

    const-string v25, "ElseIfStatement"

    const-string v26, "SetDirective"

    const-string v27, "Expression"

    const-string v28, "Assignment"

    const-string v29, "OrNode"

    const-string v30, "AndNode"

    const-string v31, "EQNode"

    const-string v32, "NENode"

    const-string v33, "LTNode"

    const-string v34, "GTNode"

    const-string v35, "LENode"

    const-string v36, "GENode"

    const-string v37, "AddNode"

    const-string v38, "SubtractNode"

    const-string v39, "MulNode"

    const-string v40, "DivNode"

    const-string v41, "ModNode"

    filled-new-array/range {v0 .. v43}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/velocity/runtime/parser/node/ParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    return-void
.end method
