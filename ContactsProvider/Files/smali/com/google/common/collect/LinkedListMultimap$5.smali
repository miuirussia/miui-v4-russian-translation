.class Lcom/google/common/collect/LinkedListMultimap$5;
.super Ljava/util/AbstractMap;
.source "LinkedListMultimap.java"


# instance fields
.field final synthetic aL:Lcom/google/common/collect/LinkedListMultimap;

.field entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$5;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 873
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
    .line 862
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 868
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->entrySet:Ljava/util/Set;

    .line 853
    if-nez v0, :cond_0

    .line 854
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$5;->aL:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->entrySet:Ljava/util/Set;

    .line 856
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$5;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$5;->S(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
