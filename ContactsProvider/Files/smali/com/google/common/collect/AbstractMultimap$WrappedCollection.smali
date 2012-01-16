.class Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# instance fields
.field ap:Ljava/util/Collection;

.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;

.field final key:Ljava/lang/Object;

.field final nx:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

.field final ny:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    .line 395
    iput-object p3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    .line 396
    iput-object p4, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->nx:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    .line 397
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ny:Ljava/util/Collection;

    .line 399
    return-void

    .line 397
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->er()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 533
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 534
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 535
    if-eqz v1, :cond_0

    .line 536
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMultimap;->c(Lcom/google/common/collect/AbstractMultimap;)I

    .line 537
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eq()V

    .line 541
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter

    .prologue
    .line 551
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    const/4 v0, 0x0

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v1

    .line 555
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 556
    if-eqz v0, :cond_0

    .line 557
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 558
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 559
    if-nez v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eq()V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 578
    if-nez v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 582
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 583
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ep()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 568
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 573
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method eo()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->nx:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->nx:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 411
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->nx:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->er()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ny:Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    .line 412
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 416
    if-eqz v0, :cond_1

    .line 417
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    .line 420
    :cond_1
    return-void
.end method

.method ep()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->nx:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->nx:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ep()V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method eq()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->nx:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->nx:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eq()V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 459
    if-ne p1, p0, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 463
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method er()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    return-object v0
.end method

.method es()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->nx:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    return-object v0
.end method

.method getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 468
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 482
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 588
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 589
    if-eqz v0, :cond_0

    .line 590
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;)I

    .line 591
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ep()V

    .line 593
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter

    .prologue
    .line 597
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    const/4 v0, 0x0

    .line 607
    :cond_0
    :goto_0
    return v0

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v1

    .line 601
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 602
    if-eqz v0, :cond_0

    .line 603
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 604
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 605
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ep()V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter

    .prologue
    .line 611
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 613
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 614
    if-eqz v1, :cond_0

    .line 615
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 616
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Lcom/google/common/collect/AbstractMultimap;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 617
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ep()V

    .line 619
    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 455
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->eo()V

    .line 473
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ap:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
