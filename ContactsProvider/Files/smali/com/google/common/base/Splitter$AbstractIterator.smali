.class abstract Lcom/google/common/base/Splitter$AbstractIterator;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field ls:Lcom/google/common/base/Splitter$AbstractIterator$State;

.field lt:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 405
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 406
    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->aP:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->ls:Lcom/google/common/base/Splitter$AbstractIterator$State;

    .line 408
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Splitter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/google/common/base/Splitter$AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract Z()Ljava/lang/Object;
.end method

.method protected final dX()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->aQ:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->ls:Lcom/google/common/base/Splitter$AbstractIterator$State;

    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method dY()Z
    .locals 2

    .prologue
    .line 434
    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->aR:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->ls:Lcom/google/common/base/Splitter$AbstractIterator$State;

    .line 435
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$AbstractIterator;->Z()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->lt:Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->ls:Lcom/google/common/base/Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/Splitter$AbstractIterator$State;->aQ:Lcom/google/common/base/Splitter$AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 437
    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->aO:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->ls:Lcom/google/common/base/Splitter$AbstractIterator$State;

    .line 438
    const/4 v0, 0x1

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->ls:Lcom/google/common/base/Splitter$AbstractIterator$State;

    sget-object v3, Lcom/google/common/base/Splitter$AbstractIterator$State;->aR:Lcom/google/common/base/Splitter$AbstractIterator$State;

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 423
    sget-object v0, Lcom/google/common/base/Splitter$6;->fR:[I

    iget-object v3, p0, Lcom/google/common/base/Splitter$AbstractIterator;->ls:Lcom/google/common/base/Splitter$AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/common/base/Splitter$AbstractIterator$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 430
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$AbstractIterator;->dY()Z

    move-result v2

    :goto_1
    :pswitch_0
    return v2

    :cond_0
    move v0, v2

    .line 422
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 427
    goto :goto_1

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 447
    :cond_0
    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->aP:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->ls:Lcom/google/common/base/Splitter$AbstractIterator$State;

    .line 448
    iget-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->lt:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 452
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
