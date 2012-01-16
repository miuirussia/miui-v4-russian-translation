.class final Lcom/google/common/collect/Iterables$11;
.super Lcom/google/common/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# instance fields
.field final synthetic gt:Ljava/util/List;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/common/collect/Iterables$11;->gt:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/Iterables$11;->gt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 694
    new-instance v1, Lcom/google/common/collect/Iterables$11$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Iterables$11$1;-><init>(Lcom/google/common/collect/Iterables$11;Ljava/util/ListIterator;)V

    return-object v1
.end method
