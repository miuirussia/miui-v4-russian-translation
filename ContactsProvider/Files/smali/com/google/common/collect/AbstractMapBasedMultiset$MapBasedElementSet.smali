.class Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractMapBasedMultiset.java"


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMapBasedMultiset;

.field private final delegate:Ljava/util/Set;

.field private final map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 343
    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    .line 344
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->delegate:Ljava/util/Set;

    .line 345
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 392
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    .line 400
    :cond_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 395
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
