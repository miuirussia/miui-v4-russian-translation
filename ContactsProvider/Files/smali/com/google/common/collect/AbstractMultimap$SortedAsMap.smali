.class Lcom/google/common/collect/AbstractMultimap$SortedAsMap;
.super Lcom/google/common/collect/AbstractMultimap$AsMap;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;

.field ef:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    .line 1414
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    .line 1415
    return-void
.end method


# virtual methods
.method B()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bC()Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->ef:Ljava/util/SortedSet;

    .line 1451
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->B()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->ef:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .parameter

    .prologue
    .line 1434
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->B()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1411
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->bC()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1438
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->B()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .parameter

    .prologue
    .line 1442
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->B()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method
