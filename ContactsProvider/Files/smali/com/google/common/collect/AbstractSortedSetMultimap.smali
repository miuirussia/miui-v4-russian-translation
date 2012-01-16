.class abstract Lcom/google/common/collect/AbstractSortedSetMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "AbstractSortedSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/SortedSetMultimap;


# static fields
.field private static final serialVersionUID:J = 0x5faae81de71c4a4L


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 46
    return-void
.end method


# virtual methods
.method bridge synthetic J()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->bX()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract bX()Ljava/util/SortedSet;
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->m(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic cb()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->bX()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->m(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method
