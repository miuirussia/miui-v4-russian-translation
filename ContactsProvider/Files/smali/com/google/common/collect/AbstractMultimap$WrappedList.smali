.class Lcom/google/common/collect/AbstractMultimap$WrappedList;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList;->e:Lcom/google/common/collect/AbstractMultimap;

    .line 689
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    .line 690
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eo()V

    .line 724
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->er()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 725
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->at()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 726
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->c(Lcom/google/common/collect/AbstractMultimap;)I

    .line 727
    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eq()V

    .line 730
    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 697
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    const/4 v0, 0x0

    .line 709
    :cond_0
    :goto_0
    return v0

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->size()I

    move-result v1

    .line 701
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->at()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 702
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->er()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 704
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList;->e:Lcom/google/common/collect/AbstractMultimap;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 705
    if-nez v1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eq()V

    goto :goto_0
.end method

.method at()Ljava/util/List;
    .locals 1

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->er()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eo()V

    .line 714
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->at()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eo()V

    .line 742
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->at()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eo()V

    .line 747
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->at()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eo()V

    .line 752
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eo()V

    .line 757
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eo()V

    .line 734
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->at()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;)I

    .line 736
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->ep()V

    .line 737
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eo()V

    .line 719
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->at()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->eo()V

    .line 763
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->at()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/google/common/collect/Platform;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->es()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v0, v1, v2, p0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->es()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method
