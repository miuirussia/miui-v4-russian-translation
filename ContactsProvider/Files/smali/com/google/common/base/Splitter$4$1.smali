.class Lcom/google/common/base/Splitter$4$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# instance fields
.field final synthetic fr:Lcom/google/common/base/Splitter$4;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$4;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/common/base/Splitter$4$1;->fr:Lcom/google/common/base/Splitter$4;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public M(I)I
    .locals 2
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/common/base/Splitter$4$1;->fr:Lcom/google/common/base/Splitter$4;

    iget v0, v0, Lcom/google/common/base/Splitter$4;->fO:I

    add-int/2addr v0, p1

    .line 260
    iget-object v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->pd:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public N(I)I
    .locals 0
    .parameter

    .prologue
    .line 264
    return p1
.end method
