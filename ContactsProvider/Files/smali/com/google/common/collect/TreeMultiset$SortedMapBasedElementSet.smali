.class Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;
.super Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic qK:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/SortedMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->qK:Lcom/google/common/collect/TreeMultiset;

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V

    .line 145
    return-void
.end method


# virtual methods
.method B()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter

    .prologue
    .line 164
    new-instance v0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->qK:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->B()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 179
    :catch_0
    move-exception v1

    goto :goto_0

    .line 181
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 168
    new-instance v0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->qK:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->B()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter

    .prologue
    .line 173
    new-instance v0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->qK:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->B()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/SortedMap;)V

    return-object v0
.end method
