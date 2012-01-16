.class Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic v:Lcom/google/common/collect/AbstractMultimap$WrappedList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->v:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->v:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    .line 774
    invoke-virtual {p1}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->at()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;Ljava/util/Iterator;)V

    .line 775
    return-void
.end method

.method private u()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->eN()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->v:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->isEmpty()Z

    move-result v0

    .line 803
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->u()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 804
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->v:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMultimap$WrappedList;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->c(Lcom/google/common/collect/AbstractMultimap;)I

    .line 805
    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->v:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eq()V

    .line 808
    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->u()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->u()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->u()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->u()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->u()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 799
    return-void
.end method
