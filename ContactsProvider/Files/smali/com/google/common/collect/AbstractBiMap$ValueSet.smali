.class Lcom/google/common/collect/AbstractBiMap$ValueSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# instance fields
.field final synthetic bW:Lcom/google/common/collect/AbstractBiMap;

.field final rl:Ljava/util/Set;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 223
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->c(Lcom/google/common/collect/AbstractBiMap;)Lcom/google/common/collect/AbstractBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->rl:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap$ValueSet;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->rl:Ljava/util/Set;

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->b(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;-><init>(Lcom/google/common/collect/AbstractBiMap$ValueSet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->j(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 254
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->c(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
