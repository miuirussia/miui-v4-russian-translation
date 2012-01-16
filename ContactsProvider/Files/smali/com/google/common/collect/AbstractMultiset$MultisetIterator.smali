.class Lcom/google/common/collect/AbstractMultiset$MultisetIterator;
.super Ljava/lang/Object;
.source "AbstractMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic R:Lcom/google/common/collect/AbstractMultiset;

.field private canRemove:Z

.field private final qO:Ljava/util/Iterator;

.field private ro:Lcom/google/common/collect/Multiset$Entry;

.field private rp:I

.field private rq:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultiset;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->R:Lcom/google/common/collect/AbstractMultiset;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->qO:Ljava/util/Iterator;

    .line 88
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->rp:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->qO:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 98
    :cond_0
    iget v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->rp:I

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->qO:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->ro:Lcom/google/common/collect/Multiset$Entry;

    .line 100
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->ro:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->rp:I

    iput v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->rq:I

    .line 102
    :cond_1
    iget v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->rp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->rp:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->canRemove:Z

    .line 104
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->ro:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->X()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->canRemove:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->b(ZLjava/lang/Object;)V

    .line 110
    iget v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->rq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->qO:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 115
    :goto_0
    iget v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->rq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->rq:I

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->canRemove:Z

    .line 117
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->R:Lcom/google/common/collect/AbstractMultiset;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->ro:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->X()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/AbstractMultiset;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
