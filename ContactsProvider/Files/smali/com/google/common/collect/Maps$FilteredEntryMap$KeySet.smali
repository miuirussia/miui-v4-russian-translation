.class Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;
.super Ljava/util/AbstractSet;
.source "Maps.java"


# instance fields
.field final synthetic qT:Lcom/google/common/collect/Maps$FilteredEntryMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->qT:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;Lcom/google/common/collect/Maps$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1189
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->qT:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->fl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1208
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->qT:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->qT:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->fl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1192
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->qT:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->qT:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->pR:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const/4 v0, 0x1

    .line 1219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter

    .prologue
    .line 1223
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const/4 v0, 0x0

    .line 1225
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1226
    invoke-virtual {p0, v2}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    .line 1228
    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter

    .prologue
    .line 1232
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    const/4 v0, 0x0

    .line 1234
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->qT:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lcom/google/common/collect/Maps$AbstractFilteredMap;->pR:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 1235
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->qT:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1239
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 1241
    goto :goto_0

    .line 1242
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->qT:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->fl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->g(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->g(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
