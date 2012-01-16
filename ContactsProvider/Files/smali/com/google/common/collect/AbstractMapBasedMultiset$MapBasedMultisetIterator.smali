.class Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMapBasedMultiset;

.field canRemove:Z

.field final qO:Ljava/util/Iterator;

.field qP:Ljava/util/Map$Entry;

.field qQ:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qO:Ljava/util/Iterator;

    .line 195
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qQ:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qO:Ljava/util/Iterator;

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
    .line 202
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qQ:I

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qO:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qP:Ljava/util/Map$Entry;

    .line 204
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qP:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qQ:I

    .line 206
    :cond_0
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qQ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qQ:I

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    .line 208
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qP:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->b(ZLjava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qP:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 215
    if-gtz v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qP:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->qO:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->b(Lcom/google/common/collect/AbstractMapBasedMultiset;)J

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    .line 223
    return-void
.end method
