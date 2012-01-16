.class Lcom/google/common/collect/Maps$FilteredKeyMap;
.super Lcom/google/common/collect/Maps$AbstractFilteredMap;
.source "Maps.java"


# instance fields
.field entrySet:Ljava/util/Set;

.field hv:Lcom/google/common/base/Predicate;

.field keySet:Ljava/util/Set;


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->pR:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->hv:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->entrySet:Ljava/util/Set;

    .line 1112
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->pR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->keySet:Ljava/util/Set;

    .line 1121
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->pR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->hv:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
