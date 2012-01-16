.class final Lcom/google/common/collect/Maps$3;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field final synthetic ng:Lcom/google/common/base/Predicate;


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 912
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$3;->d(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/common/collect/Maps$3;->ng:Lcom/google/common/base/Predicate;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
