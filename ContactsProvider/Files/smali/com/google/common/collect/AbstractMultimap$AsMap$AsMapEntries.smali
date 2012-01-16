.class Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;
.super Ljava/util/AbstractSet;
.source "AbstractMultimap.java"


# instance fields
.field final synthetic N:Lcom/google/common/collect/AbstractMultimap$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$AsMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->N:Lcom/google/common/collect/AbstractMultimap$AsMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->N:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->c(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1363
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->N:Lcom/google/common/collect/AbstractMultimap$AsMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$AsMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1377
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    const/4 v0, 0x0

    .line 1382
    :goto_0
    return v0

    .line 1380
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1381
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->N:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    .line 1382
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->N:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
