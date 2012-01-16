.class final Lcom/google/common/collect/Iterables$9;
.super Lcom/google/common/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# instance fields
.field final synthetic dt:Lcom/google/common/base/Function;

.field final synthetic so:Ljava/lang/Iterable;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/common/collect/Iterables$9;->so:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Iterables$9;->dt:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
