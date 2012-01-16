.class Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->e:Lcom/google/common/collect/AbstractMultimap;

    .line 643
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    .line 644
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eh()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method eh()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->er()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eo()V

    .line 656
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eh()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .parameter

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eo()V

    .line 666
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eh()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->es()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->es()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eo()V

    .line 661
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eh()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eo()V

    .line 673
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eh()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->es()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->es()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .parameter

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eo()V

    .line 680
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->eh()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->es()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->es()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method
