.class Lcom/google/common/collect/AbstractMultiset$ElementSet$1;
.super Ljava/lang/Object;
.source "AbstractMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic nT:Ljava/util/Iterator;

.field final synthetic vR:Lcom/google/common/collect/AbstractMultiset$ElementSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultiset$ElementSet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;->vR:Lcom/google/common/collect/AbstractMultiset$ElementSet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;->nT:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;->nT:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;->nT:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->X()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;->nT:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 236
    return-void
.end method
