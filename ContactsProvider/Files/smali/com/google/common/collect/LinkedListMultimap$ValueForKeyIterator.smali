.class Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic aL:Lcom/google/common/collect/LinkedListMultimap;

.field final key:Ljava/lang/Object;

.field nextIndex:I

.field og:Lcom/google/common/collect/LinkedListMultimap$Node;

.field oh:Lcom/google/common/collect/LinkedListMultimap$Node;

.field qj:Lcom/google/common/collect/LinkedListMultimap$Node;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->key:Ljava/lang/Object;

    .line 329
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->b(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 330
    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 342
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v1

    .line 343
    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->e(II)I

    .line 344
    div-int/lit8 v0, v1, 0x2

    if-lt p3, v0, :cond_0

    .line 345
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->d(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 346
    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 347
    :goto_0
    add-int/lit8 v0, p3, 0x1

    if-ge p3, v1, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous()Ljava/lang/Object;

    move p3, v0

    goto :goto_0

    .line 351
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->b(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 352
    :goto_1
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next()Ljava/lang/Object;

    move p3, v0

    goto :goto_1

    .line 356
    :cond_1
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->key:Ljava/lang/Object;

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 358
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 412
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 414
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->r(Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 367
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 368
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 369
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->r(Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 379
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 380
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 381
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 394
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eq v0, v1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 396
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 400
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 402
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 406
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 407
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
