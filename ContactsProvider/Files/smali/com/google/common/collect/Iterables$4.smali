.class final Lcom/google/common/collect/Iterables$4;
.super Lcom/google/common/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# instance fields
.field final synthetic sr:Ljava/lang/Iterable;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/common/collect/Iterables$4;->sr:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->e(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
