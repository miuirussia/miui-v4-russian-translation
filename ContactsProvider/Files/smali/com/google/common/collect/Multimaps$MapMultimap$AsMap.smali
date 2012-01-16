.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;
.super Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.source "Multimaps.java"


# instance fields
.field final synthetic na:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 1172
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 1167
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected en()Ljava/util/Set;
    .locals 2

    .prologue
    .line 1155
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->S(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
