.class Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "ConstrainedMap.java"


# instance fields
.field final synthetic jp:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->jp:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;

    iput-object p2, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected W()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->val$iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->W()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->jp:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;

    iget-object v1, v1, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->bb:Lcom/google/common/collect/MapConstraint;

    invoke-static {v0, v1}, Lcom/google/common/collect/ConstrainedMap;->b(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
