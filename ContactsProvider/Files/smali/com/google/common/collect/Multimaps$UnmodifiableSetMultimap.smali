.class Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# static fields
.field private static final serialVersionUID:J


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->v()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SetMultimap;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->v()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/google/common/collect/SetMultimap;
    .locals 1

    .prologue
    .line 640
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->y()Lcom/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SetMultimap;

    return-object v0
.end method

.method public w()Ljava/util/Set;
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->v()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SetMultimap;->w()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->w()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->v()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method
