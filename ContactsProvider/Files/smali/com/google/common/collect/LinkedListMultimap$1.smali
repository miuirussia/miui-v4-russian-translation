.class Lcom/google/common/collect/LinkedListMultimap$1;
.super Ljava/util/AbstractSequentialList;
.source "LinkedListMultimap.java"


# instance fields
.field final synthetic aL:Lcom/google/common/collect/LinkedListMultimap;

.field final synthetic hn:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$1;->aL:Lcom/google/common/collect/LinkedListMultimap;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$1;->hn:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .parameter

    .prologue
    .line 568
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$1;->aL:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$1;->hn:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$1;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$1;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
