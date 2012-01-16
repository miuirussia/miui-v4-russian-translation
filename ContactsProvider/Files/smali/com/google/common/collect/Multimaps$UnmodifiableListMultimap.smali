.class Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# static fields
.field private static final serialVersionUID:J


# virtual methods
.method public bR()Lcom/google/common/collect/ListMultimap;
    .locals 1

    .prologue
    .line 619
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->y()Lcom/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ListMultimap;

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->bR()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->bR()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->bR()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
