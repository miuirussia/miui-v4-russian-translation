.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
.super Landroid/text/style/CharacterStyle;
.source "EditStyledText.java"


# instance fields
.field private mType:I

.field private wj:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2535
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2536
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    .line 2537
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->aK(I)Z

    .line 2538
    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->n(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->wj:I

    .line 2539
    return-void
.end method

.method private aK(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2587
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 2591
    :cond_0
    :goto_0
    return v0

    .line 2590
    :cond_1
    const-string v0, "EditStyledTextSpan"

    const-string v1, "--- Invalid type of MarqueeSpan"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const v2, 0xffffff

    const/16 v4, 0x80

    .line 2554
    .line 2555
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 2556
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 2557
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    .line 2558
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 2559
    if-nez v3, :cond_0

    move v3, v4

    .line 2562
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2580
    const-string v0, "EditStyledText"

    const-string v1, "--- getMarqueeColor: got illigal marquee ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2583
    :goto_0
    return v0

    .line 2564
    :pswitch_0
    if-le v1, v4, :cond_1

    .line 2565
    div-int/lit8 v1, v1, 0x2

    .line 2583
    :goto_1
    invoke-static {v3, v1, v0, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 2567
    :cond_1
    rsub-int v1, v1, 0xff

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 2571
    :pswitch_1
    if-le v0, v4, :cond_2

    .line 2572
    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 2574
    :cond_2
    rsub-int v0, v0, 0xff

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 2578
    goto :goto_0

    .line 2562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public aJ(I)V
    .locals 1
    .parameter

    .prologue
    .line 2550
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    invoke-direct {p0, v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->n(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->wj:I

    .line 2551
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter

    .prologue
    .line 2597
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->wj:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 2598
    return-void
.end method
