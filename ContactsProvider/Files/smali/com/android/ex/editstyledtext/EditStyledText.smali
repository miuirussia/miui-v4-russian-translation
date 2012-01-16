.class public Lcom/android/ex/editstyledtext/EditStyledText;
.super Landroid/widget/EditText;
.source "EditStyledText.java"


# static fields
.field private static dN:Ljava/lang/CharSequence;

.field private static dO:Ljava/lang/CharSequence;

.field private static dP:Ljava/lang/CharSequence;

.field private static final dW:Landroid/text/NoCopySpan$Concrete;


# instance fields
.field private dQ:F

.field private dR:Ljava/util/ArrayList;

.field private dS:Landroid/graphics/drawable/Drawable;

.field private dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

.field private dU:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

.field private dV:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->dW:Landroid/text/NoCopySpan$Concrete;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dQ:F

    .line 214
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->init()V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dQ:F

    .line 209
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->init()V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dQ:F

    .line 204
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->init()V

    .line 205
    return-void
.end method

.method private C(I)V
    .locals 2
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 521
    invoke-interface {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->a(I)V

    goto :goto_0

    .line 524
    :cond_0
    return-void
.end method

.method private H(I)I
    .locals 4
    .parameter

    .prologue
    .line 904
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dQ:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dQ:F

    .line 907
    :cond_0
    int-to-float v0, p1

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->by()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bA()I

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->C(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText;->c(II)V

    return-void
.end method

.method static synthetic b(Lcom/android/ex/editstyledtext/EditStyledText;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bz()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/ex/editstyledtext/EditStyledText;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->H(I)I

    move-result v0

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 460
    invoke-interface {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->a(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    return-void
.end method

.method private bA()I
    .locals 1

    .prologue
    .line 915
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->H(I)I

    move-result v0

    return v0
.end method

.method private bf()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 478
    invoke-interface {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    :cond_1
    return-void
.end method

.method private bg()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 488
    invoke-interface {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->l()V

    goto :goto_0

    .line 491
    :cond_0
    return-void
.end method

.method private bh()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 496
    invoke-interface {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    :cond_1
    return-void
.end method

.method private bi()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 506
    invoke-interface {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    :cond_1
    return-void
.end method

.method private bt()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bt()V

    .line 672
    return-void
.end method

.method private by()F
    .locals 2

    .prologue
    .line 896
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dQ:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dQ:F

    .line 899
    :cond_0
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dQ:F

    return v0
.end method

.method private bz()I
    .locals 1

    .prologue
    .line 911
    const/16 v0, 0x12c

    return v0
.end method

.method static synthetic c(Lcom/android/ex/editstyledtext/EditStyledText;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dS:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private c(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 535
    invoke-interface {v0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->a(II)V

    goto :goto_0

    .line 538
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/android/ex/editstyledtext/EditStyledText;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    return-object v0
.end method

.method static synthetic e(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->finishComposingText()V

    return-void
.end method

.method static synthetic f(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bg()V

    return-void
.end method

.method private finishComposingText()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 891
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Z)Z

    .line 893
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bh()V

    return-void
.end method

.method static synthetic h(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bf()V

    return-void
.end method

.method static synthetic i(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bi()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 389
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$1;)V

    invoke-direct {v0, p0, p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dU:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    .line 390
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dV:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    .line 391
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dV:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    .line 392
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-direct {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dS:Landroid/graphics/drawable/Drawable;

    .line 394
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->requestFocus()Z

    .line 395
    return-void
.end method

.method private static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 930
    sget-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->dW:Landroid/text/NoCopySpan$Concrete;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 931
    return-void
.end method

.method private static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 934
    sget-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->dW:Landroid/text/NoCopySpan$Concrete;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 935
    return-void
.end method


# virtual methods
.method public D(I)V
    .locals 2
    .parameter

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(IZ)V

    .line 685
    return-void
.end method

.method public E(I)V
    .locals 2
    .parameter

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->c(IZ)V

    .line 694
    return-void
.end method

.method public F(I)V
    .locals 1
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->F(I)V

    .line 723
    return-void
.end method

.method public G(I)I
    .locals 3
    .parameter

    .prologue
    const/high16 v1, -0x100

    .line 875
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 883
    :goto_0
    return v0

    .line 878
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-class v2, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, p1, p1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 880
    array-length v2, v0

    if-lez v2, :cond_2

    .line 881
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 883
    goto :goto_0
.end method

.method public a(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/Layout$Alignment;)V

    .line 703
    return-void
.end method

.method public bj()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ac(I)V

    .line 543
    return-void
.end method

.method public bk()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ac(I)V

    .line 548
    return-void
.end method

.method public bl()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ac(I)V

    .line 557
    return-void
.end method

.method public bm()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ac(I)V

    .line 562
    return-void
.end method

.method public bn()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ac(I)V

    .line 567
    return-void
.end method

.method public bo()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->f(Z)V

    .line 604
    return-void
.end method

.method public bp()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->g(Z)V

    .line 609
    return-void
.end method

.method public bq()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bq()V

    .line 626
    return-void
.end method

.method public br()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ac(I)V

    .line 652
    return-void
.end method

.method public bs()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bs()V

    .line 656
    return-void
.end method

.method public bu()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bu()Z

    move-result v0

    return v0
.end method

.method public bv()Z
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bv()Z

    move-result v0

    return v0
.end method

.method public bw()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bw()Z

    move-result v0

    return v0
.end method

.method public bx()I
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bx()I

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 273
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bt()V

    .line 276
    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 469
    invoke-interface {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->j()Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 472
    :cond_1
    return v1
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 330
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$1;)V

    .line 331
    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->dN:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 332
    const v1, 0xffff01

    sget-object v2, Lcom/android/ex/editstyledtext/EditStyledText;->dN:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bv()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->dO:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 336
    const v1, 0xffff02

    sget-object v2, Lcom/android/ex/editstyledtext/EditStyledText;->dO:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    const v1, 0x1020022

    sget-object v2, Lcom/android/ex/editstyledtext/EditStyledText;->dP:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 343
    :cond_2
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .parameter

    .prologue
    .line 370
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 372
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 378
    if-eqz p1, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bj()V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bk()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    instance-of v0, p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    if-nez v0, :cond_0

    .line 262
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    check-cast p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    .line 266
    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    iget v0, p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->hp:I

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    invoke-direct {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;-><init>(Landroid/os/Parcelable;)V

    .line 255
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getBackgroundColor()I

    move-result v0

    iput v0, v1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->hp:I

    .line 256
    return-object v1
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Landroid/text/Editable;III)V

    .line 350
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Landroid/text/Editable;III)V

    .line 351
    if-le p4, p3, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->g(II)V

    .line 356
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    if-le p4, p3, :cond_3

    .line 358
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dc()V

    .line 359
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bq()V

    .line 365
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 366
    return-void

    .line 353
    :cond_2
    if-ge p3, p4, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->di()V

    goto :goto_0

    .line 360
    :cond_3
    if-ge p4, p3, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ac(I)V

    goto :goto_1
.end method

.method public onTextContextMenuItem(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v3

    if-eq v1, v3, :cond_0

    move v1, v0

    .line 281
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 324
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    :goto_2
    return v0

    :cond_0
    move v1, v2

    .line 280
    goto :goto_0

    .line 283
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bp()V

    goto :goto_2

    .line 286
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bo()V

    .line 287
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dH()V

    goto :goto_1

    .line 290
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bq()V

    goto :goto_1

    .line 293
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bn()V

    goto :goto_2

    .line 296
    :sswitch_4
    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bl()V

    goto :goto_2

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->g(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bl()V

    goto :goto_2

    .line 304
    :sswitch_5
    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bm()V

    goto :goto_2

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->g(Z)V

    .line 308
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bm()V

    goto :goto_2

    .line 312
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->br()V

    goto :goto_2

    .line 315
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bs()V

    goto :goto_2

    .line 318
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bj()V

    goto :goto_2

    .line 321
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bk()V

    goto :goto_2

    .line 281
    :sswitch_data_0
    .sparse-switch
        0xffff01 -> :sswitch_6
        0xffff02 -> :sswitch_7
        0xffff03 -> :sswitch_8
        0xffff04 -> :sswitch_9
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_3
        0x1020028 -> :sswitch_1
        0x1020029 -> :sswitch_2
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->cancelLongPress()V

    .line 222
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bu()Z

    move-result v1

    .line 224
    if-nez v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bj()V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 228
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 229
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 230
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bx()I

    move-result v4

    if-nez v4, :cond_1

    .line 234
    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->i(II)V

    .line 242
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dc()V

    .line 243
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->di()V

    .line 247
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->b(Landroid/view/MotionEvent;)V

    .line 248
    return v0

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->i(II)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 712
    const v0, 0xffffff

    if-eq p1, v0, :cond_0

    .line 713
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 717
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setBackgroundColor(I)V

    .line 718
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->bt()V

    .line 719
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->dS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
