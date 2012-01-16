.class final Lcom/google/common/collect/Multisets$2;
.super Lcom/google/common/collect/AbstractMultiset;
.source "Multisets.java"


# instance fields
.field final entrySet:Ljava/util/Set;

.field final synthetic gM:Lcom/google/common/collect/Multiset;

.field final synthetic gN:Lcom/google/common/collect/Multiset;


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2;->gM:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 347
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Multisets$2;->gN:Lcom/google/common/collect/Multiset;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method cj()Ljava/util/Set;
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2;->gM:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->t()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$2;->gN:Lcom/google/common/collect/Multiset;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->t()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2;->entrySet:Ljava/util/Set;

    return-object v0
.end method
