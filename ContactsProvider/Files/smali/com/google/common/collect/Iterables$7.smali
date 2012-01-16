.class final Lcom/google/common/collect/Iterables$7;
.super Lcom/google/common/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# instance fields
.field final synthetic dA:Lcom/google/common/base/Predicate;

.field final synthetic sp:Ljava/lang/Iterable;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/common/collect/Iterables$7;->sp:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Iterables$7;->dA:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
