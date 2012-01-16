.class Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final no:Ljava/util/Iterator;

.field final oT:Ljava/util/Collection;

.field final synthetic oU:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 2
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oU:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oU:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oT:Ljava/util/Collection;

    .line 491
    iget-object v0, p1, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v1, p1, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->no:Ljava/util/Iterator;

    .line 492
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;Ljava/util/Iterator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oU:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oU:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oT:Ljava/util/Collection;

    .line 495
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->no:Ljava/util/Iterator;

    .line 496
    return-void
.end method


# virtual methods
.method eM()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oU:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 504
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oU:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oT:Ljava/util/Collection;

    if-eq v0, v1, :cond_0

    .line 505
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 507
    :cond_0
    return-void
.end method

.method eN()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->eM()V

    .line 527
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->no:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->eM()V

    .line 511
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->no:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->eM()V

    .line 516
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->no:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->no:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 521
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oU:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;)I

    .line 522
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->oU:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ep()V

    .line 523
    return-void
.end method
