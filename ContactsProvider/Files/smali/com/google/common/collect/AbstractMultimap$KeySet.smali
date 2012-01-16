.class Lcom/google/common/collect/AbstractMultimap$KeySet;
.super Ljava/util/AbstractSet;
.source "AbstractMultimap.java"


# instance fields
.field final d:Ljava/util/Map;

.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 845
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$KeySet;->d:Ljava/util/Map;

    .line 846
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 897
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

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

.method public hashCode()I
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 853
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$KeySet$1;-><init>(Lcom/google/common/collect/AbstractMultimap$KeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 882
    .line 883
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 884
    if-eqz v0, :cond_1

    .line 885
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 886
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 887
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0, v2}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;I)I

    move v0, v2

    .line 889
    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
