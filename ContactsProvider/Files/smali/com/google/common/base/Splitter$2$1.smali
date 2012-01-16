.class Lcom/google/common/base/Splitter$2$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# instance fields
.field final synthetic gp:Lcom/google/common/base/Splitter$2;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$2;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/common/base/Splitter$2$1;->gp:Lcom/google/common/base/Splitter$2;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public M(I)I
    .locals 6
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/common/base/Splitter$2$1;->gp:Lcom/google/common/base/Splitter$2;

    iget-object v0, v0, Lcom/google/common/base/Splitter$2;->fT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 168
    iget-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->pd:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v3, v0, v2

    move v0, p1

    .line 169
    :goto_0
    if-gt v0, v3, :cond_1

    .line 170
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 171
    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->pd:Ljava/lang/CharSequence;

    add-int v5, v1, v0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/google/common/base/Splitter$2$1;->gp:Lcom/google/common/base/Splitter$2;

    iget-object v5, v5, Lcom/google/common/base/Splitter$2;->fT:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    :cond_1
    const/4 v0, -0x1

    :cond_2
    return v0
.end method

.method public N(I)I
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/common/base/Splitter$2$1;->gp:Lcom/google/common/base/Splitter$2;

    iget-object v0, v0, Lcom/google/common/base/Splitter$2;->fT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method
