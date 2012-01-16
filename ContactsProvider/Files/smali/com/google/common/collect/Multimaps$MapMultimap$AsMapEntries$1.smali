.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final sc:Ljava/util/Iterator;

.field final synthetic sd:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;)V
    .locals 1
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->sd:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->sd:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->sc:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->sc:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->sc:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1109
    new-instance v1, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;Ljava/lang/Object;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->sc:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1120
    return-void
.end method
