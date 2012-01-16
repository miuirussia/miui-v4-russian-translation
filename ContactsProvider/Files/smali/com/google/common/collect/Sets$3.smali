.class final Lcom/google/common/collect/Sets$3;
.super Lcom/google/common/collect/Sets$SetView;
.source "Sets.java"


# instance fields
.field final synthetic hq:Ljava/util/Set;

.field final synthetic hs:Ljava/util/Set;

.field final synthetic ig:Lcom/google/common/base/Predicate;


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/common/collect/Sets$3;->hq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Sets$3;->hs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/common/collect/Sets$3;->hs:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/Sets$3;->hq:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/common/collect/Sets$3;->hq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$3;->ig:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$3;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
