.class Lcom/google/common/collect/Multisets$2$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Multisets.java"


# instance fields
.field final synthetic gK:Ljava/util/Iterator;

.field final synthetic gL:Lcom/google/common/collect/Multisets$2$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$2$1;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/common/collect/Multisets$2$1$1;->gL:Lcom/google/common/collect/Multisets$2$1;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$2$1$1;->gK:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic Z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$2$1$1;->cn()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected cn()Lcom/google/common/collect/Multiset$Entry;
    .locals 3

    .prologue
    .line 364
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2$1$1;->gK:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2$1$1;->gK:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 366
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->X()Ljava/lang/Object;

    move-result-object v1

    .line 367
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$2$1$1;->gL:Lcom/google/common/collect/Multisets$2$1;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$2$1;->bo:Lcom/google/common/collect/Multisets$2;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$2;->gN:Lcom/google/common/collect/Multiset;

    invoke-interface {v2, v1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 369
    if-lez v0, :cond_0

    .line 370
    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$2$1$1;->dX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    goto :goto_0
.end method
