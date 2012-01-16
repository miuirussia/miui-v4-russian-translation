.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "EditStyledText.java"


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 1
    .parameter

    .prologue
    .line 2350
    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    .line 2347
    const-string v0, "StyledTextArrowKeyMethod"

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    .line 2351
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    .line 2352
    return-void
.end method

.method private a(Landroid/widget/TextView;)I
    .locals 2
    .parameter

    .prologue
    .line 2371
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2372
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2376
    :goto_0
    return v0

    .line 2374
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- executeDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    const/4 v0, 0x0

    .line 2451
    packed-switch p3, :pswitch_data_0

    .line 2469
    :goto_0
    return v0

    .line 2453
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2454
    goto :goto_0

    .line 2456
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2457
    goto :goto_0

    .line 2459
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2460
    goto :goto_0

    .line 2462
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2463
    goto :goto_0

    .line 2465
    :pswitch_4
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bq()V

    .line 2466
    const/4 v0, 0x1

    goto :goto_0

    .line 2451
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--- down:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2406
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->a(Landroid/widget/TextView;)I

    move-result v1

    .line 2407
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 2408
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 2410
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2412
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 2413
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 2417
    :goto_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ag(I)V

    .line 2418
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dc()V

    .line 2420
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2415
    :cond_1
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    goto :goto_0
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--- left:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2428
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->a(Landroid/widget/TextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v0

    .line 2429
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ag(I)V

    .line 2430
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dc()V

    .line 2431
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---onkeydown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->di()V

    .line 2361
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bx()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->bx()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2363
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->a(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    .line 2365
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/ArrowKeyMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--- right:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2439
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->a(Landroid/widget/TextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v0

    .line 2440
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ag(I)V

    .line 2441
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dc()V

    .line 2442
    const/4 v0, 0x1

    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--- up:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2384
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->a(Landroid/widget/TextView;)I

    move-result v1

    .line 2385
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 2386
    if-lez v2, :cond_0

    .line 2388
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2390
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 2391
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 2395
    :goto_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->ag(I)V

    .line 2396
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->dT:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dc()V

    .line 2398
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2393
    :cond_1
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    goto :goto_0
.end method
