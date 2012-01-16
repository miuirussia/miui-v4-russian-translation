.class Lcom/google/common/collect/ImmutableBiMap$EmptyBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "ImmutableBiMap.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method


# virtual methods
.method cf()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->fD()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public cg()Lcom/google/common/collect/ImmutableBiMap;
    .locals 0

    .prologue
    .line 282
    return-object p0
.end method

.method public bridge synthetic ch()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->cr()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->co()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->cp()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ljava/util/Set;
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->cr()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$EmptyBiMap;->cg()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->cs()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->cr()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
