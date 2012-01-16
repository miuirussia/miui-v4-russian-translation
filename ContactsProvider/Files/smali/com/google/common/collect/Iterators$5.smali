.class final Lcom/google/common/collect/Iterators$5;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field du:Ljava/util/Iterator;

.field dv:Ljava/util/Iterator;

.field final synthetic dw:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/common/collect/Iterators$5;->dw:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 499
    invoke-static {}, Lcom/google/common/collect/Iterators;->cd()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->dv:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 506
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->dv:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Iterators$5;->dw:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->dw:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->dv:Ljava/util/Iterator;

    goto :goto_0

    .line 509
    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$5;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->dv:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->du:Ljava/util/Iterator;

    .line 516
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->dv:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->du:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no calls to next() since last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->b(ZLjava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->du:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->du:Ljava/util/Iterator;

    .line 523
    return-void

    .line 519
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
