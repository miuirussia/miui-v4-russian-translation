.class Lcom/google/common/collect/Synchronized$SynchronizedAsMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient dK:Ljava/util/Set;

.field private transient dL:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1305
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1306
    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .parameter

    .prologue
    .line 1309
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1310
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1311
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->f(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 1313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4

    .prologue
    .line 1317
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1318
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->dK:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1319
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->E()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->dK:Ljava/util/Set;

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->dK:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4

    .prologue
    .line 1327
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1328
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->dL:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1329
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->E()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->dL:Ljava/util/Collection;

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->dL:Ljava/util/Collection;

    monitor-exit v1

    return-object v0

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
