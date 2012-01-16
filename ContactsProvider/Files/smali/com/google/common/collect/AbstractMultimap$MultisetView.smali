.class Lcom/google/common/collect/AbstractMultimap$MultisetView;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMultimap.java"


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;

.field transient entrySet:Ljava/util/Set;


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1030
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1031
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    move v1, v0

    .line 1035
    :goto_1
    return v1

    .line 1031
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1034
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1032
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 951
    if-nez p2, :cond_1

    .line 952
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetView;->a(Ljava/lang/Object;)I

    move-result v1

    .line 980
    :cond_0
    :goto_0
    return v1

    .line 954
    :cond_1
    if-lez p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    if-eqz v0, :cond_0

    .line 968
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 970
    if-lt p2, v2, :cond_3

    .line 971
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0, p1}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 954
    goto :goto_1

    .line 974
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 975
    :goto_2
    if-ge v1, p2, :cond_4

    .line 976
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 977
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 979
    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;I)I

    move v1, v2

    .line 980
    goto :goto_0

    .line 961
    :catch_0
    move-exception v0

    goto :goto_0

    .line 959
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1045
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->entrySet:Ljava/util/Set;

    .line 991
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;Lcom/google/common/collect/AbstractMultimap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 1023
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->e:Lcom/google/common/collect/AbstractMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->d(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method

.method public t()Ljava/util/Set;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
