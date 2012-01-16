.class Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;
.super Lcom/google/common/collect/AbstractSortedSetMultimap;
.source "Multimaps.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient fM:Ljava/util/Comparator;

.field transient ga:Lcom/google/common/base/Supplier;


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 359
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 360
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->ga:Lcom/google/common/base/Supplier;

    .line 361
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->ga:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->fM:Ljava/util/Comparator;

    .line 362
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 363
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->b(Ljava/util/Map;)V

    .line 364
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 351
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 352
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->ga:Lcom/google/common/base/Supplier;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->fs()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 354
    return-void
.end method


# virtual methods
.method protected bridge synthetic J()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->bX()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bX()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->ga:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method protected bridge synthetic cb()Ljava/util/Set;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->bX()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
