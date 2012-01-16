.class Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;
.super Lcom/google/common/collect/ForwardingMap;
.source "Multimaps.java"


# instance fields
.field dL:Ljava/util/Collection;

.field entrySet:Ljava/util/Set;

.field final synthetic wf:Ljava/util/Map;

.field final synthetic wg:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->wg:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->wf:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected E()Ljava/util/Map;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->wf:Ljava/util/Map;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->E()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->wf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 488
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->h(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->entrySet:Ljava/util/Set;

    .line 480
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->wf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->d(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->dL:Ljava/util/Collection;

    .line 496
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->wf:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->dL:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
