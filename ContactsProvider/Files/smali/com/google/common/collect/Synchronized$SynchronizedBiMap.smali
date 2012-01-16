.class Lcom/google/common/collect/Synchronized$SynchronizedBiMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient oV:Ljava/util/Set;

.field private transient oW:Lcom/google/common/collect/BiMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/BiMap;Ljava/lang/Object;Lcom/google/common/collect/BiMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1261
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1262
    iput-object p3, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->oW:Lcom/google/common/collect/BiMap;

    .line 1263
    return-void
.end method


# virtual methods
.method protected bridge synthetic E()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->eO()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->eO()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method protected eO()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 1266
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->E()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method public q()Ljava/util/Set;
    .locals 3

    .prologue
    .line 1270
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1271
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->oV:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1272
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->eO()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->q()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->oV:Ljava/util/Set;

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->oV:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r()Lcom/google/common/collect/BiMap;
    .locals 4

    .prologue
    .line 1285
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1286
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->oW:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    .line 1287
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->eO()Lcom/google/common/collect/BiMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/BiMap;->r()Lcom/google/common/collect/BiMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lcom/google/common/collect/BiMap;Ljava/lang/Object;Lcom/google/common/collect/BiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->oW:Lcom/google/common/collect/BiMap;

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->oW:Lcom/google/common/collect/BiMap;

    monitor-exit v1

    return-object v0

    .line 1291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->q()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
