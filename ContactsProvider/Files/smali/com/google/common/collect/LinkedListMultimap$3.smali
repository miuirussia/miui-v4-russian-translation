.class Lcom/google/common/collect/LinkedListMultimap$3;
.super Ljava/util/AbstractCollection;
.source "LinkedListMultimap.java"


# instance fields
.field final synthetic aL:Lcom/google/common/collect/LinkedListMultimap;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 731
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$3;->aL:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .line 732
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$3$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$3;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$3;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    return v0
.end method
