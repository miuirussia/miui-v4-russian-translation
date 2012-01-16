.class Lcom/google/common/collect/Maps$TransformedValuesMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# instance fields
.field final function:Lcom/google/common/base/Function;

.field final pb:Ljava/util/Map;

.field pc:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 773
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pc:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;

    .line 779
    if-nez v0, :cond_0

    .line 780
    new-instance v0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;-><init>(Lcom/google/common/collect/Maps$TransformedValuesMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pc:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;

    .line 782
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 761
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pb:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pb:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
