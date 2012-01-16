.class Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic N:Lcom/google/common/collect/AbstractMultimap$AsMap;

.field ek:Ljava/util/Collection;

.field final no:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$AsMap;)V
    .locals 1
    .parameter

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->N:Lcom/google/common/collect/AbstractMultimap$AsMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1388
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->N:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->no:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->no:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->no:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1398
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1399
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->ek:Ljava/util/Collection;

    .line 1400
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->N:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->ek:Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->no:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1405
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->N:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->ek:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 1406
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->ek:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1407
    return-void
.end method
