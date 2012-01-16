.class Lcom/google/common/collect/AbstractMultimap$KeySet$1;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field aZ:Ljava/util/Map$Entry;

.field final qO:Ljava/util/Iterator;

.field final synthetic wi:Lcom/google/common/collect/AbstractMultimap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$KeySet;)V
    .locals 1
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->wi:Lcom/google/common/collect/AbstractMultimap$KeySet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->wi:Lcom/google/common/collect/AbstractMultimap$KeySet;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$KeySet;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->qO:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->qO:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->qO:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->aZ:Ljava/util/Map$Entry;

    .line 863
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->aZ:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->aZ:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 867
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->aZ:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 868
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->qO:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 869
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->wi:Lcom/google/common/collect/AbstractMultimap$KeySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMultimap$KeySet;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 870
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 871
    return-void

    .line 866
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
