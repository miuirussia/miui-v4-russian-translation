.class Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final multiset:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    .line 288
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 310
    instance-of v1, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v1, :cond_0

    .line 311
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 312
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->X()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMultiset;->a(Ljava/lang/Object;)I

    move-result v1

    .line 316
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->a(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->a(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->co()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/ImmutableMultiset$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->a(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 326
    return-object p0
.end method
