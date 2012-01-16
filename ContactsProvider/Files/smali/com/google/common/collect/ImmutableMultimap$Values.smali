.class Lcom/google/common/collect/ImmutableMultimap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final multimap:Lcom/google/common/collect/Multimap;


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Values;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->x()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 496
    new-instance v1, Lcom/google/common/collect/ImmutableMultimap$Values$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultimap$Values$1;-><init>(Lcom/google/common/collect/ImmutableMultimap$Values;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method
