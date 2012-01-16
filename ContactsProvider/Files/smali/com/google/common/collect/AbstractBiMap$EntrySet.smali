.class Lcom/google/common/collect/AbstractBiMap$EntrySet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# instance fields
.field final synthetic bW:Lcom/google/common/collect/AbstractBiMap;

.field final vw:Ljava/util/Set;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 270
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->b(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->vw:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap$EntrySet;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->vw:Ljava/util/Set;

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 278
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 346
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->vw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    new-instance v1, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;-><init>(Lcom/google/common/collect/AbstractBiMap$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->vw:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 284
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 285
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->c(Lcom/google/common/collect/AbstractBiMap;)Lcom/google/common/collect/AbstractBiMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->b(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->j(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 340
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
