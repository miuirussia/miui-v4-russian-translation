.class final Lcom/google/common/collect/Maps$2;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field final synthetic nf:Lcom/google/common/base/Predicate;


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 874
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$2;->d(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/common/collect/Maps$2;->nf:Lcom/google/common/base/Predicate;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
