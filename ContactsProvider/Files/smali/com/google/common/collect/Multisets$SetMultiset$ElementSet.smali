.class Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "Multisets.java"


# instance fields
.field final synthetic dr:Lcom/google/common/collect/Multisets$SetMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->dr:Lcom/google/common/collect/Multisets$SetMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->dr:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
