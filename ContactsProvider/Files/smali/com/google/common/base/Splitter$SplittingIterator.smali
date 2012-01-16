.class abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/common/base/Splitter$AbstractIterator;
.source "Splitter.java"


# instance fields
.field final dB:Lcom/google/common/base/CharMatcher;

.field final dC:Z

.field offset:I

.field final pd:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/base/Splitter$AbstractIterator;-><init>(Lcom/google/common/base/Splitter$1;)V

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 365
    invoke-static {p1}, Lcom/google/common/base/Splitter;->b(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->dB:Lcom/google/common/base/CharMatcher;

    .line 366
    invoke-static {p1}, Lcom/google/common/base/Splitter;->c(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->dC:Z

    .line 367
    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->pd:Ljava/lang/CharSequence;

    .line 368
    return-void
.end method


# virtual methods
.method abstract M(I)I
.end method

.method abstract N(I)I
.end method

.method protected bridge synthetic Z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->eR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eR()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 371
    :cond_0
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-eq v0, v5, :cond_5

    .line 372
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 375
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter$SplittingIterator;->M(I)I

    move-result v0

    .line 376
    if-ne v0, v5, :cond_1

    .line 377
    iget-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->pd:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 378
    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 384
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->dB:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->pd:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter$SplittingIterator;->N(I)I

    move-result v2

    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_0

    .line 387
    :cond_2
    :goto_1
    if-le v0, v1, :cond_3

    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->dB:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->pd:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->a(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 391
    :cond_3
    iget-boolean v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->dC:Z

    if-eqz v2, :cond_4

    if-eq v1, v0, :cond_0

    .line 395
    :cond_4
    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->pd:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    :goto_2
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->dX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2
.end method
