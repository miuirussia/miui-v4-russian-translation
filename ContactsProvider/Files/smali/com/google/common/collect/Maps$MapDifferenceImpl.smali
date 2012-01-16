.class Lcom/google/common/collect/Maps$MapDifferenceImpl;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/MapDifference;


# instance fields
.field final cM:Z

.field final cN:Ljava/util/Map;

.field final cO:Ljava/util/Map;

.field final cP:Ljava/util/Map;

.field final cQ:Ljava/util/Map;


# virtual methods
.method public aA()Ljava/util/Map;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cO:Ljava/util/Map;

    return-object v0
.end method

.method public aB()Ljava/util/Map;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cP:Ljava/util/Map;

    return-object v0
.end method

.method public aC()Ljava/util/Map;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cQ:Ljava/util/Map;

    return-object v0
.end method

.method public az()Ljava/util/Map;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cN:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 360
    if-ne p1, p0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    instance-of v2, p1, Lcom/google/common/collect/MapDifference;

    if-eqz v2, :cond_3

    .line 364
    check-cast p1, Lcom/google/common/collect/MapDifference;

    .line 365
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->az()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->az()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->aA()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->aA()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->aB()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->aB()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->aC()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->aC()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 370
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 374
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->az()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->aA()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->aB()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->aC()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cM:Z

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "equal"

    .line 393
    :goto_0
    return-object v0

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not equal"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cN:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    const-string v1, ": only on left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cN:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cO:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 388
    const-string v1, ": only on right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cO:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cQ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 391
    const-string v1, ": value differences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->cQ:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
