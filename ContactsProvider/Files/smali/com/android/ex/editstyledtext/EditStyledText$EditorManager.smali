.class Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# instance fields
.field private cn:Lcom/android/ex/editstyledtext/EditStyledText;

.field private hp:I

.field private iX:Z

.field private iY:Z

.field private iZ:Z

.field private ja:Z

.field private jb:Z

.field private jc:I

.field private jd:I

.field private je:I

.field private jf:I

.field private jg:Landroid/text/style/BackgroundColorSpan;

.field private jh:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

.field private ji:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

.field private jj:Landroid/text/SpannableStringBuilder;

.field final synthetic jk:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mMode:I

.field private mState:I


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0xffffff

    const/4 v0, 0x0

    .line 963
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jk:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iX:Z

    .line 945
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iY:Z

    .line 946
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iZ:Z

    .line 947
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ja:Z

    .line 948
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jb:Z

    .line 949
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 950
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 951
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    .line 952
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    .line 953
    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->je:I

    .line 954
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jf:I

    .line 955
    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->hp:I

    .line 964
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 965
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {v0, p1, v1, p0, p3}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jh:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    .line 966
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ji:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    .line 967
    return-void
.end method

.method private H(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 1679
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1680
    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1681
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v2

    .line 1682
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/Editable;I)I

    move-result v0

    .line 1683
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Landroid/text/Editable;I)I

    move-result v1

    .line 1684
    if-ne v0, v1, :cond_0

    .line 1685
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v4, "\n"

    invoke-interface {v3, v1, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1686
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Ljava/lang/Object;II)V

    .line 1690
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1691
    return-void

    .line 1688
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method private a(Landroid/text/Editable;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1744
    move v0, p2

    .line 1745
    :goto_0
    if-lez v0, :cond_0

    .line 1746
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1751
    :cond_0
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- findLineStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    return v0

    .line 1745
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1459
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1460
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v3, Landroid/text/style/DynamicDrawableSpan;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/DynamicDrawableSpan;

    .line 1462
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 1463
    instance-of v5, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-nez v5, :cond_0

    instance-of v5, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    if-eqz v5, :cond_1

    .line 1465
    :cond_0
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1466
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1467
    const-string v6, ""

    invoke-virtual {v2, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1462
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1470
    :cond_2
    return-object v2
.end method

.method private a(Landroid/text/style/DynamicDrawableSpan;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1730
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- insertImageSpan:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "\ufffc"

    invoke-interface {v0, p2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1734
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x21

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1736
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1741
    :goto_0
    return-void

    .line 1738
    :cond_0
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- insertImageSpan: null span was inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->af(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 940
    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->h(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->h(Landroid/net/Uri;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1078
    const-string v1, "EditStyledText"

    const-string v2, "--- onClearStyles"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1081
    instance-of v2, p1, Landroid/text/Editable;

    if-eqz v2, :cond_4

    .line 1082
    check-cast p1, Landroid/text/Editable;

    .line 1083
    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 1084
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 1085
    instance-of v4, v3, Landroid/text/style/ParagraphStyle;

    if-nez v4, :cond_0

    instance-of v4, v3, Landroid/text/style/QuoteSpan;

    if-nez v4, :cond_0

    instance-of v4, v3, Landroid/text/style/CharacterStyle;

    if-eqz v4, :cond_3

    instance-of v4, v3, Landroid/text/style/UnderlineSpan;

    if-nez v4, :cond_3

    .line 1088
    :cond_0
    instance-of v4, v3, Landroid/text/style/ImageSpan;

    if-nez v4, :cond_1

    instance-of v4, v3, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v4, :cond_2

    .line 1089
    :cond_1
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1090
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 1091
    const-string v6, ""

    invoke-interface {p1, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1093
    :cond_2
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1084
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1097
    :cond_4
    return-void
.end method

.method private a(Ljava/lang/Object;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1670
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- setStyledTextSpan:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1673
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1674
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/16 v3, 0x21

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1675
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1676
    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jb:Z

    return v0
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jb:Z

    return p1
.end method

.method private ad(I)V
    .locals 3
    .parameter

    .prologue
    .line 1056
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->b(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1058
    return-void
.end method

.method private ae(I)V
    .locals 0
    .parameter

    .prologue
    .line 1245
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 1246
    return-void
.end method

.method private af(I)V
    .locals 0
    .parameter

    .prologue
    .line 1249
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1250
    return-void
.end method

.method private ah(I)V
    .locals 3
    .parameter

    .prologue
    .line 1694
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    if-eq v0, v1, :cond_0

    .line 1695
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Ljava/lang/Object;II)V

    .line 1699
    :goto_0
    return-void

    .line 1697
    :cond_0
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "---changeSize: Size of the span is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ai(I)V
    .locals 3
    .parameter

    .prologue
    .line 1702
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    if-eq v0, v1, :cond_0

    .line 1703
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Ljava/lang/Object;II)V

    .line 1707
    :goto_0
    return-void

    .line 1705
    :cond_0
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "---changeColor: Size of the span is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private aj(I)V
    .locals 3
    .parameter

    .prologue
    .line 1723
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- addMarquee:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->H(Ljava/lang/Object;)V

    .line 1726
    return-void
.end method

.method private b(Landroid/text/Editable;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1758
    move v0, p2

    .line 1759
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1760
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1761
    add-int/lit8 v0, v0, 0x1

    .line 1766
    :cond_0
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- findLineEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    return v0

    .line 1759
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter

    .prologue
    .line 1710
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v0, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->H(Ljava/lang/Object;)V

    .line 1711
    return-void
.end method

.method static synthetic b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->du()V

    return-void
.end method

.method static synthetic b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ae(I)V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1497
    const-string v2, "EditStyledText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- isClipBoardChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_1

    .line 1515
    :cond_0
    :goto_0
    return v0

    .line 1502
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1503
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 1505
    const-string v2, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- clipBoard:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v3, v2, :cond_0

    move v2, v1

    .line 1510
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1511
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1510
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1515
    goto :goto_0
.end method

.method static synthetic c(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dq()V

    return-void
.end method

.method static synthetic c(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ad(I)V

    return-void
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1773
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 1774
    check-cast p1, Landroid/text/Spannable;

    .line 1775
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 1777
    const-string v2, "EditStyledText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- dumpSpannableString, txt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 1780
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1782
    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- dumpSpannableString, class:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1790
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dr()V

    return-void
.end method

.method private dA()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1642
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- waitSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ja:Z

    .line 1645
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    if-ne v0, v1, :cond_0

    .line 1646
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1651
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->b(Landroid/view/View;Landroid/text/Spannable;)V

    .line 1652
    return-void

    .line 1648
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_0
.end method

.method private dB()V
    .locals 2

    .prologue
    .line 1656
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- resumeSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ja:Z

    .line 1659
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1661
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Landroid/view/View;Landroid/text/Spannable;)V

    .line 1662
    return-void
.end method

.method private dC()Z
    .locals 2

    .prologue
    .line 1665
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dD()V
    .locals 1

    .prologue
    .line 1714
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->aj(I)V

    .line 1715
    return-void
.end method

.method private dE()V
    .locals 1

    .prologue
    .line 1718
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->aj(I)V

    .line 1719
    return-void
.end method

.method private db()V
    .locals 0

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->du()V

    .line 986
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dF()V

    .line 987
    return-void
.end method

.method private dd()V
    .locals 5

    .prologue
    .line 1062
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onInsertHorizontalLine:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    .line 1065
    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    const-string v3, "\n"

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1068
    :goto_0
    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    const/high16 v2, -0x100

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;-><init>(IILandroid/text/Spannable;)V

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1071
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    const-string v3, "\n"

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1072
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    .line 1073
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1074
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private de()V
    .locals 2

    .prologue
    .line 1109
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClearStyles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->c(Lcom/android/ex/editstyledtext/EditStyledText;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    const v0, 0xffffff

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->hp:I

    .line 1114
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->df()V

    .line 1115
    return-void
.end method

.method private do()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1418
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- handleCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 1421
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1422
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iX:Z

    .line 1423
    const v0, 0xffffff

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->je:I

    .line 1424
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jf:I

    .line 1425
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ja:Z

    .line 1426
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iY:Z

    .line 1427
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iZ:Z

    .line 1428
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jb:Z

    .line 1429
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dw()V

    .line 1430
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1431
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dI()V

    .line 1432
    return-void
.end method

.method private dp()V
    .locals 3

    .prologue
    .line 1436
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- handleComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iX:Z

    if-nez v0, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1441
    :cond_0
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    if-ne v0, v1, :cond_1

    .line 1443
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- cancel handle complete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->du()V

    goto :goto_0

    .line 1448
    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1449
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1452
    :cond_2
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jh:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->an(I)Z

    .line 1454
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method private dq()V
    .locals 3

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1475
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1476
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    .line 1477
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1478
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jk:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1481
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1483
    invoke-direct {p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->c(Ljava/lang/CharSequence;)V

    .line 1484
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->c(Ljava/lang/CharSequence;)V

    .line 1486
    return-void
.end method

.method private dr()V
    .locals 3

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dq()V

    .line 1490
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1491
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1492
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1493
    return-void
.end method

.method private ds()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1519
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1520
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1522
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1523
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jk:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "clipboard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1526
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iZ:Z

    .line 1527
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v4, v3, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1528
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1530
    const-string v0, "EditStyledText"

    const-string v2, "--- handlePaste: startPasteImage"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v4, Landroid/text/style/DynamicDrawableSpan;

    invoke-virtual {v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/DynamicDrawableSpan;

    .line 1535
    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 1536
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1537
    instance-of v6, v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v6, :cond_1

    .line 1538
    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    const/high16 v6, -0x100

    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v8}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;-><init>(IILandroid/text/Spannable;)V

    add-int/2addr v5, v3

    invoke-direct {p0, v1, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1535
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1540
    :cond_1
    instance-of v6, v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    if-eqz v6, :cond_0

    .line 1541
    new-instance v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->eT()Landroid/net/Uri;

    move-result-object v1

    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v8}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v8

    invoke-direct {v6, v7, v1, v8}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    add-int v1, v3, v5

    invoke-direct {p0, v6, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/style/DynamicDrawableSpan;I)V

    goto :goto_1

    .line 1548
    :cond_2
    return-void
.end method

.method private dt()V
    .locals 2

    .prologue
    .line 1551
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iX:Z

    if-nez v0, :cond_0

    .line 1555
    :goto_0
    return-void

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jh:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->ac(I)V

    goto :goto_0
.end method

.method private du()V
    .locals 3

    .prologue
    .line 1566
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->do()V

    .line 1567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iX:Z

    .line 1568
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1569
    return-void
.end method

.method private dv()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1573
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- onSelect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1577
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    if-ge v0, v1, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1579
    iput v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1590
    :goto_0
    return-void

    .line 1580
    :cond_0
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    if-le v0, v1, :cond_1

    .line 1581
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1582
    iput v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_0

    .line 1584
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_0

    .line 1587
    :cond_2
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select is on, but cursor positions are illigal.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dw()V
    .locals 2

    .prologue
    .line 1594
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- offSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Landroid/view/View;Landroid/text/Spannable;)V

    .line 1598
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1599
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1, v0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1600
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1601
    return-void
.end method

.method private dx()V
    .locals 2

    .prologue
    .line 1605
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setSelectStartPos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    .line 1608
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1609
    return-void
.end method

.method private dy()V
    .locals 2

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    if-ne v0, v1, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ag(I)V

    .line 1617
    :goto_0
    return-void

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ag(I)V

    goto :goto_0
.end method

.method private dz()Z
    .locals 3

    .prologue
    .line 1629
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- waitingNext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1632
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dA()V

    .line 1633
    const/4 v0, 0x1

    .line 1636
    :goto_0
    return v0

    .line 1635
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dB()V

    .line 1636
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dC()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dx()V

    return-void
.end method

.method static synthetic g(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dy()V

    return-void
.end method

.method private h(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1316
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    .line 1317
    iput p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    .line 1318
    return-void
.end method

.method private h(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 1051
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1053
    return-void
.end method

.method static synthetic h(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ds()V

    return-void
.end method

.method static synthetic i(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->selectAll()V

    return-void
.end method

.method static synthetic j(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dd()V

    return-void
.end method

.method static synthetic k(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->de()V

    return-void
.end method

.method static synthetic l(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dp()V

    return-void
.end method

.method static synthetic m(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->db()V

    return-void
.end method

.method static synthetic n(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->do()V

    return-void
.end method

.method private selectAll()V
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 1559
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    .line 1560
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    .line 1561
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 1562
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1563
    return-void
.end method


# virtual methods
.method public F(I)V
    .locals 2
    .parameter

    .prologue
    .line 1208
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1209
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->aj(I)V

    .line 1210
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->du()V

    .line 1212
    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jh:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->ac(I)V

    .line 979
    if-eqz p2, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 982
    :cond_0
    return-void
.end method

.method public a(Landroid/text/Editable;III)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1323
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpanPrevious:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    add-int v4, p2, p4

    .line 1326
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1327
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1328
    const-class v1, Ljava/lang/Object;

    invoke-interface {p1, v0, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1329
    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v7, v5, v3

    .line 1330
    instance-of v0, v7, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_0

    instance-of v0, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_0

    instance-of v0, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_0

    instance-of v0, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_4

    .line 1332
    :cond_0
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 1333
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1335
    const-string v0, "EditStyledText.EditorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spantype:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    instance-of v0, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_1

    instance-of v0, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_3

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Landroid/text/Editable;I)I

    move-result v0

    .line 1346
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1348
    const-string v1, "EditStyledText.EditorManager"

    const-string v9, "updateSpanPrevious: extend span"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/16 v1, 0x21

    invoke-interface {p1, v7, v8, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1329
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1342
    :cond_3
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iZ:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 1343
    goto :goto_1

    .line 1353
    :cond_4
    instance-of v0, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v0, :cond_2

    .line 1354
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1355
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1356
    if-le p3, p4, :cond_5

    .line 1360
    const-string v8, ""

    invoke-interface {p1, v0, v1, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1361
    invoke-interface {p1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    .line 1365
    :cond_5
    if-ne v1, v4, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 1367
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 1372
    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public a(Landroid/text/Layout$Alignment;)V
    .locals 2
    .parameter

    .prologue
    .line 1187
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1188
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Landroid/text/Layout$Alignment;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->du()V

    .line 1191
    :cond_1
    return-void
.end method

.method public ac(I)V
    .locals 1
    .parameter

    .prologue
    .line 974
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(IZ)V

    .line 975
    return-void
.end method

.method public ag(I)V
    .locals 3
    .parameter

    .prologue
    .line 1621
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- setSelectedEndPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    .line 1624
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dv()V

    .line 1625
    return-void
.end method

.method public b(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1156
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setItemSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jf:I

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1161
    :cond_2
    if-lez p1, :cond_3

    .line 1162
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ah(I)V

    .line 1164
    :cond_3
    if-eqz p2, :cond_0

    .line 1165
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->du()V

    goto :goto_0
.end method

.method public b(Landroid/text/Editable;III)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1376
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpanNext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    add-int v3, p2, p4

    .line 1379
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1380
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1381
    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v0, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 1382
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    .line 1383
    instance-of v0, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_0

    instance-of v0, v6, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_4

    .line 1384
    :cond_0
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1385
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 1387
    const-string v0, "EditStyledText.EditorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spantype:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    instance-of v0, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_1

    instance-of v0, v6, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_6

    .line 1391
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/Editable;I)I

    move-result v0

    .line 1393
    :goto_1
    if-ge v0, v7, :cond_3

    if-le p3, p4, :cond_3

    .line 1394
    invoke-interface {p1, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1382
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1395
    :cond_3
    if-le v7, v1, :cond_2

    .line 1396
    const/16 v0, 0x21

    invoke-interface {p1, v6, v1, v8, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 1398
    :cond_4
    instance-of v0, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v0, :cond_2

    .line 1399
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1402
    if-ne v0, v3, :cond_2

    if-lez v3, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v6, "\n"

    invoke-interface {v0, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1404
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0, v3}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    goto :goto_2

    .line 1408
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public bq()V
    .locals 3

    .prologue
    .line 1034
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onFixSelectedItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dp()V

    .line 1037
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1038
    return-void
.end method

.method public bs()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jh:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->ac(I)V

    .line 1101
    return-void
.end method

.method public bt()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1129
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onRefreshStyles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1132
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1133
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v5

    .line 1134
    const-class v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    invoke-interface {v4, v3, v2, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    .line 1135
    array-length v6, v0

    move v1, v3

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v0, v1

    .line 1136
    invoke-virtual {v7, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;->f(I)V

    .line 1135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1138
    :cond_0
    const-class v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    invoke-interface {v4, v3, v2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    .line 1139
    array-length v5, v1

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .line 1140
    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->aJ(I)V

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1143
    :cond_1
    array-length v0, v0

    if-lez v0, :cond_2

    .line 1146
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1148
    :cond_2
    return-void
.end method

.method public bu()Z
    .locals 1

    .prologue
    .line 1263
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iX:Z

    return v0
.end method

.method public bv()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1268
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1269
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1270
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    array-length v0, v0

    if-gtz v0, :cond_0

    const-class v0, Landroid/text/style/QuoteSpan;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/QuoteSpan;

    array-length v0, v0

    if-gtz v0, :cond_0

    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    array-length v0, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->hp:I

    const v2, 0xffffff

    if-eq v0, v2, :cond_1

    .line 1274
    :cond_0
    const/4 v0, 0x1

    .line 1276
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bw()Z
    .locals 1

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iY:Z

    return v0
.end method

.method public bx()I
    .locals 1

    .prologue
    .line 1296
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    return v0
.end method

.method public c(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1172
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setItemColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->je:I

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1177
    :cond_2
    const v0, 0xffffff

    if-eq p1, v0, :cond_3

    .line 1178
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ai(I)V

    .line 1180
    :cond_3
    if-eqz p2, :cond_0

    .line 1181
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->du()V

    goto :goto_0
.end method

.method public dF()V
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->i(II)V

    .line 1794
    return-void
.end method

.method public dG()V
    .locals 4

    .prologue
    .line 1815
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- hidesoftkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1826
    :goto_0
    return-void

    .line 1820
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ji:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    .line 1821
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ji:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    .line 1822
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1825
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ji:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    goto :goto_0
.end method

.method public dH()V
    .locals 2

    .prologue
    .line 1830
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- blockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dG()V

    .line 1833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iY:Z

    .line 1834
    return-void
.end method

.method public dI()V
    .locals 2

    .prologue
    .line 1838
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- unblockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->iY:Z

    .line 1841
    return-void
.end method

.method public dc()V
    .locals 3

    .prologue
    .line 1007
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jh:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->dZ()V

    .line 1011
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1013
    :cond_1
    return-void
.end method

.method public df()V
    .locals 4

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1119
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1120
    invoke-interface {v1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2060

    if-ne v2, v3, :cond_0

    .line 1121
    add-int/lit8 v2, v0, 0x1

    const-string v3, ""

    invoke-interface {v1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1122
    add-int/lit8 v0, v0, -0x1

    .line 1119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    :cond_1
    return-void
.end method

.method public dg()V
    .locals 2

    .prologue
    .line 1194
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1195
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dD()V

    .line 1196
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->du()V

    .line 1198
    :cond_1
    return-void
.end method

.method public dh()V
    .locals 2

    .prologue
    .line 1201
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1202
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dE()V

    .line 1203
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->du()V

    .line 1205
    :cond_1
    return-void
.end method

.method public di()V
    .locals 2

    .prologue
    .line 1254
    const-string v0, "EditStyledText"

    const-string v1, "--- unsetTextComposingMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jg:Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jg:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jg:Landroid/text/style/BackgroundColorSpan;

    .line 1260
    :cond_0
    return-void
.end method

.method public dj()Z
    .locals 1

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ja:Z

    return v0
.end method

.method public dk()I
    .locals 1

    .prologue
    .line 1292
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    return v0
.end method

.method public dl()I
    .locals 1

    .prologue
    .line 1308
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jf:I

    return v0
.end method

.method public dm()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->je:I

    return v0
.end method

.method public dn()Z
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jj:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 3
    .parameter

    .prologue
    .line 991
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 994
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    if-nez v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jh:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->dZ()V

    .line 1000
    :goto_0
    if-eqz p1, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1003
    :cond_0
    return-void

    .line 997
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dw()V

    .line 998
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jh:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->dZ()V

    goto :goto_0
.end method

.method public g(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1216
    const-string v0, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- setTextComposingMask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1219
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1221
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dj()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->je:I

    const v3, 0xffffff

    if-eq v0, v3, :cond_3

    .line 1222
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->je:I

    .line 1226
    :goto_0
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v3

    .line 1228
    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- fg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",bg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dj()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    if-ne v0, v3, :cond_2

    .line 1234
    const/high16 v0, -0x8000

    const/high16 v4, -0x100

    or-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    or-int/2addr v0, v3

    .line 1235
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jg:Landroid/text/style/BackgroundColorSpan;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jg:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 1237
    :cond_0
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jg:Landroid/text/style/BackgroundColorSpan;

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jg:Landroid/text/style/BackgroundColorSpan;

    const/16 v4, 0x21

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1242
    :cond_2
    return-void

    .line 1224
    :cond_3
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->G(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method public g(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1017
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelectAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dt()V

    .line 1020
    if-eqz p1, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1023
    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 1288
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->hp:I

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 1304
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jd:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 1300
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jc:I

    return v0
.end method

.method public i(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1798
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- showsoftkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ji:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    .line 1804
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ji:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    .line 1805
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jk:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1808
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ji:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ji:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->jk:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 1151
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->hp:I

    .line 1152
    return-void
.end method
