.class public final Lcom/google/common/collect/ImmutableSortedMap$Builder;
.super Lcom/google/common/collect/ImmutableMap$Builder;
.source "ImmutableSortedMap.java"


# instance fields
.field private final comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 332
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    .line 333
    return-void
.end method


# virtual methods
.method public dV()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->lY:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->lY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 368
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->c([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    .line 369
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->d([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    .line 370
    new-instance v1, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public bridge synthetic dW()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->dV()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->lY:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    return-object p0
.end method

.method public bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->j(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    return-object v0
.end method
