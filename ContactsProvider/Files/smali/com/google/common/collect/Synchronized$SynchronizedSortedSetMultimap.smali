.class Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/SortedSetMultimap;


# static fields
.field private static final serialVersionUID:J


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 885
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->m(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected cl()Lcom/google/common/collect/SortedSetMultimap;
    .locals 1

    .prologue
    .line 892
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->v()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedSetMultimap;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->cl()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 885
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->m(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter

    .prologue
    .line 895
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 896
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->cl()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SortedSetMultimap;->m(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 897
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic v()Lcom/google/common/collect/SetMultimap;
    .locals 1

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->cl()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic y()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->cl()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method
