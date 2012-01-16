.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "Synchronized.java"


# instance fields
.field final synthetic co:Ljava/util/Map$Entry;

.field final synthetic mk:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->mk:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;

    iput-object p2, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->co:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected af()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->co:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->af()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public dP()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->co:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->mk:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;

    iget-object v1, v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->pe:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    iget-object v1, v1, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/Synchronized;->f(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->dP()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
