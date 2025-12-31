.class public interface abstract Lorg/apache/velocity/runtime/parser/ParserConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALPHA_CHAR:I = 0x3d

.field public static final BRACKETED_WORD:I = 0x3c

.field public static final COLON:I = 0x7

.field public static final COMMA:I = 0x5

.field public static final DEFAULT:I = 0x6

.field public static final DIGIT:I = 0x35

.field public static final DIRECTIVE:I = 0x4

.field public static final DIRECTIVE_CHAR:I = 0x3a

.field public static final DIRECTIVE_TERMINATOR:I = 0x44

.field public static final DIVIDE:I = 0x25

.field public static final DOLLAR:I = 0xf

.field public static final DOLLARBANG:I = 0x10

.field public static final DOT:I = 0x40

.field public static final DOUBLEDOT:I = 0x6

.field public static final DOUBLE_ESCAPE:I = 0x45

.field public static final ELSE:I = 0x34

.field public static final ELSEIF:I = 0x33

.field public static final EMPTY_INDEX:I = 0x49

.field public static final END:I = 0x31

.field public static final EOF:I = 0x0

.field public static final EQUALS:I = 0x30

.field public static final ESCAPE:I = 0x46

.field public static final ESCAPE_DIRECTIVE:I = 0xd

.field public static final EXPONENT:I = 0x38

.field public static final FALSE:I = 0x21

.field public static final FLOATING_POINT_LITERAL:I = 0x37

.field public static final FORMAL_COMMENT:I = 0x17

.field public static final HASH:I = 0x14

.field public static final IDENTIFIER:I = 0x3f

.field public static final IDENTIFIER_CHAR:I = 0x3e

.field public static final IF_DIRECTIVE:I = 0x32

.field public static final INDEX_LBRACKET:I = 0x1

.field public static final INDEX_RBRACKET:I = 0x2

.field public static final INLINE_TEXT:I = 0x48

.field public static final INTEGER_LITERAL:I = 0x36

.field public static final IN_FORMAL_COMMENT:I = 0xb

.field public static final IN_MULTI_LINE_COMMENT:I = 0xa

.field public static final IN_SINGLE_LINE_COMMENT:I = 0xc

.field public static final IN_TEXTBLOCK:I = 0x9

.field public static final LBRACKET:I = 0x3

.field public static final LCURLY:I = 0x41

.field public static final LEFT_CURLEY:I = 0x8

.field public static final LETTER:I = 0x39

.field public static final LOGICAL_AND:I = 0x27

.field public static final LOGICAL_EQUALS:I = 0x2d

.field public static final LOGICAL_GE:I = 0x2c

.field public static final LOGICAL_GT:I = 0x2b

.field public static final LOGICAL_LE:I = 0x2a

.field public static final LOGICAL_LT:I = 0x29

.field public static final LOGICAL_NOT:I = 0x2f

.field public static final LOGICAL_NOT_EQUALS:I = 0x2e

.field public static final LOGICAL_OR:I = 0x28

.field public static final LPAREN:I = 0xa

.field public static final MINUS:I = 0x22

.field public static final MODULUS:I = 0x26

.field public static final MULTIPLY:I = 0x24

.field public static final MULTI_LINE_COMMENT:I = 0x18

.field public static final NEWLINE:I = 0x1d

.field public static final PLUS:I = 0x23

.field public static final PRE_DIRECTIVE:I = 0xd

.field public static final PRE_REFERENCE:I = 0x7

.field public static final RBRACKET:I = 0x4

.field public static final RCURLY:I = 0x42

.field public static final REFERENCE:I = 0x0

.field public static final REFERENCE_TERMINATOR:I = 0x43

.field public static final REFINDEX:I = 0x3

.field public static final REFMOD:I = 0x8

.field public static final REFMOD2:I = 0x5

.field public static final REFMOD2_RPAREN:I = 0xc

.field public static final REFMOD3:I = 0x2

.field public static final REFMODIFIER:I = 0x1

.field public static final RIGHT_CURLEY:I = 0x9

.field public static final RPAREN:I = 0xb

.field public static final SET_DIRECTIVE:I = 0xe

.field public static final SINGLE_LINE_COMMENT:I = 0x16

.field public static final SINGLE_LINE_COMMENT_START:I = 0x15

.field public static final STRING_LITERAL:I = 0x1f

.field public static final SUFFIX:I = 0x1e

.field public static final TEXT:I = 0x47

.field public static final TEXTBLOCK:I = 0x19

.field public static final TRUE:I = 0x20

.field public static final WHITESPACE:I = 0x1c

.field public static final WORD:I = 0x3b

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 74

    const-string v72, "<INLINE_TEXT>"

    const-string v73, "<EMPTY_INDEX>"

    const-string v0, "<EOF>"

    const-string v1, "\"[\""

    const-string v2, "\"]\""

    const-string v3, "\"[\""

    const-string v4, "\"]\""

    const-string v5, "\",\""

    const-string v6, "\"..\""

    const-string v7, "\":\""

    const-string v8, "\"{\""

    const-string v9, "\"}\""

    const-string v10, "\"(\""

    const-string v11, "\")\""

    const-string v12, "\")\""

    const-string v13, "<ESCAPE_DIRECTIVE>"

    const-string v14, "<SET_DIRECTIVE>"

    const-string v15, "<DOLLAR>"

    const-string v16, "<DOLLARBANG>"

    const-string v17, "\"#[[\""

    const-string v18, "<token of kind 18>"

    const-string v19, "\"#*\""

    const-string v20, "\"#\""

    const-string v21, "\"##\""

    const-string v22, "<SINGLE_LINE_COMMENT>"

    const-string v23, "\"*#\""

    const-string v24, "\"*#\""

    const-string v25, "\"]]#\""

    const-string v26, "<token of kind 26>"

    const-string v27, "<token of kind 27>"

    const-string v28, "<WHITESPACE>"

    const-string v29, "<NEWLINE>"

    const-string v30, "<SUFFIX>"

    const-string v31, "<STRING_LITERAL>"

    const-string v32, "\"true\""

    const-string v33, "\"false\""

    const-string v34, "\"-\""

    const-string v35, "\"+\""

    const-string v36, "\"*\""

    const-string v37, "\"/\""

    const-string v38, "\"%\""

    const-string v39, "<LOGICAL_AND>"

    const-string v40, "<LOGICAL_OR>"

    const-string v41, "<LOGICAL_LT>"

    const-string v42, "<LOGICAL_LE>"

    const-string v43, "<LOGICAL_GT>"

    const-string v44, "<LOGICAL_GE>"

    const-string v45, "<LOGICAL_EQUALS>"

    const-string v46, "<LOGICAL_NOT_EQUALS>"

    const-string v47, "<LOGICAL_NOT>"

    const-string v48, "\"=\""

    const-string v49, "<END>"

    const-string v50, "<IF_DIRECTIVE>"

    const-string v51, "<ELSEIF>"

    const-string v52, "<ELSE>"

    const-string v53, "<DIGIT>"

    const-string v54, "<INTEGER_LITERAL>"

    const-string v55, "<FLOATING_POINT_LITERAL>"

    const-string v56, "<EXPONENT>"

    const-string v57, "<LETTER>"

    const-string v58, "<DIRECTIVE_CHAR>"

    const-string v59, "<WORD>"

    const-string v60, "<BRACKETED_WORD>"

    const-string v61, "<ALPHA_CHAR>"

    const-string v62, "<IDENTIFIER_CHAR>"

    const-string v63, "<IDENTIFIER>"

    const-string v64, "<DOT>"

    const-string v65, "\"{\""

    const-string v66, "\"}\""

    const-string v67, "<REFERENCE_TERMINATOR>"

    const-string v68, "<DIRECTIVE_TERMINATOR>"

    const-string v69, "\"\\\\\\\\\""

    const-string v70, "\"\\\\\""

    const-string v71, "<TEXT>"

    filled-new-array/range {v0 .. v73}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/velocity/runtime/parser/ParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
