.class Lcom/google/common/collect/AbstractMultimap$SortedKeySet;
.super Lcom/google/common/collect/AbstractMultimap$KeySet;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->e:Lcom/google/common/collect/AbstractMultimap;

    .line 908
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap$KeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    .line 909
    return-void
.end method


# virtual methods
.method B()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter

    .prologue
    .line 924
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->B()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->B()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 932
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->B()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter

    .prologue
    .line 936
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->B()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method
