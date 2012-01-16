.class Lcom/google/common/collect/ConstrainedMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ConstrainedMap.java"


# instance fields
.field final ba:Ljava/util/Map;

.field final bb:Lcom/google/common/collect/MapConstraint;

.field private volatile entrySet:Ljava/util/Set;


# direct methods
.method private static a(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/google/common/collect/ConstrainedMap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ConstrainedMap$1;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method private static a(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet;-><init>(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method static synthetic b(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/google/common/collect/ConstrainedMap;->a(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected E()Ljava/util/Map;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->ba:Ljava/util/Map;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap;->E()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->ba:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ConstrainedMap;->bb:Lcom/google/common/collect/MapConstraint;

    invoke-static {v0, v1}, Lcom/google/common/collect/ConstrainedMap;->a(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->entrySet:Ljava/util/Set;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->bb:Lcom/google/common/collect/MapConstraint;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/MapConstraint;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->ba:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/ConstrainedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method
