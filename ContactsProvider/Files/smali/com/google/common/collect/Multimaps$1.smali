.class final Lcom/google/common/collect/Multimaps$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "Multimaps.java"


# instance fields
.field final synthetic co:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$1;->co:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public dP()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$1;->co:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->h(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$1;->co:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$1;->dP()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
