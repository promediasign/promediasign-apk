.class public final Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final ALT_BARS:S = 0x3s

.field public static final BIG_SPOTS:S = 0x9s

.field public static final BRICKS:S = 0xas

.field public static final CENTER:S = 0x2s

.field public static final CENTER_SELECTION:S = 0x6s

.field public static final DASHED:S = 0x3s

.field public static final DASH_DOT:S = 0x9s

.field public static final DASH_DOT_DOT:S = 0xbs

.field public static final DIAMONDS:S = 0x10s

.field public static final DOTTED:S = 0x4s

.field public static final DOUBLE:S = 0x6s

.field public static final FILL:S = 0x4s

.field public static final FINE_DOTS:S = 0x2s

.field public static final GENERAL:S = 0x0s

.field public static final HAIR:S = 0x7s

.field public static final JUSTIFY:S = 0x5s

.field public static final LEFT:S = 0x1s

.field public static final MEDIUM:S = 0x2s

.field public static final MEDIUM_DASHED:S = 0x8s

.field public static final MEDIUM_DASH_DOT:S = 0xas

.field public static final MEDIUM_DASH_DOT_DOT:S = 0xcs

.field public static final NONE:S = 0x0s

.field public static final NO_FILL:S = 0x0s

.field public static final NULL:S = -0x10s

.field public static final RIGHT:S = 0x3s

.field public static final SLANTED_DASH_DOT:S = 0xds

.field public static final SOLID_FILL:S = 0x1s

.field public static final SPARSE_DOTS:S = 0x4s

.field public static final SQUARES:S = 0xfs

.field public static final THICK:S = 0x5s

.field public static final THICK_BACKWARD_DIAG:S = 0x7s

.field public static final THICK_FORWARD_DIAG:S = 0x8s

.field public static final THICK_HORZ_BANDS:S = 0x5s

.field public static final THICK_VERT_BANDS:S = 0x6s

.field public static final THIN:S = 0x1s

.field public static final THIN_BACKWARD_DIAG:S = 0xds

.field public static final THIN_FORWARD_DIAG:S = 0xes

.field public static final THIN_HORZ_BANDS:S = 0xbs

.field public static final THIN_VERT_BANDS:S = 0xcs

.field public static final VERTICAL_BOTTOM:S = 0x2s

.field public static final VERTICAL_CENTER:S = 0x1s

.field public static final VERTICAL_JUSTIFY:S = 0x3s

.field public static final VERTICAL_TOP:S = 0x0s

.field public static final XF_CELL:S = 0x0s

.field public static final XF_STYLE:S = 0x1s

.field private static final _123_prefix:Lorg/apache/poi/util/BitField;

.field private static final _adtl_diag:Lorg/apache/poi/util/BitField;

.field private static final _adtl_diag_line_style:Lorg/apache/poi/util/BitField;

.field private static final _adtl_fill_pattern:Lorg/apache/poi/util/BitField;

.field private static final _alignment:Lorg/apache/poi/util/BitField;

.field private static final _border_bottom:Lorg/apache/poi/util/BitField;

.field private static final _border_left:Lorg/apache/poi/util/BitField;

.field private static final _border_right:Lorg/apache/poi/util/BitField;

.field private static final _border_top:Lorg/apache/poi/util/BitField;

.field private static final _bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _diag:Lorg/apache/poi/util/BitField;

.field private static final _fill_background:Lorg/apache/poi/util/BitField;

.field private static final _fill_foreground:Lorg/apache/poi/util/BitField;

.field private static final _hidden:Lorg/apache/poi/util/BitField;

.field private static final _indent:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_border:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_font:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_format:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

.field private static final _justify_last:Lorg/apache/poi/util/BitField;

.field private static final _left_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _locked:Lorg/apache/poi/util/BitField;

.field private static final _merge_cells:Lorg/apache/poi/util/BitField;

.field private static final _parent_index:Lorg/apache/poi/util/BitField;

.field private static final _reading_order:Lorg/apache/poi/util/BitField;

.field private static final _right_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _rotation:Lorg/apache/poi/util/BitField;

.field private static final _shrink_to_fit:Lorg/apache/poi/util/BitField;

.field private static final _top_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _vertical_alignment:Lorg/apache/poi/util/BitField;

.field private static final _wrap_text:Lorg/apache/poi/util/BitField;

.field private static final _xf_type:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0xe0s


# instance fields
.field private field_1_font_index:S

.field private field_2_format_index:S

.field private field_3_cell_options:S

.field private field_4_alignment_options:S

.field private field_5_indention_options:S

.field private field_6_border_options:S

.field private field_7_palette_options:S

.field private field_8_adtl_palette_options:I

.field private field_9_fill_palette_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_locked:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_hidden:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_xf_type:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_123_prefix:Lorg/apache/poi/util/BitField;

    const v1, 0xfff0

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_parent_index:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_alignment:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_wrap_text:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x70

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_vertical_alignment:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_justify_last:Lorg/apache/poi/util/BitField;

    const v0, 0xff00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_rotation:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_shrink_to_fit:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_merge_cells:Lorg/apache/poi/util/BitField;

    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_reading_order:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x400

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_format:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x800

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_font:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x1000

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x2000

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_border:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x4000

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

    const v1, 0x8000

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_left:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf0

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_right:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_top:Lorg/apache/poi/util/BitField;

    const v0, 0xf000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_bottom:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x7f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_left_border_palette_idx:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x3f80

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_right_border_palette_idx:Lorg/apache/poi/util/BitField;

    const v2, 0xc000

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_diag:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_top_border_palette_idx:Lorg/apache/poi/util/BitField;

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

    const v2, 0x1fc000

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag:Lorg/apache/poi/util/BitField;

    const/high16 v2, 0x1e00000

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag_line_style:Lorg/apache/poi/util/BitField;

    const/high16 v2, -0x4000000

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_fill_pattern:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_foreground:Lorg/apache/poi/util/BitField;

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_background:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method


# virtual methods
.method public cloneStyleFrom(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V
    .locals 1

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    iget v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    iget-short p1, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-eqz v2, :cond_b

    check-cast p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    iget-short v3, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    iget-short v3, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    iget-short v3, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    iget-short v3, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    iget-short v3, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    iget-short v3, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    iget-short v3, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    iget v3, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    iget-short p1, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    if-eq v2, p1, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    return v1
.end method

.method public get123Prefix()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_123_prefix:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getAdtlDiag()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getAdtlDiagLineStyle()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag_line_style:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getAdtlFillPattern()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_fill_pattern:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getAdtlPaletteOptions()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return v0
.end method

.method public getAlignment()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getAlignmentOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return v0
.end method

.method public getBorderBottom()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_bottom:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getBorderLeft()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_left:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getBorderOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return v0
.end method

.method public getBorderRight()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_right:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getBorderTop()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_top:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getBottomBorderPaletteIdx()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getCellOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getDiag()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_diag:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getFillBackground()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_background:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getFillForeground()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_foreground:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getFillPaletteOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return v0
.end method

.method public getFontIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    return v0
.end method

.method public getFormatIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    return v0
.end method

.method public getIndent()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getIndentionOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return v0
.end method

.method public getJustifyLast()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_justify_last:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getLeftBorderPaletteIdx()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_left_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getMergeCells()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_merge_cells:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getPaletteOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return v0
.end method

.method public getParentIndex()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_parent_index:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getReadingOrder()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_reading_order:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getRightBorderPaletteIdx()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_right_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getRotation()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_rotation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getShrinkToFit()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_shrink_to_fit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xe0

    return v0
.end method

.method public getTopBorderPaletteIdx()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_top_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getVerticalAlignment()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_vertical_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getWrapText()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_wrap_text:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getXFType()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_xf_type:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    add-int/2addr v0, v1

    return v0
.end method

.method public isHidden()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentAlignment()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentBorder()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_border:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentCellOptions()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentFont()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_font:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentFormat()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_format:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentPattern()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_locked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFormatIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getCellOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignmentOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndentionOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getPaletteOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlPaletteOptions()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillPaletteOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public set123Prefix(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_123_prefix:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public setAdtlDiag(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setAdtlDiagLineStyle(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag_line_style:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setAdtlFillPattern(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_fill_pattern:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setAdtlPaletteOptions(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setAlignment(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setAlignmentOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setBorderBottom(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_bottom:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return-void
.end method

.method public setBorderLeft(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_left:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return-void
.end method

.method public setBorderOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return-void
.end method

.method public setBorderRight(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_right:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return-void
.end method

.method public setBorderTop(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_top:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return-void
.end method

.method public setBottomBorderPaletteIdx(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setCellOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public setDiag(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_diag:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return-void
.end method

.method public setFillBackground(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_background:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method

.method public setFillForeground(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_foreground:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method

.method public setFillPaletteOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method

.method public setFontIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    return-void
.end method

.method public setFormatIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public setIndent(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentAlignment(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentBorder(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_border:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentCellOptions(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentFont(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_font:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentFormat(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_format:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentPattern(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentionOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setJustifyLast(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_justify_last:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setLeftBorderPaletteIdx(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_left_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return-void
.end method

.method public setLocked(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_locked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public setMergeCells(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_merge_cells:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setPaletteOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return-void
.end method

.method public setParentIndex(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_parent_index:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public setReadingOrder(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_reading_order:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setRightBorderPaletteIdx(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_right_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return-void
.end method

.method public setRotation(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_rotation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setShrinkToFit(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_shrink_to_fit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setTopBorderPaletteIdx(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_top_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setVerticalAlignment(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_vertical_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setWrapText(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_wrap_text:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setXFType(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_xf_type:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public stateSummary()[I
    .locals 9

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    iget-short v4, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    iget-short v5, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    iget-short v6, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    iget v7, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    iget-short v8, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    filled-new-array/range {v0 .. v8}, [I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[EXTENDEDFORMAT]\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getXFType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, " STYLE_RECORD_TYPE\n"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getXFType()S

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " CELL_RECORD_TYPE\n"

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "    .fontindex       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .formatindex     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFormatIndex()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .celloptions     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getCellOptions()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .islocked  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .ishidden  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .recordtype= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getXFType()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .parentidx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getParentIndex()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .alignmentoptions= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignmentOptions()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .alignment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignment()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n          .wraptext  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getWrapText()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .valignment= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getVerticalAlignment()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .justlast  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getJustifyLast()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .rotation  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getRotation()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .indentionoptions= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndentionOptions()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .indent    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndent()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .shrinktoft= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getShrinkToFit()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .mergecells= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getMergeCells()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .readngordr= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getReadingOrder()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .formatflag= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentFormat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .fontflag  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentFont()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .prntalgnmt= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentAlignment()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .borderflag= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentBorder()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .paternflag= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentPattern()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .celloption= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentCellOptions()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n    .borderoptns     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderOptions()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .lftln     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderLeft()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .rgtln     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderRight()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .topln     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderTop()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .btmln     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderBottom()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .paleteoptns     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getPaletteOptions()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .leftborder= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getLeftBorderPaletteIdx()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .rghtborder= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getRightBorderPaletteIdx()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .diag      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getDiag()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .paleteoptn2     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlPaletteOptions()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .topborder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getTopBorderPaletteIdx()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .botmborder= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBottomBorderPaletteIdx()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .adtldiag  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlDiag()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .diaglnstyl= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlDiagLineStyle()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .fillpattrn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlFillPattern()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .fillpaloptn     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillPaletteOptions()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .foreground= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .background= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/EXTENDEDFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
