.class Lcom/google/common/collect/AbstractMultimap$EntryIterator;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;

.field final ej:Ljava/util/Iterator;

.field ek:Ljava/util/Collection;

.field el:Ljava/util/Iterator;

.field key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    invoke-static {p1}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->ej:Ljava/util/Iterator;

    .line 1242
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->ej:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->bD()V

    .line 1247
    :goto_0
    return-void

    .line 1245
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Iterators;->ce()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->el:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method bD()V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->ej:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->key:Ljava/lang/Object;

    .line 1252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->ek:Ljava/util/Collection;

    .line 1253
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->ek:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->el:Ljava/util/Iterator;

    .line 1254
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->ej:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->el:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->el:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->bD()V

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->el:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->el:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1269
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->ek:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->ej:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;)I

    .line 1273
    return-void
.end method
