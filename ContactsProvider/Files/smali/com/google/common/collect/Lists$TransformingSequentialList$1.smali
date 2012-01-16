.class Lcom/google/common/collect/Lists$TransformingSequentialList$1;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic or:Ljava/util/ListIterator;

.field final synthetic os:Lcom/google/common/collect/Lists$TransformingSequentialList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->os:Lcom/google/common/collect/Lists$TransformingSequentialList;

    iput-object p2, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->or:Ljava/util/ListIterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 371
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->or:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->or:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->os:Lcom/google/common/collect/Lists$TransformingSequentialList;

    iget-object v0, v0, Lcom/google/common/collect/Lists$TransformingSequentialList;->function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->or:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->or:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->os:Lcom/google/common/collect/Lists$TransformingSequentialList;

    iget-object v0, v0, Lcom/google/common/collect/Lists$TransformingSequentialList;->function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->or:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->or:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->or:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 400
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
