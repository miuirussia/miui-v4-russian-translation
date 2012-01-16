.class Lcom/google/common/collect/Lists$Partition;
.super Ljava/util/AbstractList;
.source "Lists.java"


# instance fields
.field final list:Ljava/util/List;

.field final size:I


# virtual methods
.method public U(I)Ljava/util/List;
    .locals 3
    .parameter

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$Partition;->size()I

    move-result v0

    .line 484
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->d(II)I

    .line 485
    iget v0, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    mul-int/2addr v0, p1

    .line 486
    iget v1, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 487
    iget-object v2, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/Platform;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$Partition;->U(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    div-int/2addr v0, v1

    return v0
.end method
