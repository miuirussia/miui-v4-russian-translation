.class final Lcom/google/common/collect/Iterators$7;
.super Lcom/google/common/collect/AbstractIterator;
.source "Iterators.java"


# instance fields
.field final synthetic dA:Lcom/google/common/base/Predicate;

.field final synthetic dz:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/common/collect/Iterators$7;->dz:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/Iterators$7;->dA:Lcom/google/common/base/Predicate;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected Z()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 603
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$7;->dz:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/google/common/collect/Iterators$7;->dz:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/google/common/collect/Iterators$7;->dA:Lcom/google/common/base/Predicate;

    invoke-interface {v1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$7;->dX()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
