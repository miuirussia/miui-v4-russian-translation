.class final Lcom/google/common/collect/Iterables$8;
.super Lcom/google/common/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# instance fields
.field final synthetic sp:Ljava/lang/Iterable;

.field final synthetic sq:Ljava/lang/Class;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/common/collect/Iterables$8;->sp:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Iterables$8;->sq:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Ljava/lang/Class;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
