.class Lcom/google/common/collect/AbstractMultimap$AsMap;
.super Ljava/util/AbstractMap;
.source "AbstractMultimap.java"


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;

.field transient entrySet:Ljava/util/Set;

.field final transient rn:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1306
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    .line 1307
    return-void
.end method


# virtual methods
.method public S(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .parameter

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1338
    if-nez v0, :cond_0

    .line 1339
    const/4 v0, 0x0

    .line 1346
    :goto_0
    return-object v0

    .line 1342
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMultimap;->J()Ljava/util/Collection;

    move-result-object v1

    .line 1343
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1344
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 1345
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    move-object v0, v1

    .line 1346
    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1324
    if-nez v0, :cond_0

    .line 1325
    const/4 v0, 0x0

    .line 1329
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1, p1, v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->entrySet:Ljava/util/Set;

    .line 1313
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;-><init>(Lcom/google/common/collect/AbstractMultimap$AsMap;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1350
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$AsMap;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$AsMap;->S(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->rn:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
