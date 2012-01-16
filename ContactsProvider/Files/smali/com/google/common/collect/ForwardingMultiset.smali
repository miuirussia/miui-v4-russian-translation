.class public abstract Lcom/google/common/collect/ForwardingMultiset;
.super Lcom/google/common/collect/ForwardingCollection;
.source "ForwardingMultiset.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->dQ()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->dQ()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->c(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->dQ()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->dQ()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected abstract dQ()Lcom/google/common/collect/Multiset;
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->dQ()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->dQ()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->dQ()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public t()Ljava/util/Set;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->dQ()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->t()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
