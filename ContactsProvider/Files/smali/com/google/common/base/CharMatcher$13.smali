.class final Lcom/google/common/base/CharMatcher$13;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic dA:Lcom/google/common/base/Predicate;


# virtual methods
.method public a(C)Z
    .locals 2
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$13;->dA:Lcom/google/common/base/Predicate;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Character;)Z
    .locals 2
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$13;->dA:Lcom/google/common/base/Predicate;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 509
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher$13;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
