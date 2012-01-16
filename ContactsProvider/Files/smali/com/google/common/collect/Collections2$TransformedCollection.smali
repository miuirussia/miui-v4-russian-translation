.class Lcom/google/common/collect/Collections2$TransformedCollection;
.super Ljava/util/AbstractCollection;
.source "Collections2.java"


# instance fields
.field final function:Lcom/google/common/base/Function;

.field final tf:Ljava/util/Collection;


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->tf:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 273
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->tf:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->tf:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->tf:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
